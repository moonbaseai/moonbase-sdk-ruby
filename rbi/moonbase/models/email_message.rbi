# typed: strong

module Moonbase
  module Models
    class EmailMessage < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::EmailMessage, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Structured content that can be rendered in multiple formats, currently
      # supporting Markdown.
      sig { returns(Moonbase::FormattedText) }
      attr_reader :body

      sig { params(body: Moonbase::FormattedText::OrHash).void }
      attr_writer :body

      # `true` if the message appears to be part of a bulk mailing.
      sig { returns(T::Boolean) }
      attr_accessor :bulk

      # The time the message was received, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # `true` if the message is a draft that has not been sent.
      sig { returns(T::Boolean) }
      attr_accessor :draft

      # The current lock version of the message for optimistic concurrency control.
      sig { returns(Integer) }
      attr_accessor :lock_version

      # `true` if the message is classified as spam.
      sig { returns(T::Boolean) }
      attr_accessor :spam

      # The subject line of the email.
      sig { returns(String) }
      attr_accessor :subject

      # `true` if the message is in the trash.
      sig { returns(T::Boolean) }
      attr_accessor :trash

      # String representing the object’s type. Always `email_message` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # `true` if the message has not been read.
      sig { returns(T::Boolean) }
      attr_accessor :unread

      # A list of `Address` objects associated with the message (sender and recipients).
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(T::Array[Moonbase::Address])) }
      attr_reader :addresses

      sig { params(addresses: T::Array[Moonbase::Address::OrHash]).void }
      attr_writer :addresses

      # A list of `Attachment` objects on the message.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(T::Array[Moonbase::MessageAttachment])) }
      attr_reader :attachments

      sig do
        params(attachments: T::Array[Moonbase::MessageAttachment::OrHash]).void
      end
      attr_writer :attachments

      # The `Conversation` thread this message is part of.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(Moonbase::InboxConversation)) }
      attr_reader :conversation

      sig { params(conversation: Moonbase::InboxConversation).void }
      attr_writer :conversation

      # A concise, system-generated summary of the email content.
      sig { returns(T.nilable(String)) }
      attr_reader :summary

      sig { params(summary: String).void }
      attr_writer :summary

      # The Email Message object represents a single email within a `Conversation`.
      sig do
        params(
          id: String,
          body: Moonbase::FormattedText::OrHash,
          bulk: T::Boolean,
          created_at: Time,
          draft: T::Boolean,
          lock_version: Integer,
          spam: T::Boolean,
          subject: String,
          trash: T::Boolean,
          unread: T::Boolean,
          addresses: T::Array[Moonbase::Address::OrHash],
          attachments: T::Array[Moonbase::MessageAttachment::OrHash],
          conversation: Moonbase::InboxConversation,
          summary: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Structured content that can be rendered in multiple formats, currently
        # supporting Markdown.
        body:,
        # `true` if the message appears to be part of a bulk mailing.
        bulk:,
        # The time the message was received, as an ISO 8601 timestamp in UTC.
        created_at:,
        # `true` if the message is a draft that has not been sent.
        draft:,
        # The current lock version of the message for optimistic concurrency control.
        lock_version:,
        # `true` if the message is classified as spam.
        spam:,
        # The subject line of the email.
        subject:,
        # `true` if the message is in the trash.
        trash:,
        # `true` if the message has not been read.
        unread:,
        # A list of `Address` objects associated with the message (sender and recipients).
        #
        # **Note:** Only present when requested using the `include` query parameter.
        addresses: nil,
        # A list of `Attachment` objects on the message.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        attachments: nil,
        # The `Conversation` thread this message is part of.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        conversation: nil,
        # A concise, system-generated summary of the email content.
        summary: nil,
        # String representing the object’s type. Always `email_message` for this object.
        type: :email_message
      )
      end

      sig do
        override.returns(
          {
            id: String,
            body: Moonbase::FormattedText,
            bulk: T::Boolean,
            created_at: Time,
            draft: T::Boolean,
            lock_version: Integer,
            spam: T::Boolean,
            subject: String,
            trash: T::Boolean,
            type: Symbol,
            unread: T::Boolean,
            addresses: T::Array[Moonbase::Address],
            attachments: T::Array[Moonbase::MessageAttachment],
            conversation: Moonbase::InboxConversation,
            summary: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
