# typed: strong

module Moonbase
  module Resources
    class InboxMessages
      # Creates a new message draft.
      sig do
        params(
          body: String,
          inbox_id: String,
          bcc: T::Array[Moonbase::InboxMessageCreateParams::Bcc::OrHash],
          cc: T::Array[Moonbase::InboxMessageCreateParams::Cc::OrHash],
          conversation_id: String,
          subject: String,
          to: T::Array[Moonbase::InboxMessageCreateParams::To::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::EmailMessage)
      end
      def create(
        # The content of the email body in Markdown format.
        body:,
        # The inbox to use for sending the email.
        inbox_id:,
        # A list of `Address` objects for the BCC recipients.
        bcc: nil,
        # A list of `Address` objects for the CC recipients.
        cc: nil,
        # The ID of the conversation, if responding to an existing conversation.
        conversation_id: nil,
        # The subject line of the email.
        subject: nil,
        # A list of `Address` objects for the recipients.
        to: nil,
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
        ).returns(Moonbase::EmailMessage)
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

      # Returns a list of messages.
      sig do
        params(
          after: String,
          before: String,
          filter: Moonbase::InboxMessageListParams::Filter::OrHash,
          include:
            T::Array[Moonbase::InboxMessageListParams::Include::OrSymbol],
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::EmailMessage])
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
        filter: nil,
        # Specifies which related objects to include in the response. Valid options are
        # `addresses`, `attachments`, and `conversation`.
        include: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
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
