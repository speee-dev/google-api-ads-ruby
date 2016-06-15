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
# This example gets all companies that are advertisers. The statement retrieves
# up to the maximum page size limit of 500. To create companies, run
# create_companies.rb.

require 'dfp_api'


API_VERSION = :v201605

def get_companies_by_statement()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CompanyService.
  company_service = dfp.service(:CompanyService, API_VERSION)

  # Create a statement to only select companies that are advertisers, sorted by
  # name.
  statement = DfpApi::FilterStatement.new(
      'WHERE type = :type ORDER BY id ASC',
      [
          {:key => 'type',
           :value => {:value => 'ADVERTISER', :xsi_type => 'TextValue'}}
      ]
  )

  begin
    # Get companies by statement.
    page = company_service.get_companies_by_statement(
        statement.toStatement())

    if page[:results]
      page[:results].each_with_index do |company, index|
        puts "%d) [%d] name: %s, type: %s" %
            [index + statement.offset,
             company[:id], company[:name], company[:type]]
      end
    end
    statement.offset += DfpApi::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Print a footer.
  if page.include?(:total_result_set_size)
    puts "Total number of companies: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_companies_by_statement()

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
