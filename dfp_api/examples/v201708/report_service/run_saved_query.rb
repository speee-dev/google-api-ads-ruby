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
# This example runs a report from a saved query. To download the report see
# download_report.rb.

require 'dfp_api'

API_VERSION = :v201708
MAX_RETRIES = 10
RETRY_INTERVAL = 30

def run_saved_query(saved_query_id)
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ReportService and NetworkService.
  report_service = dfp.service(:ReportService, API_VERSION)

  # Create statement to select a single saved report query.
  statement = DfpApi::FilterStatement.new(
      'WHERE id = :id',
      [
        {:key => 'id',
         :value => {
             :value => saved_query_id,
             :xsi_type => 'NumberValue'}
        }
      ],
      # Limit results to single entity.
      1
  )

  saved_query_page = report_service.get_saved_queries_by_statement(
      statement.toStatement())

  unless saved_query_page[:results].nil?
    saved_query = response[:results].first

    if saved_query[:is_compatible_with_api_version]
      # Create report job.
      report_job = {:report_query => saved_query[:report_query]}

      # Run report job.
      report_job = report_service.run_report_job(report_job);

      MAX_RETRIES.times do |retry_count|
        # Get the report job status.
        report_job_status = report_service.get_report_job_status(
            report_job[:id])

        break unless report_job_status == 'IN_PROGRESS'
        puts "Report with ID: %d is still running." % report_job[:id]
        sleep(RETRY_INTERVAL)
      end

      puts "Report job with ID: %d finished with status %s." %
          [report_job[:id],
           report_service.get_report_job_status(report_job[:id])]
    else
      raise StandardError, 'Report query is not compatible with the API'
    end
  end
end

if __FILE__ == $0
  begin
    SAVED_QUERY_ID = 'INSERT_SAVED_QUERY_ID_HERE'.to_i
    run_saved_query(SAVED_QUERY_ID)

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
