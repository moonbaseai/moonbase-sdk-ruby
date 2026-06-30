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

      # Parameters for updating a draft message in an existing conversation.
      sig do
        returns(
          T.any(
            Moonbase::InboxMessageUpdateParams::Message::EmailMessageUpdateParams,
            Moonbase::InboxMessageUpdateParams::Message::SlackMessageUpdateParams
          )
        )
      end
      attr_accessor :message

      sig do
        params(
          id: String,
          message:
            T.any(
              Moonbase::InboxMessageUpdateParams::Message::EmailMessageUpdateParams::OrHash,
              Moonbase::InboxMessageUpdateParams::Message::SlackMessageUpdateParams::OrHash
            ),
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Parameters for updating a draft message in an existing conversation.
        message:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            message:
              T.any(
                Moonbase::InboxMessageUpdateParams::Message::EmailMessageUpdateParams,
                Moonbase::InboxMessageUpdateParams::Message::SlackMessageUpdateParams
              ),
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Parameters for updating a draft message in an existing conversation.
      module Message
        extend Moonbase::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Moonbase::InboxMessageUpdateParams::Message::EmailMessageUpdateParams,
              Moonbase::InboxMessageUpdateParams::Message::SlackMessageUpdateParams
            )
          end

        class EmailMessageUpdateParams < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::InboxMessageUpdateParams::Message::EmailMessageUpdateParams,
                Moonbase::Internal::AnyHash
              )
            end

          # The current lock version of the draft for optimistic concurrency control.
          sig { returns(Integer) }
          attr_accessor :lock_version

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

          # The email body.
          sig { returns(T.nilable(Moonbase::FormattedText)) }
          attr_reader :body

          sig { params(body: Moonbase::FormattedText::OrHash).void }
          attr_writer :body

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

          # The subject line of the email.
          sig { returns(T.nilable(String)) }
          attr_reader :subject

          sig { params(subject: String).void }
          attr_writer :subject

          # A list of the recipients.
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

          # Parameters for updating a draft message in an existing conversation.
          sig do
            params(
              lock_version: Integer,
              bcc: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
              body: Moonbase::FormattedText::OrHash,
              cc: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
              subject: String,
              to: T::Array[Moonbase::EmailMessageAddressParams::OrHash],
              type: Symbol
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
            type: :email_message
          )
          end

          sig do
            override.returns(
              {
                lock_version: Integer,
                type: Symbol,
                bcc: T::Array[Moonbase::EmailMessageAddressParams],
                body: Moonbase::FormattedText,
                cc: T::Array[Moonbase::EmailMessageAddressParams],
                subject: String,
                to: T::Array[Moonbase::EmailMessageAddressParams]
              }
            )
          end
          def to_hash
          end
        end

        class SlackMessageUpdateParams < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::InboxMessageUpdateParams::Message::SlackMessageUpdateParams,
                Moonbase::Internal::AnyHash
              )
            end

          # The current lock version of the draft for optimistic concurrency control.
          sig { returns(Integer) }
          attr_accessor :lock_version

          sig { returns(Symbol) }
          attr_accessor :type

          # The message body.
          sig { returns(T.nilable(Moonbase::FormattedText)) }
          attr_reader :body

          sig { params(body: Moonbase::FormattedText::OrHash).void }
          attr_writer :body

          # The subject line of the conversation (not included in actual Slack message).
          sig { returns(T.nilable(String)) }
          attr_reader :subject

          sig { params(subject: String).void }
          attr_writer :subject

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

          # Parameters for updating a draft message in an existing conversation.
          sig do
            params(
              lock_version: Integer,
              body: Moonbase::FormattedText::OrHash,
              subject: String,
              to: T::Array[Moonbase::SlackMessageAddressParams::OrHash],
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The current lock version of the draft for optimistic concurrency control.
            lock_version:,
            # The message body.
            body: nil,
            # The subject line of the conversation (not included in actual Slack message).
            subject: nil,
            # The Slack channel to post the message in.
            to: nil,
            type: :slack_message
          )
          end

          sig do
            override.returns(
              {
                lock_version: Integer,
                type: Symbol,
                body: Moonbase::FormattedText,
                subject: String,
                to: T::Array[Moonbase::SlackMessageAddressParams]
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Moonbase::InboxMessageUpdateParams::Message::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
