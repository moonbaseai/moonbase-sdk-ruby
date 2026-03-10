# frozen_string_literal: true

module Moonbase
  module Resources
    # Manage your marketing campaigns and forms
    class Unsubscribes
      # Create a new unsubscribe.
      #
      # @overload create(email:, request_options: {})
      #
      # @param email [String]
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Unsubscribe]
      #
      # @see Moonbase::Models::UnsubscribeCreateParams
      def create(params)
        parsed, options = Moonbase::UnsubscribeCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "unsubscribes",
          body: parsed,
          model: Moonbase::Unsubscribe,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::UnsubscribeListParams} for more details.
      #
      # Returns a list of unsubscribes.
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
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Unsubscribe>]
      #
      # @see Moonbase::Models::UnsubscribeListParams
      def list(params = {})
        parsed, options = Moonbase::UnsubscribeListParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "unsubscribes",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Unsubscribe,
          options: options
        )
      end

      # Permanently deletes an unsubscribe by email address.
      #
      # @overload delete(email, request_options: {})
      #
      # @param email [String] The email address of the unsubscribe to delete.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Moonbase::Models::UnsubscribeDeleteParams
      def delete(email, params = {})
        @client.request(
          method: :delete,
          path: ["unsubscribes/%1$s", email],
          model: NilClass,
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
