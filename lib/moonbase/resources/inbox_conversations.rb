# frozen_string_literal: true

module Moonbase
  module Resources
    class InboxConversations
      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::InboxConversationRetrieveParams} for more details.
      #
      # Retrieves the details of an existing conversation.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the Conversation to retrieve.
      #
      # @param include [Array<Symbol, Moonbase::Models::InboxConversationRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `i
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::InboxConversation]
      #
      # @see Moonbase::Models::InboxConversationRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Moonbase::InboxConversationRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["inbox_conversations/%1$s", id],
          query: parsed,
          model: Moonbase::InboxConversation,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::InboxConversationListParams} for more details.
      #
      # Returns a list of your conversations.
      #
      # @overload list(after: nil, before: nil, filter: nil, include: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param filter [Moonbase::Models::InboxConversationListParams::Filter]
      #
      # @param include [Array<Symbol, Moonbase::Models::InboxConversationListParams::Include>] Specifies which related objects to include in the response. Valid options are `i
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::InboxConversation>]
      #
      # @see Moonbase::Models::InboxConversationListParams
      def list(params = {})
        parsed, options = Moonbase::InboxConversationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbox_conversations",
          query: parsed,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::InboxConversation,
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
