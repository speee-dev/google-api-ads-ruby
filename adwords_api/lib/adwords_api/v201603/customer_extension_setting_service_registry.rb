# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.3 on 2016-03-23 14:52:51.

require 'adwords_api/errors'

module AdwordsApi; module V201603; module CustomerExtensionSettingService
  class CustomerExtensionSettingServiceRegistry
    CUSTOMEREXTENSIONSETTINGSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CustomerExtensionSettingPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"CustomerExtensionSettingOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"CustomerExtensionSettingReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :query=>{:input=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"query_response", :fields=>[{:name=>:rval, :type=>"CustomerExtensionSettingPage", :min_occurs=>0, :max_occurs=>1}]}}}
    CUSTOMEREXTENSIONSETTINGSERVICE_TYPES = {:ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :AppFeedItem=>{:fields=>[{:name=>:app_store, :type=>"AppFeedItem.AppStore", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_link_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_final_urls, :type=>"UrlList", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_final_mobile_urls, :type=>"UrlList", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_tracking_url_template, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_url_custom_parameters, :type=>"CustomParameters", :min_occurs=>0, :max_occurs=>1}], :base=>"ExtensionFeedItem"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CallConversionType=>{:fields=>[{:name=>:conversion_type_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :CallFeedItem=>{:fields=>[{:name=>:call_phone_number, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:call_country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:call_tracking, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:call_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:call_conversion_type, :type=>"CallConversionType", :min_occurs=>0, :max_occurs=>1}, {:name=>:disable_call_conversion_tracking, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"ExtensionFeedItem"}, :CalloutFeedItem=>{:fields=>[{:name=>:callout_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ExtensionFeedItem"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Criterion=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"Criterion.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion_type, :original_name=>"Criterion.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :CriterionError=>{:fields=>[{:name=>:reason, :type=>"CriterionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomParameter=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_remove, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :CustomParameters=>{:fields=>[{:name=>:parameters, :type=>"CustomParameter", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:do_replace, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :CustomerExtensionSetting=>{:fields=>[{:name=>:extension_type, :type=>"Feed.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:extension_setting, :type=>"ExtensionSetting", :min_occurs=>0, :max_occurs=>1}]}, :CustomerExtensionSettingOperation=>{:fields=>[{:name=>:operand, :type=>"CustomerExtensionSetting", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :CustomerExtensionSettingPage=>{:fields=>[{:name=>:entries, :type=>"CustomerExtensionSetting", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CustomerExtensionSettingReturnValue=>{:fields=>[{:name=>:value, :type=>"CustomerExtensionSetting", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DisapprovalReason=>{:fields=>[{:name=>:short_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityAccessDenied=>{:fields=>[{:name=>:reason, :type=>"EntityAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityCountLimitExceeded=>{:fields=>[{:name=>:reason, :type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:enclosing_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_limit_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:existing_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ExtensionFeedItem=>{:fields=>[{:name=>:feed_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:feed_item_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"FeedItem.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:feed_type, :type=>"Feed.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_preference, :type=>"FeedItemDevicePreference", :min_occurs=>0, :max_occurs=>1}, {:name=>:scheduling, :type=>"FeedItemScheduling", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_targeting, :type=>"FeedItemCampaignTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_targeting, :type=>"FeedItemAdGroupTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:keyword_targeting, :type=>"Keyword", :min_occurs=>0, :max_occurs=>1}, {:name=>:geo_targeting, :type=>"Location", :min_occurs=>0, :max_occurs=>1}, {:name=>:policy_data, :type=>"FeedItemPolicyData", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:extension_feed_item_type, :original_name=>"ExtensionFeedItem.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ExtensionSetting=>{:fields=>[{:name=>:extensions, :type=>"ExtensionFeedItem", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:platform_restrictions, :type=>"ExtensionSetting.Platform", :min_occurs=>0, :max_occurs=>1}]}, :ExtensionSettingError=>{:fields=>[{:name=>:reason, :type=>"ExtensionSettingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FeedItemAdGroupTargeting=>{:fields=>[{:name=>:targeting_ad_group_id, :original_name=>"TargetingAdGroupId", :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :FeedItemAttributeError=>{:fields=>[{:name=>:feed_attribute_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:validation_error_code, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_information, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :FeedItemCampaignTargeting=>{:fields=>[{:name=>:targeting_campaign_id, :original_name=>"TargetingCampaignId", :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :FeedItemDevicePreference=>{:fields=>[{:name=>:device_preference, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :FeedItemPolicyData=>{:fields=>[{:name=>:placeholder_type, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:feed_mapping_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:validation_status, :type=>"FeedItemValidationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:approval_status, :type=>"FeedItemApprovalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:validation_errors, :type=>"FeedItemAttributeError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"PolicyData"}, :FeedItemSchedule=>{:fields=>[{:name=>:day_of_week, :type=>"DayOfWeek", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}]}, :FeedItemScheduling=>{:fields=>[{:name=>:feed_item_schedules, :type=>"FeedItemSchedule", :min_occurs=>0, :max_occurs=>:unbounded}]}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Keyword=>{:fields=>[{:name=>:text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:match_type, :type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Location=>{:fields=>[{:name=>:location_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:targeting_status, :type=>"LocationTargetingStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:parent_locations, :type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Criterion"}, :MobileAppCategory=>{:fields=>[{:name=>:mobile_app_category_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :MobileApplication=>{:fields=>[{:name=>:app_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Placement=>{:fields=>[{:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :PolicyData=>{:fields=>[{:name=>:disapproval_reasons, :type=>"DisapprovalReason", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:policy_data_type, :original_name=>"PolicyData.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :QueryError=>{:fields=>[{:name=>:reason, :type=>"QueryError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReviewFeedItem=>{:fields=>[{:name=>:review_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_source_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_source_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:review_text_exactly_quoted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"ExtensionFeedItem"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SitelinkFeedItem=>{:fields=>[{:name=>:sitelink_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sitelink_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sitelink_line2, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sitelink_line3, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sitelink_final_urls, :type=>"UrlList", :min_occurs=>0, :max_occurs=>1}, {:name=>:sitelink_final_mobile_urls, :type=>"UrlList", :min_occurs=>0, :max_occurs=>1}, {:name=>:sitelink_tracking_url_template, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sitelink_url_custom_parameters, :type=>"CustomParameters", :min_occurs=>0, :max_occurs=>1}], :base=>"ExtensionFeedItem"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StructuredSnippetFeedItem=>{:fields=>[{:name=>:header, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ExtensionFeedItem"}, :UrlError=>{:fields=>[{:name=>:reason, :type=>"UrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :UrlList=>{:fields=>[{:name=>:urls, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CriterionUserInterest=>{:fields=>[{:name=>:user_interest_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_interest_parent_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_interest_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :CriterionUserList=>{:fields=>[{:name=>:user_list_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_membership_status, :type=>"CriterionUserList.MembershipStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_eligible_for_search, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_eligible_for_display, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Vertical=>{:fields=>[{:name=>:vertical_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:vertical_parent_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:path, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Criterion"}, :"AppFeedItem.AppStore"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"AuthorizationError.Reason"=>{:fields=>[]}, :"ClientTermsError.Reason"=>{:fields=>[]}, :"CollectionSizeError.Reason"=>{:fields=>[]}, :"Criterion.Type"=>{:fields=>[]}, :"CriterionError.Reason"=>{:fields=>[]}, :"DatabaseError.Reason"=>{:fields=>[]}, :"DateError.Reason"=>{:fields=>[]}, :DayOfWeek=>{:fields=>[]}, :"DistinctError.Reason"=>{:fields=>[]}, :"EntityAccessDenied.Reason"=>{:fields=>[]}, :"EntityCountLimitExceeded.Reason"=>{:fields=>[]}, :"EntityNotFound.Reason"=>{:fields=>[]}, :"ExtensionSetting.Platform"=>{:fields=>[]}, :"ExtensionSettingError.Reason"=>{:fields=>[]}, :"FeedItem.Status"=>{:fields=>[]}, :FeedItemApprovalStatus=>{:fields=>[]}, :FeedItemValidationStatus=>{:fields=>[]}, :"Feed.Type"=>{:fields=>[]}, :"IdError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :KeywordMatchType=>{:fields=>[]}, :LocationTargetingStatus=>{:fields=>[]}, :MinuteOfHour=>{:fields=>[]}, :"NotEmptyError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"OperationAccessDenied.Reason"=>{:fields=>[]}, :Operator=>{:fields=>[]}, :"OperatorError.Reason"=>{:fields=>[]}, :"Predicate.Operator"=>{:fields=>[]}, :"QueryError.Reason"=>{:fields=>[]}, :"QuotaCheckError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RateExceededError.Reason"=>{:fields=>[]}, :"ReadOnlyError.Reason"=>{:fields=>[]}, :"RejectedError.Reason"=>{:fields=>[]}, :"RequestError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"SelectorError.Reason"=>{:fields=>[]}, :"SizeLimitError.Reason"=>{:fields=>[]}, :SortOrder=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :"UrlError.Reason"=>{:fields=>[]}, :"CriterionUserList.MembershipStatus"=>{:fields=>[]}}
    CUSTOMEREXTENSIONSETTINGSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CUSTOMEREXTENSIONSETTINGSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CUSTOMEREXTENSIONSETTINGSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CUSTOMEREXTENSIONSETTINGSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, CustomerExtensionSettingServiceRegistry)
    end
  end
end; end; end
