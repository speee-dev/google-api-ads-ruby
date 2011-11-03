#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:26:56.

require 'ads_common/savon_service'
require 'dfp_api/v201108/user_service_registry'

module DfpApi; module V201108; module UserService
  class UserService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201108'
      super(api, endpoint, namespace, :v201108)
    end

    def get_current_user(*args, &block)
      return execute_action('get_current_user', args, &block)
    end

    def get_user(*args, &block)
      return execute_action('get_user', args, &block)
    end

    def get_users_by_statement(*args, &block)
      return execute_action('get_users_by_statement', args, &block)
    end

    def create_user(*args, &block)
      return execute_action('create_user', args, &block)
    end

    def perform_user_action(*args, &block)
      return execute_action('perform_user_action', args, &block)
    end

    def create_users(*args, &block)
      return execute_action('create_users', args, &block)
    end

    def update_user(*args, &block)
      return execute_action('update_user', args, &block)
    end

    def get_all_roles(*args, &block)
      return execute_action('get_all_roles', args, &block)
    end

    def update_users(*args, &block)
      return execute_action('update_users', args, &block)
    end

    private

    def get_service_registry()
      return UserServiceRegistry
    end

    def get_module()
      return DfpApi::V201108::UserService
    end
  end
end; end; end
