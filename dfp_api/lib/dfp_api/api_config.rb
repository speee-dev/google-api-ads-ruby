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
# Helper methods for loading and managing the available services in the DFP API.

require 'ads_common/api_config'

require 'dfp_api/version'

module DfpApi

  # Contains helper methods for loading and managing the available services.
  module ApiConfig

    class << ApiConfig
      include AdsCommon::ApiConfig
    end

    # Set defaults
    DEFAULT_VERSION = :v201802
    LATEST_VERSION = :v201802

    # Set other constants
    API_NAME = 'DfpApi'
    DEFAULT_CONFIG_FILENAME = 'dfp_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201705 => [:ActivityGroupService, :ActivityService,
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
                   :PremiumRateService, :ProductService,
                   :ProductTemplateService, :ProposalLineItemService,
                   :ProposalService, :PublisherQueryLanguageService,
                   :RateCardService, :ReconciliationOrderReportService,
                   :ReconciliationLineItemReportService,
                   :ReconciliationReportRowService,
                   :ReconciliationReportService, :ReportService,
                   :SuggestedAdUnitService, :TeamService, :UserService,
                   :UserTeamAssociationService, :WorkflowRequestService],
      :v201708 => [:ActivityGroupService, :ActivityService,
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
                   :PremiumRateService, :ProductService,
                   :ProductTemplateService, :ProposalLineItemService,
                   :ProposalService, :PublisherQueryLanguageService,
                   :RateCardService, :ReconciliationOrderReportService,
                   :ReconciliationLineItemReportService,
                   :ReconciliationReportRowService,
                   :ReconciliationReportService, :ReportService,
                   :SuggestedAdUnitService, :TeamService, :UserService,
                   :UserTeamAssociationService, :WorkflowRequestService],
      :v201711 => [:ActivityGroupService, :ActivityService,
                   :AdExclusionRuleService, :AdRuleService,
                   :AudienceSegmentService, :BaseRateService, :CompanyService,
                   :CdnConfigurationService, :ContactService,
                   :ContentBundleService, :ContentMetadataKeyHierarchyService,
                   :ContentService, :CreativeService, :CreativeSetService,
                   :CreativeTemplateService, :CreativeWrapperService,
                   :CustomFieldService, :CustomTargetingService,
                   :ExchangeRateService, :ForecastService, :InventoryService,
                   :LabelService, :LineItemCreativeAssociationService,
                   :LineItemService, :LineItemTemplateService,
                   :LiveStreamEventService, :MobileApplicationService,
                   :NativeStyleService, :NetworkService, :OrderService,
                   :PackageService, :ProductPackageService,
                   :ProductPackageItemService, :PlacementService,
                   :PremiumRateService, :ProductService,
                   :ProductTemplateService, :ProposalLineItemService,
                   :ProposalService, :PublisherQueryLanguageService,
                   :RateCardService, :ReconciliationOrderReportService,
                   :ReconciliationLineItemReportService,
                   :ReconciliationReportRowService,
                   :ReconciliationReportService, :ReportService,
                   :SuggestedAdUnitService, :TeamService, :UserService,
                   :UserTeamAssociationService, :WorkflowRequestService],
      :v201802 => [:ActivityGroupService, :ActivityService,
                   :AdExclusionRuleService, :AdRuleService,
                   :AudienceSegmentService, :BaseRateService, :CompanyService,
                   :CdnConfigurationService, :ContactService,
                   :ContentBundleService, :ContentMetadataKeyHierarchyService,
                   :ContentService, :CreativeService, :CreativeSetService,
                   :CreativeTemplateService, :CreativeWrapperService,
                   :CustomFieldService, :CustomTargetingService,
                   :ExchangeRateService, :ForecastService, :InventoryService,
                   :LabelService, :LineItemCreativeAssociationService,
                   :LineItemService, :LineItemTemplateService,
                   :LiveStreamEventService, :MobileApplicationService,
                   :NativeStyleService, :NetworkService, :OrderService,
                   :PackageService, :ProductPackageService,
                   :ProductPackageItemService, :PlacementService,
                   :PremiumRateService, :ProductService,
                   :ProductTemplateService, :ProposalLineItemService,
                   :ProposalService, :PublisherQueryLanguageService,
                   :RateCardService, :ReconciliationOrderReportService,
                   :ReconciliationLineItemReportService,
                   :ReconciliationReportRowService,
                   :ReconciliationReportService, :ReportService,
                   :SuggestedAdUnitService, :TeamService, :UserService,
                   :UserTeamAssociationService, :WorkflowRequestService]
    }

    # Configure the base URL for each version and scope.
    @@config = {
      :oauth_scope => 'https://www.googleapis.com/auth/dfp',
      :header_ns => 'https://www.google.com/apis/ads/publisher/',
      :v201705 => 'https://ads.google.com/apis/ads/publisher/',
      :v201708 => 'https://ads.google.com/apis/ads/publisher/',
      :v201711 => 'https://ads.google.com/apis/ads/publisher/',
      :v201802 => 'https://ads.google.com/apis/ads/publisher/'
    }

    public

    # Getters for constants and module variables.
    def self.default_version
      DEFAULT_VERSION
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

    def self.config(key)
      @@config[key]
    end

    def self.subdir_config
      nil
    end

    def self.default_config_filename
      DEFAULT_CONFIG_FILENAME
    end
  end
end
