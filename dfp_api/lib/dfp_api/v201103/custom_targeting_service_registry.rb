#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:30:17.

require 'dfp_api/errors'

module DfpApi; module V201103; module CustomTargetingService
  class CustomTargetingServiceRegistry
    CUSTOMTARGETINGSERVICE_METHODS = {:perform_custom_targeting_key_action=>{:input=>[{:type=>"CustomTargetingKeyAction", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_key_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_custom_targeting_key_action_response"}}, :perform_custom_targeting_value_action=>{:input=>[{:type=>"CustomTargetingValueAction", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_value_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_custom_targeting_value_action_response"}}, :create_custom_targeting_keys=>{:input=>[{:type=>"CustomTargetingKey", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:keys}], :output=>{:fields=>[{:type=>"CustomTargetingKey", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_custom_targeting_keys_response"}}, :update_custom_targeting_keys=>{:input=>[{:type=>"CustomTargetingKey", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:keys}], :output=>{:fields=>[{:type=>"CustomTargetingKey", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_custom_targeting_keys_response"}}, :create_custom_targeting_values=>{:input=>[{:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}], :output=>{:fields=>[{:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_custom_targeting_values_response"}}, :update_custom_targeting_values=>{:input=>[{:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}], :output=>{:fields=>[{:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_custom_targeting_values_response"}}, :get_custom_targeting_keys_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"CustomTargetingKeyPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_custom_targeting_keys_by_statement_response"}}, :get_custom_targeting_values_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"CustomTargetingValuePage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_custom_targeting_values_by_statement_response"}}}
    CUSTOMTARGETINGSERVICE_TYPES = {:CustomTargetingValuePage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :CustomTargetingKeyAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_key_action_type}], :abstract=>true}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :DeleteCustomTargetingKeys=>{:fields=>[], :base=>"CustomTargetingKeyAction"}, :CustomTargetingKey=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:display_name}, {:type=>"CustomTargetingKey.Type", :min_occurs=>0, :max_occurs=>1, :name=>:type}]}, :DeleteCustomTargetingValues=>{:fields=>[], :base=>"CustomTargetingValueAction"}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :CustomTargetingKeyPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"CustomTargetingKey", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :CustomTargetingValueAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_value_action_type}], :abstract=>true}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :CustomTargetingValue=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_key_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:display_name}, {:type=>"CustomTargetingValue.MatchType", :min_occurs=>0, :max_occurs=>1, :name=>:match_type}]}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}}
    CUSTOMTARGETINGSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CUSTOMTARGETINGSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CUSTOMTARGETINGSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CUSTOMTARGETINGSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
