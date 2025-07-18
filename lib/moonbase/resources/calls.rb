# frozen_string_literal: true

module Moonbase
  module Resources
    class Calls
      # Logs a phone call.
      #
      # @overload create(direction:, participants:, provider:, provider_id:, start_at:, status:, answered_at: nil, end_at: nil, provider_metadata: nil, request_options: {})
      #
      # @param direction [Symbol, Moonbase::Models::CallCreateParams::Direction] The direction of the call, either `incoming` or `outgoing`.
      #
      # @param participants [Array<Moonbase::Models::CallCreateParams::Participant>] An array of participants involved in the call.
      #
      # @param provider [String] The name of the phone provider that handled the call (e.g., `openphone`).
      #
      # @param provider_id [String] The unique identifier for the call from the provider's system.
      #
      # @param start_at [Time] The time the call started, as an RFC 3339 timestamp.
      #
      # @param status [Symbol, Moonbase::Models::CallCreateParams::Status] The status of the call.
      #
      # @param answered_at [Time] The time the call was answered, as an RFC 3339 timestamp.
      #
      # @param end_at [Time] The time the call ended, as an RFC 3339 timestamp.
      #
      # @param provider_metadata [Hash{Symbol=>Object}] A hash of additional metadata from the provider.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Call]
      #
      # @see Moonbase::Models::CallCreateParams
      def create(params)
        parsed, options = Moonbase::CallCreateParams.dump_request(params)
        @client.request(method: :post, path: "calls", body: parsed, model: Moonbase::Call, options: options)
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
