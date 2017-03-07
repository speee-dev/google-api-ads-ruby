#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# Helper methods for loading and managing the available services in the DFP
# API.

require 'ads_common/api_config'

require 'dfp_api/version'

module DfpApi

  # Contains helper methods for loading and managing the available services.
  module ApiConfig

    class << ApiConfig
      include AdsCommon::ApiConfig
    end

    # Set defaults
    DEFAULT_VERSION = :v201702
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :v201702

    # Set other constants
    API_NAME = 'DfpApi'
    DEFAULT_CONFIG_FILENAME = 'dfp_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201605 => [:ActivityGroupService, :ActivityService,
                   :AdExclusionRuleService, :AdRuleService,
                   :AudienceSegmentService, :BaseRateService, :CompanyService,
                   :ContactService, :ContentBundleService,
                   :ContentMetadataKeyHierarchyService, :ContentService,
                   :CreativeService, :CreativeSetService,
                   :CreativeTemplateService, :CreativeWrapperService,
                   :CustomFieldService, :CustomTargetingService,
                   :ExchangeRateService, :ForecastService, :InventoryService,
                   :LabelService, :LineItemCreativeAssociationService,
                   :LineItemService, :LineItemTemplateService,
                   :NetworkService, :LiveStreamEventService,
                   :OrderService, :PackageService, :ProductPackageService,
                   :ProductPackageItemService, :PlacementService,
                   :PremiumRateService, :ProductService,
                   :ProductTemplateService, :ProposalLineItemService,
                   :ProposalService, :PublisherQueryLanguageService,
                   :RateCardService, :ReconciliationOrderReportService,
                   :ReconciliationLineItemReportService,
                   :ReconciliationReportRowService,
                   :ReconciliationReportService, :ReportService,
                   :SuggestedAdUnitService,
                   :TeamService, :UserService,
                   :UserTeamAssociationService, :WorkflowRequestService],
      :v201608 => [:ActivityGroupService, :ActivityService,
                   :AdExclusionRuleService, :AdRuleService,
                   :AudienceSegmentService, :BaseRateService, :CompanyService,
                   :ContactService, :ContentBundleService,
                   :ContentMetadataKeyHierarchyService, :ContentService,
                   :CreativeService, :CreativeSetService,
                   :CreativeTemplateService, :CreativeWrapperService,
                   :CustomFieldService, :CustomTargetingService,
                   :ExchangeRateService, :ForecastService, :InventoryService,
                   :LabelService, :LineItemCreativeAssociationService,
                   :LineItemService, :LineItemTemplateService,
                   :NetworkService, :LiveStreamEventService,
                   :OrderService, :PackageService, :ProductPackageService,
                   :ProductPackageItemService, :PlacementService,
                   :PremiumRateService, :ProductService,
                   :ProductTemplateService, :ProposalLineItemService,
                   :ProposalService, :PublisherQueryLanguageService,
                   :RateCardService, :ReconciliationOrderReportService,
                   :ReconciliationLineItemReportService,
                   :ReconciliationReportRowService,
                   :ReconciliationReportService, :ReportService,
                   :SuggestedAdUnitService,
                   :TeamService, :UserService,
                   :UserTeamAssociationService, :WorkflowRequestService],
      :v201611 => [:ActivityGroupService, :ActivityService,
                   :AdExclusionRuleService, :AdRuleService,
                   :AudienceSegmentService, :BaseRateService, :CompanyService,
                   :ContactService, :ContentBundleService,
                   :ContentMetadataKeyHierarchyService, :ContentService,
                   :CreativeService, :CreativeSetService,
                   :CreativeTemplateService, :CreativeWrapperService,
                   :CustomFieldService, :CustomTargetingService,
                   :ExchangeRateService, :ForecastService, :InventoryService,
                   :LabelService, :LineItemCreativeAssociationService,
                   :LineItemService, :LineItemTemplateService,
                   :LiveStreamEventService, :MobileApplicationService,
                   :NetworkService, :OrderService, :PackageService,
                   :ProductPackageService, :ProductPackageItemService,
                   :PlacementService, :PremiumRateService, :ProductService,
                   :ProductTemplateService, :ProposalLineItemService,
                   :ProposalService, :PublisherQueryLanguageService,
                   :RateCardService, :ReconciliationOrderReportService,
                   :ReconciliationLineItemReportService,
                   :ReconciliationReportRowService,
                   :ReconciliationReportService, :ReportService,
                   :SuggestedAdUnitService,
                   :TeamService, :UserService,
                   :UserTeamAssociationService, :WorkflowRequestService],
      :v201702 => [:ActivityGroupService, :ActivityService,
                   :AdExclusionRuleService, :AdRuleService,
                   :AudienceSegmentService, :BaseRateService, :CompanyService,
                   :ContactService, :ContentBundleService,
                   :ContentMetadataKeyHierarchyService, :ContentService,
                   :CreativeService, :CreativeSetService,
                   :CreativeTemplateService, :CreativeWrapperService,
                   :CustomFieldService, :CustomTargetingService,
                   :ExchangeRateService, :ForecastService, :InventoryService,
                   :LabelService, :LineItemCreativeAssociationService,
                   :LineItemService, :LineItemTemplateService,
                   :LiveStreamEventService, :MobileApplicationService,
                   :NativeStyleService, :NetworkService, :OrderService,
                   :PackageService, :ProductPackageService,
                   :ProductPackageItemService, :PlacementService,
                   :PremiumRateService, :ProductService, :ProductTemplateService,
                   :ProposalLineItemService, :ProposalService,
                   :PublisherQueryLanguageService, :RateCardService,
                   :ReconciliationOrderReportService,
                   :ReconciliationLineItemReportService,
                   :ReconciliationReportRowService,
                   :ReconciliationReportService, :ReportService,
                   :SuggestedAdUnitService, :TeamService, :UserService,
                   :UserTeamAssociationService, :WorkflowRequestService]
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :PRODUCTION => {
        :oauth_scope => 'https://www.googleapis.com/auth/dfp',
        :header_ns => 'https://www.google.com/apis/ads/publisher/',
        :v201605 => 'https://ads.google.com/apis/ads/publisher/',
        :v201608 => 'https://ads.google.com/apis/ads/publisher/',
        :v201611 => 'https://ads.google.com/apis/ads/publisher/',
        :v201702 => 'https://ads.google.com/apis/ads/publisher/'
      }
    }

    public

    # Getters for constants and module variables.
    def self.default_version
      DEFAULT_VERSION
    end

    def self.default_environment
      DEFAULT_ENVIRONMENT
    end

    def self.latest_version
      LATEST_VERSION
    end

    def self.api_name
      API_NAME
    end

    def self.service_config
      @@service_config
    end

    def self.environment_config(environment, key)
      return @@environment_config.include?(environment) ?
          @@environment_config[environment][key] : nil
    end

    def self.subdir_config
      nil
    end

    def self.default_config_filename
      DEFAULT_CONFIG_FILENAME
    end
  end
end
