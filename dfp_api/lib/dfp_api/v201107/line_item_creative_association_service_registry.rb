#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:30:06.

require 'dfp_api/errors'

module DfpApi; module V201107; module LineItemCreativeAssociationService
  class LineItemCreativeAssociationServiceRegistry
    LINEITEMCREATIVEASSOCIATIONSERVICE_METHODS = {:perform_line_item_creative_association_action=>{:input=>[{:type=>"LineItemCreativeAssociationAction", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_creative_association_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_line_item_creative_association_action_response"}}, :update_line_item_creative_association=>{:input=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_creative_association}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"update_line_item_creative_association_response"}}, :create_line_item_creative_association=>{:input=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_creative_association}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"create_line_item_creative_association_response"}}, :update_line_item_creative_associations=>{:input=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:line_item_creative_associations}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_line_item_creative_associations_response"}}, :create_line_item_creative_associations=>{:input=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:line_item_creative_associations}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_line_item_creative_associations_response"}}, :get_line_item_creative_association=>{:input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:creative_id}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_line_item_creative_association_response"}}, :get_line_item_creative_associations_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociationPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_line_item_creative_associations_by_statement_response"}}}
    LINEITEMCREATIVEASSOCIATIONSERVICE_TYPES = {:ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :ActivateLineItemCreativeAssociations=>{:fields=>[], :base=>"LineItemCreativeAssociationAction"}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :DeactivateLineItemCreativeAssociations=>{:fields=>[], :base=>"LineItemCreativeAssociationAction"}, :LineItemCreativeAssociationAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_creative_association_action_type}], :abstract=>true}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :LineItemCreativeAssociation=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:creative_id}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:manual_creative_rotation_weight}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:start_date_time}, {:type=>"StartDateTimeType", :min_occurs=>0, :max_occurs=>1, :name=>:start_date_time_type}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:end_date_time}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:destination_url}, {:type=>"Size", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:sizes}, {:type=>"LineItemCreativeAssociation.Status", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"LineItemCreativeAssociationStats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}]}, :Date=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:year}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:month}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:day}]}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :Size=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:width}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:height}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_aspect_ratio}]}, :Money=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:currency_code}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}]}, :LineItemCreativeAssociationPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :DateTime=>{:fields=>[{:type=>"Date", :min_occurs=>0, :max_occurs=>1, :name=>:date}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:hour}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:minute}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:second}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:time_zone_id}]}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :Stats=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:impressions_delivered}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:clicks_delivered}]}, :Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :LineItemCreativeAssociationStats=>{:fields=>[{:type=>"Stats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_in_order_currency}]}}
    LINEITEMCREATIVEASSOCIATIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return LINEITEMCREATIVEASSOCIATIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LINEITEMCREATIVEASSOCIATIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return LINEITEMCREATIVEASSOCIATIONSERVICE_NAMESPACES[index]
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
