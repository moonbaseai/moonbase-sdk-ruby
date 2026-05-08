# typed: strong

module Moonbase
  module Models
    class InboxMessageCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::InboxMessageCreateParams, Moonbase::Internal::AnyHash)
        end

      # The email body.
      sig { returns(Moonbase::FormattedText) }
      attr_reader :body

      sig { params(body: Moonbase::FormattedText::OrHash).void }
      attr_writer :body

      # The inbox to use for sending the email.
      sig { returns(String) }
      attr_accessor :inbox_id

      # A list of the BCC recipients.
      sig { returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams])) }
      attr_reader :bcc

      sig do
        params(bcc: T::Array[Moonbase::EmailMessageAddressParams::OrHash]).void
      end
      attr_writer :bcc

      # A list of the CC recipients.
      sig { returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams])) }
      attr_reader :cc

      sig do
        params(cc: T::Array[Moonbase::EmailMessageAddressParams::OrHash]).void
      end
      attr_writer :cc

      # The ID of the conversation, if responding to an existing conversation.
      sig { returns(T.nilable(String)) }
      attr_reader :conversation_id

      sig { params(conversation_id: String).void }
      attr_writer :conversation_id

      # The subject line of the email.
      sig { returns(T.nilable(String)) }
      attr_reader :subject

      sig { params(subject: String).void }
      attr_writer :subject

      # A list of recipients.
      sig { returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams])) }
      attr_reader :to

      sig do
        params(to: T::Array[Moonbase::EmailMessageAddressParams::OrHash]).void
      end
      attr_writer :to

      sig do
        params(
          body: Moonbase::FormattedText::OrHash,
          inbox_id: String,
          bcc: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
          cc: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
          conversation_id: String,
          subject: String,
          to: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The email body.
        body:,
        # The inbox to use for sending the email.
        inbox_id:,
        # A list of the BCC recipients.
        bcc: nil,
        # A list of the CC recipients.
        cc: nil,
        # The ID of the conversation, if responding to an existing conversation.
        conversation_id: nil,
        # The subject line of the email.
        subject: nil,
        # A list of recipients.
        to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body: Moonbase::FormattedText,
            inbox_id: String,
            bcc: T::Array[Moonbase::EmailMessageAddressParams],
            cc: T::Array[Moonbase::EmailMessageAddressParams],
            conversation_id: String,
            subject: String,
            to: T::Array[Moonbase::EmailMessageAddressParams],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
