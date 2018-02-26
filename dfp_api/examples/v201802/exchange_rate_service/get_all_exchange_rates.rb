#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# This example gets all exchange rates.

require 'dfp_api'

def get_all_exchange_rates(dfp)
  exchange_rate_service = dfp.service(:ExchangeRateService, API_VERSION)

  # Create a statement to select exchange rates.
  statement = dfp.new_statement_builder()

  # Retrieve a small amount of exchange rates at a time, paging
  # through until all exchange rates have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    page = exchange_rate_service.get_exchange_rates_by_statement(
        statement.to_statement()
    )

    # Print out some information for each exchange rate.
    unless page[:results].nil?
      page[:results].each_with_index do |exchange_rate, index|
        puts ('%d) Exchange rate with ID %d, currency code "%s", direction ' +
            '"%s", and exchange rate %d was found.') %
            [index + statement.offset, exchange_rate[:id],
            exchange_rate[:currency_code], exchange_rate[:direction],
            exchange_rate[:exchange_rate]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of exchange rates: %d' % page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201802

  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  begin
    get_all_exchange_rates(dfp)

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
