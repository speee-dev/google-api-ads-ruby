# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.3 on 2016-05-23 15:37:50.

require 'ads_common/savon_service'
require 'dfp_api/v201605/rate_card_service_registry'

module DfpApi; module V201605; module RateCardService
  class RateCardService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201605'
      super(config, endpoint, namespace, :v201605)
    end

    def create_rate_cards(*args, &block)
      return execute_action('create_rate_cards', args, &block)
    end

    def create_rate_cards_to_xml(*args)
      return get_soap_xml('create_rate_cards', args)
    end

    def get_rate_cards_by_statement(*args, &block)
      return execute_action('get_rate_cards_by_statement', args, &block)
    end

    def get_rate_cards_by_statement_to_xml(*args)
      return get_soap_xml('get_rate_cards_by_statement', args)
    end

    def perform_rate_card_action(*args, &block)
      return execute_action('perform_rate_card_action', args, &block)
    end

    def perform_rate_card_action_to_xml(*args)
      return get_soap_xml('perform_rate_card_action', args)
    end

    def update_rate_cards(*args, &block)
      return execute_action('update_rate_cards', args, &block)
    end

    def update_rate_cards_to_xml(*args)
      return get_soap_xml('update_rate_cards', args)
    end

    private

    def get_service_registry()
      return RateCardServiceRegistry
    end

    def get_module()
      return DfpApi::V201605::RateCardService
    end
  end
end; end; end
