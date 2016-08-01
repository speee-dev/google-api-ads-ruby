# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.3 on 2016-03-23 14:53:09.

require 'ads_common/savon_service'
require 'adwords_api/v201603/report_definition_service_registry'

module AdwordsApi; module V201603; module ReportDefinitionService
  class ReportDefinitionService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201603'
      super(config, endpoint, namespace, :v201603)
    end

    def get_report_fields(*args, &block)
      return execute_action('get_report_fields', args, &block)
    end

    def get_report_fields_to_xml(*args)
      return get_soap_xml('get_report_fields', args)
    end

    private

    def get_service_registry()
      return ReportDefinitionServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201603::ReportDefinitionService
    end
  end
end; end; end
