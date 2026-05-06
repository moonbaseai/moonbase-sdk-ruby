# typed: strong

module Moonbase
  module Models
    class InboxMessageUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::InboxMessageUpdateParams, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The current lock version of the draft for optimistic concurrency control.
      sig { returns(Integer) }
      attr_accessor :lock_version

      # A list of the BCC recipients.
      sig { returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams])) }
      attr_reader :bcc

      sig do
        params(bcc: T::Array[Moonbase::EmailMessageAddressParams::OrHash]).void
      end
      attr_writer :bcc

      # The email body.
      sig { returns(T.nilable(Moonbase::FormattedText)) }
      attr_reader :body

      sig { params(body: Moonbase::FormattedText::OrHash).void }
      attr_writer :body

      # A list of the CC recipients.
      sig { returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams])) }
      attr_reader :cc

      sig do
        params(cc: T::Array[Moonbase::EmailMessageAddressParams::OrHash]).void
      end
      attr_writer :cc

      # The subject line of the email.
      sig { returns(T.nilable(String)) }
      attr_reader :subject

      sig { params(subject: String).void }
      attr_writer :subject

      # A list of the recipients.
      sig { returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams])) }
      attr_reader :to

      sig do
        params(to: T::Array[Moonbase::EmailMessageAddressParams::OrHash]).void
      end
      attr_writer :to

      sig do
        params(
          id: String,
          lock_version: Integer,
          bcc: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
          body: Moonbase::FormattedText::OrHash,
          cc: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
          subject: String,
          to: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The current lock version of the draft for optimistic concurrency control.
        lock_version:,
        # A list of the BCC recipients.
        bcc: nil,
        # The email body.
        body: nil,
        # A list of the CC recipients.
        cc: nil,
        # The subject line of the email.
        subject: nil,
        # A list of the recipients.
        to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            lock_version: Integer,
            bcc: T::Array[Moonbase::EmailMessageAddressParams],
            body: Moonbase::FormattedText,
            cc: T::Array[Moonbase::EmailMessageAddressParams],
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
