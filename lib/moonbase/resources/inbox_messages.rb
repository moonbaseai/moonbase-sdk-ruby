# frozen_string_literal: true

module Moonbase
  module Resources
    # Manage your inboxes, conversations, and messages
    class InboxMessages
      # Manage your inboxes, conversations, and messages
      # @return [Moonbase::Resources::InboxMessages::Attachments]
      attr_reader :attachments

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::InboxMessageCreateParams} for more details.
      #
      # Creates a new message draft.
      #
      # @overload create(message:, request_options: {})
      #
      # @param message [Moonbase::Models::InboxMessageCreateParams::Message::EmailMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::SlackMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::EmailMessageReplyCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::SlackMessageReplyCreateParams] Parameters for creating an email message draft. Provide either the fields for a
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::EmailMessage, Moonbase::Models::SlackMessage]
      #
      # @see Moonbase::Models::InboxMessageCreateParams
      def create(params)
        parsed, options = Moonbase::InboxMessageCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "inbox_messages",
          body: parsed[:message],
          model: Moonbase::Models::InboxMessageCreateResponse,
          options: options
        )
      end

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
      # @return [Moonbase::Models::EmailMessage, Moonbase::Models::SlackMessage]
      #
      # @see Moonbase::Models::InboxMessageRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Moonbase::InboxMessageRetrieveParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["inbox_messages/%1$s", id],
          query: query,
          model: Moonbase::Models::InboxMessageRetrieveResponse,
          options: options
        )
      end

      # Updates an existing message draft.
      #
      # @overload update(id, message:, request_options: {})
      #
      # @param id [String] The ID of the message to update.
      #
      # @param message [Moonbase::Models::InboxMessageUpdateParams::Message::EmailMessageUpdateParams, Moonbase::Models::InboxMessageUpdateParams::Message::SlackMessageUpdateParams] Parameters for updating a draft message in an existing conversation.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::EmailMessage, Moonbase::Models::SlackMessage]
      #
      # @see Moonbase::Models::InboxMessageUpdateParams
      def update(id, params)
        parsed, options = Moonbase::InboxMessageUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["inbox_messages/%1$s", id],
          body: parsed[:message],
          model: Moonbase::Models::InboxMessageUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::InboxMessageListParams} for more details.
      #
      # Returns a list of messages.
      #
      # @overload list(after: nil, before: nil, conversation_id: nil, inbox_id: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param conversation_id [Moonbase::Models::InboxMessageListParams::ConversationID]
      #
      # @param inbox_id [Moonbase::Models::InboxMessageListParams::InboxID]
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::MessagePointer>]
      #
      # @see Moonbase::Models::InboxMessageListParams
      def list(params = {})
        parsed, options = Moonbase::InboxMessageListParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "inbox_messages",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::MessagePointer,
          options: options
        )
      end

      # Permanently deletes a message draft.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the message to delete.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Moonbase::Models::InboxMessageDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["inbox_messages/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
        @attachments = Moonbase::Resources::InboxMessages::Attachments.new(client: client)
      end
    end
  end
end
