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

      # The current lock version of the draft for optimistic concurrency control.
      sig { returns(Integer) }
      attr_accessor :lock_version

      # A list of the BCC recipients.
      sig do
        returns(T.nilable(T::Array[Moonbase::InboxMessageUpdateParams::Bcc]))
      end
      attr_reader :bcc

      sig do
        params(
          bcc: T::Array[Moonbase::InboxMessageUpdateParams::Bcc::OrHash]
        ).void
      end
      attr_writer :bcc

      # The email body.
      sig { returns(T.nilable(Moonbase::FormattedText)) }
      attr_reader :body

      sig { params(body: Moonbase::FormattedText::OrHash).void }
      attr_writer :body

      # A list of the CC recipients.
      sig do
        returns(T.nilable(T::Array[Moonbase::InboxMessageUpdateParams::Cc]))
      end
      attr_reader :cc

      sig do
        params(
          cc: T::Array[Moonbase::InboxMessageUpdateParams::Cc::OrHash]
        ).void
      end
      attr_writer :cc

      # The subject line of the email.
      sig { returns(T.nilable(String)) }
      attr_reader :subject

      sig { params(subject: String).void }
      attr_writer :subject

      # A list of the recipients.
      sig do
        returns(T.nilable(T::Array[Moonbase::InboxMessageUpdateParams::To]))
      end
      attr_reader :to

      sig do
        params(
          to: T::Array[Moonbase::InboxMessageUpdateParams::To::OrHash]
        ).void
      end
      attr_writer :to

      sig do
        params(
          lock_version: Integer,
          bcc: T::Array[Moonbase::InboxMessageUpdateParams::Bcc::OrHash],
          body: Moonbase::FormattedText::OrHash,
          cc: T::Array[Moonbase::InboxMessageUpdateParams::Cc::OrHash],
          subject: String,
          to: T::Array[Moonbase::InboxMessageUpdateParams::To::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
            lock_version: Integer,
            bcc: T::Array[Moonbase::InboxMessageUpdateParams::Bcc],
            body: Moonbase::FormattedText,
            cc: T::Array[Moonbase::InboxMessageUpdateParams::Cc],
            subject: String,
            to: T::Array[Moonbase::InboxMessageUpdateParams::To],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Bcc < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::InboxMessageUpdateParams::Bcc,
              Moonbase::Internal::AnyHash
            )
          end

        # The email address.
        sig { returns(String) }
        attr_accessor :email

        # The recipient's name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(email: String, name: String).returns(T.attached_class) }
        def self.new(
          # The email address.
          email:,
          # The recipient's name.
          name: nil
        )
        end

        sig { override.returns({ email: String, name: String }) }
        def to_hash
        end
      end

      class Cc < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::InboxMessageUpdateParams::Cc,
              Moonbase::Internal::AnyHash
            )
          end

        # The email address.
        sig { returns(String) }
        attr_accessor :email

        # The recipient's name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(email: String, name: String).returns(T.attached_class) }
        def self.new(
          # The email address.
          email:,
          # The recipient's name.
          name: nil
        )
        end

        sig { override.returns({ email: String, name: String }) }
        def to_hash
        end
      end

      class To < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::InboxMessageUpdateParams::To,
              Moonbase::Internal::AnyHash
            )
          end

        # The email address.
        sig { returns(String) }
        attr_accessor :email

        # The recipient's name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(email: String, name: String).returns(T.attached_class) }
        def self.new(
          # The email address.
          email:,
          # The recipient's name.
          name: nil
        )
        end

        sig { override.returns({ email: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
