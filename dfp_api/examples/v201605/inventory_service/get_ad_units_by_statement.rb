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
# This example gets first 500 children below the effective root ad unit. To
# create ad units, run create_ad_units.rb.

require 'dfp_api'


API_VERSION = :v201605

def get_ad_units_by_statement()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the InventoryService.
  inventory_service = dfp.service(:InventoryService, API_VERSION)

  # Get the NetworkService.
  network_service = dfp.service(:NetworkService, API_VERSION)

  # Get the effective root ad unit ID of the network.
  effective_root_ad_unit_id =
      network_service.get_current_network[:effective_root_ad_unit_id]

  puts "Using effective root ad unit: %d" % effective_root_ad_unit_id

  # Create a statement to select the children of the effective root ad unit.
  statement = DfpApi::FilterStatement.new(
     'WHERE parentId = :id ORDER BY id',
     [
         {:key => 'id',
          :value => {:value => effective_root_ad_unit_id,
                     :xsi_type => 'NumberValue'}}
     ]
  )

  begin
    # Get ad units by statement.
    page = inventory_service.get_ad_units_by_statement(statement.toStatement())

    if page[:results]
      # Print details about each ad unit in results.
      page[:results].each_with_index do |ad_unit, index|
        puts "%d) Ad unit ID: %d, name: %s, status: %s." %
            [index + statement.offset, ad_unit[:id],
             ad_unit[:name], ad_unit[:status]]
      end
    end
    statement.offset += DfpApi::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Print a footer.
  if page.include?(:total_result_set_size)
    puts "Total number of ad units: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_ad_units_by_statement()

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
