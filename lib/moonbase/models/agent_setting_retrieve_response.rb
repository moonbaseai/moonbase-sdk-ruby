# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::AgentSettings#retrieve
    class AgentSettingRetrieveResponse < Moonbase::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute type
      #
      #   @return [Symbol, :agent_settings]
      required :type, const: :agent_settings

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute deal_summary_model
      #
      #   @return [String, nil]
      optional :deal_summary_model, String

      # @!attribute deal_summary_prompt
      #
      #   @return [String, nil]
      optional :deal_summary_prompt, String

      # @!attribute meeting_prebrief_model
      #
      #   @return [String, nil]
      optional :meeting_prebrief_model, String

      # @!attribute meeting_prebrief_prompt
      #
      #   @return [String, nil]
      optional :meeting_prebrief_prompt, String

      # @!attribute meeting_web_search
      #
      #   @return [Boolean, nil]
      optional :meeting_web_search, Moonbase::Internal::Type::Boolean

      # @!attribute organization_info
      #
      #   @return [String, nil]
      optional :organization_info, String

      # @!method initialize(created_at:, updated_at:, deal_summary_model: nil, deal_summary_prompt: nil, meeting_prebrief_model: nil, meeting_prebrief_prompt: nil, meeting_web_search: nil, organization_info: nil, type: :agent_settings)
      #   @param created_at [Time]
      #   @param updated_at [Time]
      #   @param deal_summary_model [String]
      #   @param deal_summary_prompt [String]
      #   @param meeting_prebrief_model [String]
      #   @param meeting_prebrief_prompt [String]
      #   @param meeting_web_search [Boolean]
      #   @param organization_info [String]
      #   @param type [Symbol, :agent_settings]
    end
  end
end
