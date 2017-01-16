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
# This example creates a test network. You do not need to have a DFP account to
# run this example, but you do need to have a Google account (created at
# http://www.google.com/accounts/newaccount if you currently don't have one)
# that is not associated with any other DFP test networks (including old sandbox
# networks). Once this network is created, you can supply the network code in
# your settings to make calls to other services.
#
# Please see the following URL for more information:
#   https://developers.google.com/doubleclick-publishers/docs/signup
#
# Alternatively, if you do not wish to run this example, you can create a test
# network at: https://dfp-playground.appspot.com

require 'dfp_api'

API_VERSION = :v201611

def make_test_network()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the NetworkService.
  network_service = dfp.service(:NetworkService, API_VERSION)

  # Make a test network.
  network = network_service.make_test_network()

  puts "Test network with network code %s and display name '%s' created." %
      [network[:network_code], network[:display_name]]
  puts "You may now sign in at http://www.google.com/dfp/main?networkCode=%s" %
      network[:network_code]
end

if __FILE__ == $0
  begin
    make_test_network()

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
