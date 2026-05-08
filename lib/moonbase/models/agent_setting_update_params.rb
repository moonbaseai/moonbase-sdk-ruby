# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::AgentSettings#update
    class AgentSettingUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute deal_summary_prompt
      #
      #   @return [String, nil]
      optional :deal_summary_prompt, String

      # @!attribute meeting_prebrief_prompt
      #
      #   @return [String, nil]
      optional :meeting_prebrief_prompt, String

      # @!attribute meeting_summary_prompt
      #
      #   @return [String, nil]
      optional :meeting_summary_prompt, String

      # @!attribute meeting_web_search
      #
      #   @return [Boolean, nil]
      optional :meeting_web_search, Moonbase::Internal::Type::Boolean

      # @!attribute organization_info
      #
      #   @return [String, nil]
      optional :organization_info, String

      # @!method initialize(deal_summary_prompt: nil, meeting_prebrief_prompt: nil, meeting_summary_prompt: nil, meeting_web_search: nil, organization_info: nil, request_options: {})
      #   @param deal_summary_prompt [String]
      #   @param meeting_prebrief_prompt [String]
      #   @param meeting_summary_prompt [String]
      #   @param meeting_web_search [Boolean]
      #   @param organization_info [String]
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
