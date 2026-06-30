# typed: strong

module Moonbase
  module Resources
    # Manage your inboxes, conversations, and messages
    class InboxMessages
      # Manage your inboxes, conversations, and messages
      sig { returns(Moonbase::Resources::InboxMessages::Attachments) }
      attr_reader :attachments

      # Creates a new message draft.
      sig do
        params(
          message:
            T.any(
              Moonbase::InboxMessageCreateParams::Message::EmailMessageNewConversationCreateParams::OrHash,
              Moonbase::InboxMessageCreateParams::Message::SlackMessageNewConversationCreateParams::OrHash,
              Moonbase::InboxMessageCreateParams::Message::EmailMessageReplyCreateParams::OrHash,
              Moonbase::InboxMessageCreateParams::Message::SlackMessageReplyCreateParams::OrHash
            ),
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Models::InboxMessageCreateResponse::Variants)
      end
      def create(
        # Parameters for creating an email message draft. Provide either the fields for a
        # new conversation, or a `conversation_id` to reply to an existing conversation.
        message:,
        request_options: {}
      )
      end

      # Retrieves the details of an existing message.
      sig do
        params(
          id: String,
          include:
            T::Array[Moonbase::InboxMessageRetrieveParams::Include::OrSymbol],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Models::InboxMessageRetrieveResponse::Variants)
      end
      def retrieve(
        # The ID of the Message to retrieve.
        id,
        # Specifies which related objects to include in the response. Valid options are
        # `addresses`, `attachments`, and `conversation`.
        include: nil,
        request_options: {}
      )
      end

      # Updates an existing message draft.
      sig do
        params(
          id: String,
          message:
            T.any(
              Moonbase::InboxMessageUpdateParams::Message::EmailMessageUpdateParams::OrHash,
              Moonbase::InboxMessageUpdateParams::Message::SlackMessageUpdateParams::OrHash
            ),
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Models::InboxMessageUpdateResponse::Variants)
      end
      def update(
        # The ID of the message to update.
        id,
        # Parameters for updating a draft message in an existing conversation.
        message:,
        request_options: {}
      )
      end

      # Returns a list of messages.
      sig do
        params(
          after: String,
          before: String,
          conversation_id:
            Moonbase::InboxMessageListParams::ConversationID::OrHash,
          inbox_id: Moonbase::InboxMessageListParams::InboxID::OrHash,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::MessagePointer])
      end
      def list(
        # When specified, returns results starting immediately after the item identified
        # by this cursor. Use the cursor value from the previous response's metadata to
        # fetch the next page of results.
        after: nil,
        # When specified, returns results starting immediately before the item identified
        # by this cursor. Use the cursor value from the response's metadata to fetch the
        # previous page of results.
        before: nil,
        conversation_id: nil,
        inbox_id: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
        request_options: {}
      )
      end

      # Permanently deletes a message draft.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The ID of the message to delete.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Moonbase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
