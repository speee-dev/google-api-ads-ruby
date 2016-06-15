#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This code example creates a line item creative association for a creative
# set. To create creative sets, run create_creative_set.rb. To create creatives,
# run create_creatives.rb. To determine which LICAs exist, run get_all_licas.rb.

require 'dfp_api'

API_VERSION = :v201605

def associate_creative_set_to_line_item()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Set the line item ID and creative set ID to associate.
  line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i
  creative_set_id = 'INSERT_CREATIVE_SET_ID_HERE'.to_i

  # Get the LineItemCreativeAssociationService.
  lica_service = dfp.service(:LineItemCreativeAssociationService, API_VERSION)

  lica = {
    :creative_set_id => creative_set_id,
    :line_item_id => line_item_id
  }

  # Create the LICAs on the server.
  return_lica = lica_service.create_line_item_creative_associations([lica])

  puts 'A LICA with line item ID %d and creative set ID %d was created.' %
      [return_lica[:line_item_id], return_lica[:creative_set_id]]
end

if __FILE__ == $0
  begin
    associate_creative_set_to_line_item()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts 'HTTP Error: %s' % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
    puts 'Message: %s' % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
