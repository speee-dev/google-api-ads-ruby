# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.3 on 2016-08-09 15:50:21.

require 'ads_common/savon_service'
require 'dfp_api/v201602/order_service_registry'

module DfpApi; module V201602; module OrderService
  class OrderService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201602'
      super(config, endpoint, namespace, :v201602)
    end

    def create_orders(*args, &block)
      return execute_action('create_orders', args, &block)
    end

    def create_orders_to_xml(*args)
      return get_soap_xml('create_orders', args)
    end

    def get_orders_by_statement(*args, &block)
      return execute_action('get_orders_by_statement', args, &block)
    end

    def get_orders_by_statement_to_xml(*args)
      return get_soap_xml('get_orders_by_statement', args)
    end

    def perform_order_action(*args, &block)
      return execute_action('perform_order_action', args, &block)
    end

    def perform_order_action_to_xml(*args)
      return get_soap_xml('perform_order_action', args)
    end

    def update_orders(*args, &block)
      return execute_action('update_orders', args, &block)
    end

    def update_orders_to_xml(*args)
      return get_soap_xml('update_orders', args)
    end

    private

    def get_service_registry()
      return OrderServiceRegistry
    end

    def get_module()
      return DfpApi::V201602::OrderService
    end
  end
end; end; end
