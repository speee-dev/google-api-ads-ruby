#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:29:24.

require 'ads_common/savon_service'
require 'dfp_api/v201107/label_service_registry'

module DfpApi; module V201107; module LabelService
  class LabelService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201107'
      super(api, endpoint, namespace, :v201107)
    end

    def update_labels(*args, &block)
      return execute_action('update_labels', args, &block)
    end

    def create_labels(*args, &block)
      return execute_action('create_labels', args, &block)
    end

    def get_label(*args, &block)
      return execute_action('get_label', args, &block)
    end

    def get_labels_by_statement(*args, &block)
      return execute_action('get_labels_by_statement', args, &block)
    end

    def perform_label_action(*args, &block)
      return execute_action('perform_label_action', args, &block)
    end

    def update_label(*args, &block)
      return execute_action('update_label', args, &block)
    end

    def create_label(*args, &block)
      return execute_action('create_label', args, &block)
    end

    private

    def get_service_registry()
      return LabelServiceRegistry
    end

    def get_module()
      return DfpApi::V201107::LabelService
    end
  end
end; end; end
