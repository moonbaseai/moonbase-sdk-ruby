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
            Moonbase::InboxMessageCreateParams::Message::EmailMessageNewConversationCreateParams,
            Moonbase::InboxMessageCreateParams::Message::SlackMessageNewConversationCreateParams,
            Moonbase::InboxMessageCreateParams::Message::EmailMessageReplyCreateParams,
            Moonbase::InboxMessageCreateParams::Message::SlackMessageReplyCreateParams
          )
        )
      end
      attr_accessor :message

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
        ).returns(T.attached_class)
      end
      def self.new(
        # Parameters for creating an email message draft. Provide either the fields for a
        # new conversation, or a `conversation_id` to reply to an existing conversation.
        message:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            message:
              T.any(
                Moonbase::InboxMessageCreateParams::Message::EmailMessageNewConversationCreateParams,
                Moonbase::InboxMessageCreateParams::Message::SlackMessageNewConversationCreateParams,
                Moonbase::InboxMessageCreateParams::Message::EmailMessageReplyCreateParams,
                Moonbase::InboxMessageCreateParams::Message::SlackMessageReplyCreateParams
              ),
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Parameters for creating an email message draft. Provide either the fields for a
      # new conversation, or a `conversation_id` to reply to an existing conversation.
      module Message
        extend Moonbase::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Moonbase::InboxMessageCreateParams::Message::EmailMessageNewConversationCreateParams,
              Moonbase::InboxMessageCreateParams::Message::SlackMessageNewConversationCreateParams,
              Moonbase::InboxMessageCreateParams::Message::EmailMessageReplyCreateParams,
              Moonbase::InboxMessageCreateParams::Message::SlackMessageReplyCreateParams
            )
          end

        class EmailMessageNewConversationCreateParams < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::InboxMessageCreateParams::Message::EmailMessageNewConversationCreateParams,
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

          sig { returns(Symbol) }
          attr_accessor :type

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
              cc: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
              type: Symbol
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
            cc: nil,
            type: :email_message
          )
          end

          sig do
            override.returns(
              {
                body: Moonbase::FormattedText,
                inbox_id: String,
                subject: String,
                to: T::Array[Moonbase::EmailMessageAddressParams],
                type: Symbol,
                bcc: T::Array[Moonbase::EmailMessageAddressParams],
                cc: T::Array[Moonbase::EmailMessageAddressParams]
              }
            )
          end
          def to_hash
          end
        end

        class SlackMessageNewConversationCreateParams < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::InboxMessageCreateParams::Message::SlackMessageNewConversationCreateParams,
                Moonbase::Internal::AnyHash
              )
            end

          # The message body.
          sig { returns(Moonbase::FormattedText) }
          attr_reader :body

          sig { params(body: Moonbase::FormattedText::OrHash).void }
          attr_writer :body

          # The inbox to use for sending the Slack message.
          sig { returns(String) }
          attr_accessor :inbox_id

          # The subject line of the conversation (not included in actual Slack message).
          sig { returns(String) }
          attr_accessor :subject

          # The Slack channel to post the message in.
          sig { returns(T::Array[Moonbase::SlackMessageAddressParams]) }
          attr_accessor :to

          sig { returns(Symbol) }
          attr_accessor :type

          # Parameters for creating a draft in a new conversation.
          sig do
            params(
              body: Moonbase::FormattedText::OrHash,
              inbox_id: String,
              subject: String,
              to: T::Array[Moonbase::SlackMessageAddressParams::OrHash],
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The message body.
            body:,
            # The inbox to use for sending the Slack message.
            inbox_id:,
            # The subject line of the conversation (not included in actual Slack message).
            subject:,
            # The Slack channel to post the message in.
            to:,
            type: :slack_message
          )
          end

          sig do
            override.returns(
              {
                body: Moonbase::FormattedText,
                inbox_id: String,
                subject: String,
                to: T::Array[Moonbase::SlackMessageAddressParams],
                type: Symbol
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
                Moonbase::InboxMessageCreateParams::Message::EmailMessageReplyCreateParams,
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

          sig { returns(Symbol) }
          attr_accessor :type

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
              to: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
              type: Symbol
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
            to: nil,
            type: :email_message
          )
          end

          sig do
            override.returns(
              {
                body: Moonbase::FormattedText,
                conversation_id: String,
                inbox_id: String,
                type: Symbol,
                bcc: T::Array[Moonbase::EmailMessageAddressParams],
                cc: T::Array[Moonbase::EmailMessageAddressParams],
                to: T::Array[Moonbase::EmailMessageAddressParams]
              }
            )
          end
          def to_hash
          end
        end

        class SlackMessageReplyCreateParams < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::InboxMessageCreateParams::Message::SlackMessageReplyCreateParams,
                Moonbase::Internal::AnyHash
              )
            end

          # The message body.
          sig { returns(Moonbase::FormattedText) }
          attr_reader :body

          sig { params(body: Moonbase::FormattedText::OrHash).void }
          attr_writer :body

          # The ID of the conversation to reply to.
          sig { returns(String) }
          attr_accessor :conversation_id

          # The inbox to use for sending the Slack message.
          sig { returns(String) }
          attr_accessor :inbox_id

          sig { returns(Symbol) }
          attr_accessor :type

          # The Slack channel to post the message in.
          sig do
            returns(T.nilable(T::Array[Moonbase::SlackMessageAddressParams]))
          end
          attr_reader :to

          sig do
            params(
              to: T::Array[Moonbase::SlackMessageAddressParams::OrHash]
            ).void
          end
          attr_writer :to

          # Parameters for creating a draft reply in an existing conversation.
          sig do
            params(
              body: Moonbase::FormattedText::OrHash,
              conversation_id: String,
              inbox_id: String,
              to: T::Array[Moonbase::SlackMessageAddressParams::OrHash],
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The message body.
            body:,
            # The ID of the conversation to reply to.
            conversation_id:,
            # The inbox to use for sending the Slack message.
            inbox_id:,
            # The Slack channel to post the message in.
            to: nil,
            type: :slack_message
          )
          end

          sig do
            override.returns(
              {
                body: Moonbase::FormattedText,
                conversation_id: String,
                inbox_id: String,
                type: Symbol,
                to: T::Array[Moonbase::SlackMessageAddressParams]
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Moonbase::InboxMessageCreateParams::Message::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
