# frozen_string_literal: true

module Moonbase
  module Resources
    class InboxMessages
      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::InboxMessageRetrieveParams} for more details.
      #
      # Retrieves the details of an existing message.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the Message to retrieve.
      #
      # @param include [Array<Symbol, Moonbase::Models::InboxMessageRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::EmailMessage]
      #
      # @see Moonbase::Models::InboxMessageRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Moonbase::InboxMessageRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["inbox_messages/%1$s", id],
          query: parsed,
          model: Moonbase::EmailMessage,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::InboxMessageListParams} for more details.
      #
      # Returns a list of messages.
      #
      # @overload list(after: nil, before: nil, filter: nil, include: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param filter [Moonbase::Models::InboxMessageListParams::Filter]
      #
      # @param include [Array<Symbol, Moonbase::Models::InboxMessageListParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::EmailMessage>]
      #
      # @see Moonbase::Models::InboxMessageListParams
      def list(params = {})
        parsed, options = Moonbase::InboxMessageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbox_messages",
          query: parsed,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::EmailMessage,
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
