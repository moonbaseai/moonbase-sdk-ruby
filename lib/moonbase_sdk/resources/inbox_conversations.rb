# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class InboxConversations
      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::InboxConversationRetrieveParams} for more details.
      #
      # Retrieves the details of an existing conversation.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the Conversation to retrieve.
      #
      # @param include [Array<Symbol, MoonbaseSDK::Models::InboxConversationRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::InboxConversation]
      #
      # @see MoonbaseSDK::Models::InboxConversationRetrieveParams
      def retrieve(id, params = {})
        parsed, options = MoonbaseSDK::InboxConversationRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["inbox_conversations/%1$s", id],
          query: parsed,
          model: MoonbaseSDK::InboxConversation,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::InboxConversationListParams} for more details.
      #
      # Returns a list of your conversations.
      #
      # @overload list(after: nil, before: nil, inbox: nil, include: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param inbox [Array<String>] Filter conversations by one or more inbox IDs.
      #
      # @param include [Array<Symbol, MoonbaseSDK::Models::InboxConversationListParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Internal::CursorPage<MoonbaseSDK::Models::InboxConversation>]
      #
      # @see MoonbaseSDK::Models::InboxConversationListParams
      def list(params = {})
        parsed, options = MoonbaseSDK::InboxConversationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbox_conversations",
          query: parsed,
          page: MoonbaseSDK::Internal::CursorPage,
          model: MoonbaseSDK::InboxConversation,
          options: options
        )
      end

      # @api private
      #
      # @param client [MoonbaseSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
