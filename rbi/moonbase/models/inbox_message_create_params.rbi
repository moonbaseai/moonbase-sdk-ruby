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

      # The content of the email body in Markdown format.
      sig { returns(String) }
      attr_accessor :body

      # The inbox to use for sending the email.
      sig { returns(String) }
      attr_accessor :inbox_id

      # A list of `Address` objects for the BCC recipients.
      sig do
        returns(T.nilable(T::Array[Moonbase::InboxMessageCreateParams::Bcc]))
      end
      attr_reader :bcc

      sig do
        params(
          bcc: T::Array[Moonbase::InboxMessageCreateParams::Bcc::OrHash]
        ).void
      end
      attr_writer :bcc

      # A list of `Address` objects for the CC recipients.
      sig do
        returns(T.nilable(T::Array[Moonbase::InboxMessageCreateParams::Cc]))
      end
      attr_reader :cc

      sig do
        params(
          cc: T::Array[Moonbase::InboxMessageCreateParams::Cc::OrHash]
        ).void
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

      # A list of `Address` objects for the recipients.
      sig do
        returns(T.nilable(T::Array[Moonbase::InboxMessageCreateParams::To]))
      end
      attr_reader :to

      sig do
        params(
          to: T::Array[Moonbase::InboxMessageCreateParams::To::OrHash]
        ).void
      end
      attr_writer :to

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            body: String,
            inbox_id: String,
            bcc: T::Array[Moonbase::InboxMessageCreateParams::Bcc],
            cc: T::Array[Moonbase::InboxMessageCreateParams::Cc],
            conversation_id: String,
            subject: String,
            to: T::Array[Moonbase::InboxMessageCreateParams::To],
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
              Moonbase::InboxMessageCreateParams::Bcc,
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
              Moonbase::InboxMessageCreateParams::Cc,
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
              Moonbase::InboxMessageCreateParams::To,
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
