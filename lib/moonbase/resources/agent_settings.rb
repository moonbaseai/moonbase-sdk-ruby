# frozen_string_literal: true

module Moonbase
  module Resources
    class AgentSettings
      # @overload retrieve(request_options: {})
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::AgentSettingRetrieveResponse]
      #
      # @see Moonbase::Models::AgentSettingRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "agent_settings",
          model: Moonbase::Models::AgentSettingRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @overload update(deal_summary_prompt: nil, meeting_prebrief_prompt: nil, meeting_summary_prompt: nil, meeting_web_search: nil, organization_info: nil, request_options: {})
      #
      # @param deal_summary_prompt [String]
      # @param meeting_prebrief_prompt [String]
      # @param meeting_summary_prompt [String]
      # @param meeting_web_search [Boolean]
      # @param organization_info [String]
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::AgentSettingUpdateResponse]
      #
      # @see Moonbase::Models::AgentSettingUpdateParams
      def update(params = {})
        parsed, options = Moonbase::AgentSettingUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "agent_settings",
          body: parsed,
          model: Moonbase::Models::AgentSettingUpdateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
