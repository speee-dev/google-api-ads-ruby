# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-02-07 17:20:42.

require 'ads_common/savon_service'
require 'dfp_api/v201802/content_service_registry'

module DfpApi; module V201802; module ContentService
  class ContentService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201802'
      super(config, endpoint, namespace, :v201802)
    end

    def get_content_by_statement(*args, &block)
      return execute_action('get_content_by_statement', args, &block)
    end

    def get_content_by_statement_to_xml(*args)
      return get_soap_xml('get_content_by_statement', args)
    end

    def get_content_by_statement_and_custom_targeting_value(*args, &block)
      return execute_action('get_content_by_statement_and_custom_targeting_value', args, &block)
    end

    def get_content_by_statement_and_custom_targeting_value_to_xml(*args)
      return get_soap_xml('get_content_by_statement_and_custom_targeting_value', args)
    end

    private

    def get_service_registry()
      return ContentServiceRegistry
    end

    def get_module()
      return DfpApi::V201802::ContentService
    end
  end
end; end; end
