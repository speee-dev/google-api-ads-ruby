#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:30:50.

require 'ads_common/savon_service'
require 'dfp_api/v201103/forecast_service_registry'

module DfpApi; module V201103; module ForecastService
  class ForecastService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201103'
      super(api, endpoint, namespace, :v201103)
    end

    def get_forecast(*args, &block)
      return execute_action('get_forecast', args, &block)
    end

    def get_forecast_by_id(*args, &block)
      return execute_action('get_forecast_by_id', args, &block)
    end

    private

    def get_service_registry()
      return ForecastServiceRegistry
    end

    def get_module()
      return DfpApi::V201103::ForecastService
    end
  end
end; end; end
