#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example create a new line item to serve to video content. To determine
# which line items exist, run get_all_line_items.rb. To determine which orders
# exist, run get_all_orders.rb. To create a video ad unit, run
# create_video_ad_unit.rb. To create criteria for categories, run
# create_custom_targeting_keys_and_values.rb.
#
# This feature is only available to DFP premium solution networks.

require 'dfp_api'

def create_video_line_item(dfp, order_id, targeted_video_ad_unit_id,
    content_custom_targeting_key_id, content_custom_targeting_value_id)
  # Get the LineItemService.
  line_item_service = dfp.service(:LineItemService, API_VERSION)

  # Create custom criteria for the content metadata targeting.
  content_custom_criteria = {
    :xsi_type => 'CustomCriteria',
    :key_id => content_custom_targeting_key_id,
    :value_ids => [content_custom_targeting_value_id],
    :operator => 'IS'
  }

  # Create custom criteria set.
  custom_criteria_set = {
    :children => [content_custom_criteria]
  }

  # Create inventory targeting.
  inventory_targeting = {
    :targeted_ad_units => [{:ad_unit_id => targeted_video_ad_unit_id}]
  }

  # Create video position targeting.
  video_position = {:position_type => 'PREROLL'}
  video_position_target = {:video_position => video_position}
  video_position_targeting = {:targeted_positions => [video_position_target]}

  # Create targeting.
  targeting = {
    :custom_targeting => custom_criteria_set,
    :inventory_targeting => inventory_targeting,
    :video_position_targeting => video_position_targeting
  }

  # Create local line item object.
  line_item = {
    :name => 'Video line item',
    :order_id => order_id,
    :targeting => targeting,
    :line_item_type => 'SPONSORSHIP',
    :allow_overbook => true,
    # Set the environment type to video.
    :environment_type => 'VIDEO_PLAYER',
    # Set the creative rotation type to optimized.
    :creative_rotation_type => 'OPTIMIZED',
    # Set delivery of video companions to optional.
    :companion_delivery_option => 'OPTIONAL',
    # Set the length of the line item to run.
    :start_date_time_type => 'IMMEDIATELY',
    :end_date_time => dfp.datetime(
      Date.today.year + 1, 9, 30, 0, 0, 0, 'America/New_York'
    ).to_h,
    # Set the cost per day to $1.
    :cost_type => 'CPD',
    :cost_per_unit => {:currency_code => 'USD', :micro_amount => 1_000_000},
    # Set the percentage to be 100%.
    :primary_goal => {
      :units => 100,
      :unit_type => 'IMPRESSIONS',
      :goal_type => 'DAILY'
    }
  }

  # Create the master creative placeholder and companion creative placeholders.
  creative_master_placeholder = {
    :size => {:width => 400, :height => 300, :is_aspect_ratio => false},
    :companions => [
      {:size => {:width => 300, :height => 250, :is_aspect_ratio => false}},
      {:size => {:width => 728, :height => 90, :is_aspect_ratio => false}}
    ]
  }

  # Set the size of creatives that can be associated with this line item.
  line_item[:creative_placeholders] = [creative_master_placeholder]

  # Create the line item on the server.
  created_line_item = line_item_service.create_line_item(line_item)

  if created_line_item.to_a.size > 0
    puts ('Line item with ID %d, belonging to order ID %d, and named "%s" ' +
        'was created.') % [created_line_item[:id], created_line_item[:order_id],
        created_line_item[:name]]
  else
    puts 'No line items were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201805

  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  begin
    # Set the order that the created line item will belong to and the video ad
    # unit ID to target.
    order_id = 'INSERT_ORDER_ID_HERE'.to_i
    targeted_video_ad_unit_id = 'INSERT_VIDEO_AD_UNIT_ID_HERE'.to_i
    # Set the custom targeting key ID and value ID representing the metadata on
    # the content to target. This would typically be a key representing a
    # "genre" and a value representing something like "comedy".
    content_custom_targeting_key_id =
        'INSERT_CONTENT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i
    content_custom_targeting_value_id =
        'INSERT_CONTENT_CUSTOM_TARGETING_VALUE_ID_HERE'.to_i
    create_video_line_item(
        dfp, order_id, targeted_video_ad_unit_id,
        content_custom_targeting_key_id, content_custom_targeting_value_id
    )

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
    puts "Message: %s" % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
