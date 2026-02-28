# frozen_string_literal: true

module Moonbase
  module Resources
    class Calls
      # Logs a phone call.
      #
      # @overload create(direction:, participants:, provider:, provider_id:, provider_status:, start_at:, answered_at: nil, end_at: nil, provider_metadata: nil, recordings: nil, transcript: nil, request_options: {})
      #
      # @param direction [Symbol, Moonbase::Models::CallCreateParams::Direction] The direction of the call, either `incoming` or `outgoing`.
      #
      # @param participants [Array<Moonbase::Models::CallCreateParams::Participant>] An array of participants involved in the call.
      #
      # @param provider [Symbol, Moonbase::Models::CallCreateParams::Provider] The name of the phone provider that handled the call (e.g., `openphone`).
      #
      # @param provider_id [String] The unique identifier for the call from the provider's system.
      #
      # @param provider_status [String] The status of the call.
      #
      # @param start_at [Time] The time the call started, as an ISO 8601 timestamp in UTC.
      #
      # @param answered_at [Time] The time the call was answered, as an ISO 8601 timestamp in UTC.
      #
      # @param end_at [Time] The time the call ended, as an ISO 8601 timestamp in UTC.
      #
      # @param provider_metadata [Hash{Symbol=>Object}] A hash of additional metadata from the provider.
      #
      # @param recordings [Array<Moonbase::Models::CallCreateParams::Recording>] Any recordings associated with the call.
      #
      # @param transcript [Moonbase::Models::CallCreateParams::Transcript] A transcript of the call.
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

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::CallRetrieveParams} for more details.
      #
      # Retrieves the details of an existing call.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the call to retrieve.
      #
      # @param include [Array<Symbol, Moonbase::Models::CallRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `t
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Call]
      #
      # @see Moonbase::Models::CallRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Moonbase::CallRetrieveParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["calls/%1$s", id],
          query: query,
          model: Moonbase::Call,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::CallListParams} for more details.
      #
      # Returns a list of calls.
      #
      # @overload list(after: nil, before: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Call>]
      #
      # @see Moonbase::Models::CallListParams
      def list(params = {})
        parsed, options = Moonbase::CallListParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "calls",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Call,
          options: options
        )
      end

      # Find and update an existing phone call, or create a new one.
      #
      # @overload upsert(direction:, participants:, provider:, provider_id:, provider_status:, start_at:, answered_at: nil, end_at: nil, provider_metadata: nil, recordings: nil, transcript: nil, request_options: {})
      #
      # @param direction [Symbol, Moonbase::Models::CallUpsertParams::Direction] The direction of the call, either `incoming` or `outgoing`.
      #
      # @param participants [Array<Moonbase::Models::CallUpsertParams::Participant>] An array of participants involved in the call.
      #
      # @param provider [Symbol, Moonbase::Models::CallUpsertParams::Provider] The name of the phone provider that handled the call (e.g., `openphone`).
      #
      # @param provider_id [String] The unique identifier for the call from the provider's system.
      #
      # @param provider_status [String] The status of the call.
      #
      # @param start_at [Time] The time the call started, as an ISO 8601 timestamp in UTC.
      #
      # @param answered_at [Time] The time the call was answered, as an ISO 8601 timestamp in UTC.
      #
      # @param end_at [Time] The time the call ended, as an ISO 8601 timestamp in UTC.
      #
      # @param provider_metadata [Hash{Symbol=>Object}] A hash of additional metadata from the provider.
      #
      # @param recordings [Array<Moonbase::Models::CallUpsertParams::Recording>] Any recordings associated with the call.
      #
      # @param transcript [Moonbase::Models::CallUpsertParams::Transcript] A transcript of the call.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Call]
      #
      # @see Moonbase::Models::CallUpsertParams
      def upsert(params)
        parsed, options = Moonbase::CallUpsertParams.dump_request(params)
        @client.request(
          method: :post,
          path: "calls/upsert",
          body: parsed,
          model: Moonbase::Call,
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
