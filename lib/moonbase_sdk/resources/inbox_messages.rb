# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class InboxMessages
      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::InboxMessageRetrieveParams} for more details.
      #
      # Retrieves the details of an existing message.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the Message to retrieve.
      #
      # @param include [Array<Symbol, MoonbaseSDK::Models::InboxMessageRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::EmailMessage]
      #
      # @see MoonbaseSDK::Models::InboxMessageRetrieveParams
      def retrieve(id, params = {})
        parsed, options = MoonbaseSDK::InboxMessageRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["inbox_messages/%1$s", id],
          query: parsed,
          model: MoonbaseSDK::EmailMessage,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::InboxMessageListParams} for more details.
      #
      # Returns a list of messages.
      #
      # @overload list(after: nil, before: nil, conversation: nil, inbox: nil, include: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param conversation [Array<String>] Filter messages by one or more conversation IDs.
      #
      # @param inbox [Array<String>] Filter messages by one or more inbox IDs.
      #
      # @param include [Array<Symbol, MoonbaseSDK::Models::InboxMessageListParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Internal::CursorPage<MoonbaseSDK::Models::EmailMessage>]
      #
      # @see MoonbaseSDK::Models::InboxMessageListParams
      def list(params = {})
        parsed, options = MoonbaseSDK::InboxMessageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbox_messages",
          query: parsed,
          page: MoonbaseSDK::Internal::CursorPage,
          model: MoonbaseSDK::EmailMessage,
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
