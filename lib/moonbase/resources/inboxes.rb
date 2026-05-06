# frozen_string_literal: true

module Moonbase
  module Resources
    # Manage your inboxes, conversations, and messages
    class Inboxes
      # Retrieves the details of an existing inbox.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the Inbox to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Inbox]
      #
      # @see Moonbase::Models::InboxRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["inboxes/%1$s", id],
          model: Moonbase::Inbox,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::InboxListParams} for more details.
      #
      # Returns a list of shared inboxes.
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
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Inbox>]
      #
      # @see Moonbase::Models::InboxListParams
      def list(params = {})
        parsed, options = Moonbase::InboxListParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "inboxes",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Inbox,
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
