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

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
