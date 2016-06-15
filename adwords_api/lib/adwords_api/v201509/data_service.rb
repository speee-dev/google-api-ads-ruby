# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.0 on 2015-10-08 10:50:33.

require 'ads_common/savon_service'
require 'adwords_api/v201509/data_service_registry'

module AdwordsApi; module V201509; module DataService
  class DataService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201509'
      super(config, endpoint, namespace, :v201509)
    end

    def get_ad_group_bid_landscape(*args, &block)
      return execute_action('get_ad_group_bid_landscape', args, &block)
    end

    def get_ad_group_bid_landscape_to_xml(*args)
      return get_soap_xml('get_ad_group_bid_landscape', args)
    end

    def get_criterion_bid_landscape(*args, &block)
      return execute_action('get_criterion_bid_landscape', args, &block)
    end

    def get_criterion_bid_landscape_to_xml(*args)
      return get_soap_xml('get_criterion_bid_landscape', args)
    end

    def get_domain_category(*args, &block)
      return execute_action('get_domain_category', args, &block)
    end

    def get_domain_category_to_xml(*args)
      return get_soap_xml('get_domain_category', args)
    end

    def query_ad_group_bid_landscape(*args, &block)
      return execute_action('query_ad_group_bid_landscape', args, &block)
    end

    def query_ad_group_bid_landscape_to_xml(*args)
      return get_soap_xml('query_ad_group_bid_landscape', args)
    end

    def query_criterion_bid_landscape(*args, &block)
      return execute_action('query_criterion_bid_landscape', args, &block)
    end

    def query_criterion_bid_landscape_to_xml(*args)
      return get_soap_xml('query_criterion_bid_landscape', args)
    end

    def query_domain_category(*args, &block)
      return execute_action('query_domain_category', args, &block)
    end

    def query_domain_category_to_xml(*args)
      return get_soap_xml('query_domain_category', args)
    end

    private

    def get_service_registry()
      return DataServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201509::DataService
    end
  end
end; end; end
