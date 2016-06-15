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
# This example gets all user team associations. To create user team
# associations, run create_user_team_assocations.rb.

require 'dfp_api'


API_VERSION = :v201605

def get_all_user_team_associations()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the UserTeamAssociationService.
  uta_service = dfp.service(:UserTeamAssociationService, API_VERSION)

  # Create statement for all user team associations.
  statement = DfpApi::FilterStatement.new('ORDER BY id ASC')

  begin
    # Get the user team associations by statement.
    page = uta_service.get_user_team_associations_by_statement(
        statement.toStatement())

    if page[:results]
      # Print details about each user team association in results page.
      page[:results].each_with_index do |association, index|
        puts "%d) User team association between team ID: %d and user ID %d" %
            [index + statement.offset,
             association[:team_id], association[:user_id]]
      end
    end
    statement.offset += DfpApi::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Print a footer
  if page.include?(:total_result_set_size)
    puts "Total number of user team associations: %d" %
        page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_all_user_team_associations()

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
