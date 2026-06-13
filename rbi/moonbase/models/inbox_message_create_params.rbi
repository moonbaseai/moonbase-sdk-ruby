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

      # Parameters for creating an email message draft. Provide either the fields for a
      # new conversation, or a `conversation_id` to reply to an existing conversation.
      sig do
        returns(
          T.any(
            Moonbase::InboxMessageCreateParams::Body::EmailMessageNewConversationCreateParams,
            Moonbase::InboxMessageCreateParams::Body::EmailMessageReplyCreateParams
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          body:
            T.any(
              Moonbase::InboxMessageCreateParams::Body::EmailMessageNewConversationCreateParams::OrHash,
              Moonbase::InboxMessageCreateParams::Body::EmailMessageReplyCreateParams::OrHash
            ),
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Parameters for creating an email message draft. Provide either the fields for a
        # new conversation, or a `conversation_id` to reply to an existing conversation.
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body:
              T.any(
                Moonbase::InboxMessageCreateParams::Body::EmailMessageNewConversationCreateParams,
                Moonbase::InboxMessageCreateParams::Body::EmailMessageReplyCreateParams
              ),
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Parameters for creating an email message draft. Provide either the fields for a
      # new conversation, or a `conversation_id` to reply to an existing conversation.
      module Body
        extend Moonbase::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Moonbase::InboxMessageCreateParams::Body::EmailMessageNewConversationCreateParams,
              Moonbase::InboxMessageCreateParams::Body::EmailMessageReplyCreateParams
            )
          end

        class EmailMessageNewConversationCreateParams < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::InboxMessageCreateParams::Body::EmailMessageNewConversationCreateParams,
                Moonbase::Internal::AnyHash
              )
            end

          # The email body.
          sig { returns(Moonbase::FormattedText) }
          attr_reader :body

          sig { params(body: Moonbase::FormattedText::OrHash).void }
          attr_writer :body

          # The inbox to use for sending the email.
          sig { returns(String) }
          attr_accessor :inbox_id

          # The subject line of the email.
          sig { returns(String) }
          attr_accessor :subject

          # A list of recipients.
          sig { returns(T::Array[Moonbase::EmailMessageAddressParams]) }
          attr_accessor :to

          # A list of the BCC recipients.
          sig do
            returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams]))
          end
          attr_reader :bcc

          sig do
            params(
              bcc: T::Array[Moonbase::EmailMessageAddressParams::OrHash]
            ).void
          end
          attr_writer :bcc

          # A list of the CC recipients.
          sig do
            returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams]))
          end
          attr_reader :cc

          sig do
            params(
              cc: T::Array[Moonbase::EmailMessageAddressParams::OrHash]
            ).void
          end
          attr_writer :cc

          # Parameters for creating a draft in a new conversation.
          sig do
            params(
              body: Moonbase::FormattedText::OrHash,
              inbox_id: String,
              subject: String,
              to: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
              bcc: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
              cc: T::Array[Moonbase::EmailMessageAddressParams::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # The email body.
            body:,
            # The inbox to use for sending the email.
            inbox_id:,
            # The subject line of the email.
            subject:,
            # A list of recipients.
            to:,
            # A list of the BCC recipients.
            bcc: nil,
            # A list of the CC recipients.
            cc: nil
          )
          end

          sig do
            override.returns(
              {
                body: Moonbase::FormattedText,
                inbox_id: String,
                subject: String,
                to: T::Array[Moonbase::EmailMessageAddressParams],
                bcc: T::Array[Moonbase::EmailMessageAddressParams],
                cc: T::Array[Moonbase::EmailMessageAddressParams]
              }
            )
          end
          def to_hash
          end
        end

        class EmailMessageReplyCreateParams < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::InboxMessageCreateParams::Body::EmailMessageReplyCreateParams,
                Moonbase::Internal::AnyHash
              )
            end

          # The email body.
          sig { returns(Moonbase::FormattedText) }
          attr_reader :body

          sig { params(body: Moonbase::FormattedText::OrHash).void }
          attr_writer :body

          # The ID of the conversation to reply to.
          sig { returns(String) }
          attr_accessor :conversation_id

          # The inbox to use for sending the email.
          sig { returns(String) }
          attr_accessor :inbox_id

          # A list of the BCC recipients.
          sig do
            returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams]))
          end
          attr_reader :bcc

          sig do
            params(
              bcc: T::Array[Moonbase::EmailMessageAddressParams::OrHash]
            ).void
          end
          attr_writer :bcc

          # A list of the CC recipients.
          sig do
            returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams]))
          end
          attr_reader :cc

          sig do
            params(
              cc: T::Array[Moonbase::EmailMessageAddressParams::OrHash]
            ).void
          end
          attr_writer :cc

          # A list of recipients. If omitted, recipients are derived from the conversation.
          sig do
            returns(T.nilable(T::Array[Moonbase::EmailMessageAddressParams]))
          end
          attr_reader :to

          sig do
            params(
              to: T::Array[Moonbase::EmailMessageAddressParams::OrHash]
            ).void
          end
          attr_writer :to

          # Parameters for creating a draft reply in an existing conversation.
          sig do
            params(
              body: Moonbase::FormattedText::OrHash,
              conversation_id: String,
              inbox_id: String,
              bcc: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
              cc: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
              to: T::Array[Moonbase::EmailMessageAddressParams::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # The email body.
            body:,
            # The ID of the conversation to reply to.
            conversation_id:,
            # The inbox to use for sending the email.
            inbox_id:,
            # A list of the BCC recipients.
            bcc: nil,
            # A list of the CC recipients.
            cc: nil,
            # A list of recipients. If omitted, recipients are derived from the conversation.
            to: nil
          )
          end

          sig do
            override.returns(
              {
                body: Moonbase::FormattedText,
                conversation_id: String,
                inbox_id: String,
                bcc: T::Array[Moonbase::EmailMessageAddressParams],
                cc: T::Array[Moonbase::EmailMessageAddressParams],
                to: T::Array[Moonbase::EmailMessageAddressParams]
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Moonbase::InboxMessageCreateParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
