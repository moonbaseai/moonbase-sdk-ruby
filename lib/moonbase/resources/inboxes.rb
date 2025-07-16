# frozen_string_literal: true

module Moonbase
  module Resources
    class Inboxes
      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::InboxRetrieveParams} for more details.
      #
      # Retrieves the details of an existing inbox.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the Inbox to retrieve.
      #
      # @param include [Symbol, Moonbase::Models::InboxRetrieveParams::Include] Specifies which related objects to include in the response. Valid option is `tag
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Inbox]
      #
      # @see Moonbase::Models::InboxRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Moonbase::InboxRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["inboxes/%1$s", id],
          query: parsed.transform_keys(include: "include[]"),
          model: Moonbase::Inbox,
          options: options
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
        @client.request(
          method: :get,
          path: "inboxes",
          query: parsed,
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
