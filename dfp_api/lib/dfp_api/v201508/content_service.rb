# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.3 on 2016-08-09 15:48:28.

require 'ads_common/savon_service'
require 'dfp_api/v201508/content_service_registry'

module DfpApi; module V201508; module ContentService
  class ContentService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201508'
      super(config, endpoint, namespace, :v201508)
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
      return DfpApi::V201508::ContentService
    end
  end
end; end; end
