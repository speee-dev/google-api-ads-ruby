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
# This example updates teams by updating the description of the first 5.
# To determine which teams exist, run get_all_teams.rb. To determine which ad
# units exist, run get_all_ad_units.rb.

require 'dfp_api'


API_VERSION = :v201608

def update_teams()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Set the ID of the ad unit to add to the teams.
  ad_unit_id = 'INSERT_AD_UNIT_ID_HERE'.to_i

  # Get the TeamService.
  team_service = dfp.service(:TeamService, API_VERSION)

  # Create a statement to select first 5 teams that aren't built-in.
  statement = DfpApi::FilterStatement.new('WHERE id > 0', [], 5)

  # Get teams by statement.
  page = team_service.get_teams_by_statement(statement.toStatement())

  if page[:results]
    teams = page[:results]

    # Create a local set of teams than need to be updated. We are updating by
    # changing the description.
    updated_teams = teams.inject([]) do |updated_teams, team|
      team[:description] = "This team has been updated"
      updated_teams << team
      updated_teams
    end

    # Update the teams on the server.
    return_teams = team_service.update_teams(updated_teams)
    return_teams.each do |team|
      puts "Team ID: %d was updated" % team[:id]
    end
  else
    puts 'No teams found to update.'
  end
end

if __FILE__ == $0
  begin
    update_teams()

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
