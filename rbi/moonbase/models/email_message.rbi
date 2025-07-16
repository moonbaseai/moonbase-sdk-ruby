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

      sig { returns(Moonbase::EmailMessage::Links) }
      attr_reader :links

      sig { params(links: Moonbase::EmailMessage::Links::OrHash).void }
      attr_writer :links

      # The globally unique `Message-ID` header of the email.
      sig { returns(String) }
      attr_accessor :rfc822_message_id

      # The subject line of the email.
      sig { returns(String) }
      attr_accessor :subject

      # String representing the object’s type. Always `email_message` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A list of `Address` objects associated with the message (sender and recipients).
      sig { returns(T.nilable(T::Array[Moonbase::Address])) }
      attr_reader :addresses

      sig { params(addresses: T::Array[Moonbase::Address::OrHash]).void }
      attr_writer :addresses

      # A list of `Attachment` objects on the message.
      sig { returns(T.nilable(T::Array[Moonbase::EmailMessage::Attachment])) }
      attr_reader :attachments

      sig do
        params(
          attachments: T::Array[Moonbase::EmailMessage::Attachment::OrHash]
        ).void
      end
      attr_writer :attachments

      # The HTML content of the email body.
      sig { returns(T.nilable(String)) }
      attr_reader :body_html

      sig { params(body_html: String).void }
      attr_writer :body_html

      # The plain text content of the email body.
      sig { returns(T.nilable(String)) }
      attr_reader :body_plain

      sig { params(body_plain: String).void }
      attr_writer :body_plain

      # `true` if the message appears to be part of a bulk mailing.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :bulk

      sig { params(bulk: T::Boolean).void }
      attr_writer :bulk

      # The `Conversation` thread this message is part of.
      sig { returns(T.nilable(Moonbase::InboxConversation)) }
      attr_reader :conversation

      sig { params(conversation: Moonbase::InboxConversation::OrHash).void }
      attr_writer :conversation

      # The time the message was received, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # `true` if the message is a draft that has not been sent.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :draft

      sig { params(draft: T::Boolean).void }
      attr_writer :draft

      # The `Message-ID` of the email this message is a reply to.
      sig { returns(T.nilable(String)) }
      attr_reader :in_reply_to_rfc822_message_id

      sig { params(in_reply_to_rfc822_message_id: String).void }
      attr_writer :in_reply_to_rfc822_message_id

      # `true` if the message is classified as spam.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :spam

      sig { params(spam: T::Boolean).void }
      attr_writer :spam

      # A concise, system-generated summary of the email content.
      sig { returns(T.nilable(String)) }
      attr_reader :summary

      sig { params(summary: String).void }
      attr_writer :summary

      # `true` if the message is in the trash.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :trash

      sig { params(trash: T::Boolean).void }
      attr_writer :trash

      # `true` if the message has not been read.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :unread

      sig { params(unread: T::Boolean).void }
      attr_writer :unread

      # The Email Message object represents a single email within a `Conversation`.
      sig do
        params(
          id: String,
          links: Moonbase::EmailMessage::Links::OrHash,
          rfc822_message_id: String,
          subject: String,
          addresses: T::Array[Moonbase::Address::OrHash],
          attachments: T::Array[Moonbase::EmailMessage::Attachment::OrHash],
          body_html: String,
          body_plain: String,
          bulk: T::Boolean,
          conversation: Moonbase::InboxConversation::OrHash,
          created_at: Time,
          draft: T::Boolean,
          in_reply_to_rfc822_message_id: String,
          spam: T::Boolean,
          summary: String,
          trash: T::Boolean,
          unread: T::Boolean,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        links:,
        # The globally unique `Message-ID` header of the email.
        rfc822_message_id:,
        # The subject line of the email.
        subject:,
        # A list of `Address` objects associated with the message (sender and recipients).
        addresses: nil,
        # A list of `Attachment` objects on the message.
        attachments: nil,
        # The HTML content of the email body.
        body_html: nil,
        # The plain text content of the email body.
        body_plain: nil,
        # `true` if the message appears to be part of a bulk mailing.
        bulk: nil,
        # The `Conversation` thread this message is part of.
        conversation: nil,
        # The time the message was received, as an RFC 3339 timestamp.
        created_at: nil,
        # `true` if the message is a draft that has not been sent.
        draft: nil,
        # The `Message-ID` of the email this message is a reply to.
        in_reply_to_rfc822_message_id: nil,
        # `true` if the message is classified as spam.
        spam: nil,
        # A concise, system-generated summary of the email content.
        summary: nil,
        # `true` if the message is in the trash.
        trash: nil,
        # `true` if the message has not been read.
        unread: nil,
        # String representing the object’s type. Always `email_message` for this object.
        type: :email_message
      )
      end

      sig do
        override.returns(
          {
            id: String,
            links: Moonbase::EmailMessage::Links,
            rfc822_message_id: String,
            subject: String,
            type: Symbol,
            addresses: T::Array[Moonbase::Address],
            attachments: T::Array[Moonbase::EmailMessage::Attachment],
            body_html: String,
            body_plain: String,
            bulk: T::Boolean,
            conversation: Moonbase::InboxConversation,
            created_at: Time,
            draft: T::Boolean,
            in_reply_to_rfc822_message_id: String,
            spam: T::Boolean,
            summary: String,
            trash: T::Boolean,
            unread: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::EmailMessage::Links, Moonbase::Internal::AnyHash)
          end

        # A link to the `Conversation` this message belongs to.
        sig { returns(String) }
        attr_accessor :conversation

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        sig do
          params(conversation: String, self_: String).returns(T.attached_class)
        end
        def self.new(
          # A link to the `Conversation` this message belongs to.
          conversation:,
          # The canonical URL for this object.
          self_:
        )
        end

        sig { override.returns({ conversation: String, self_: String }) }
        def to_hash
        end
      end

      class Attachment < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::EmailMessage::Attachment,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The original name of the uploaded file, including its extension.
        sig { returns(String) }
        attr_accessor :filename

        # A hash of related links.
        sig { returns(Moonbase::EmailMessage::Attachment::Links) }
        attr_reader :links

        sig do
          params(links: Moonbase::EmailMessage::Attachment::Links::OrHash).void
        end
        attr_writer :links

        # The size of the file in bytes.
        sig { returns(Integer) }
        attr_accessor :size

        # String representing the object’s type. Always `attachment` for this object.
        sig { returns(Symbol) }
        attr_accessor :type

        # Time at which the object was created, as an RFC 3339 timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Time at which the object was last updated, as an RFC 3339 timestamp.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        # The Attachment object represents a file attached to a message. You can download
        # the file content via the `download_url`.
        sig do
          params(
            id: String,
            filename: String,
            links: Moonbase::EmailMessage::Attachment::Links::OrHash,
            size: Integer,
            created_at: Time,
            updated_at: String,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # The original name of the uploaded file, including its extension.
          filename:,
          # A hash of related links.
          links:,
          # The size of the file in bytes.
          size:,
          # Time at which the object was created, as an RFC 3339 timestamp.
          created_at: nil,
          # Time at which the object was last updated, as an RFC 3339 timestamp.
          updated_at: nil,
          # String representing the object’s type. Always `attachment` for this object.
          type: :attachment
        )
        end

        sig do
          override.returns(
            {
              id: String,
              filename: String,
              links: Moonbase::EmailMessage::Attachment::Links,
              size: Integer,
              type: Symbol,
              created_at: Time,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::EmailMessage::Attachment::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # A link to the `Conversation` this attachment belongs to.
          sig { returns(String) }
          attr_accessor :conversation

          # A temporary, signed URL to download the file content. The URL expires after one
          # hour.
          sig { returns(String) }
          attr_accessor :download_url

          # A link to the `Message` this attachment belongs to.
          sig { returns(String) }
          attr_accessor :message

          # A hash of related links.
          sig do
            params(
              conversation: String,
              download_url: String,
              message: String
            ).returns(T.attached_class)
          end
          def self.new(
            # A link to the `Conversation` this attachment belongs to.
            conversation:,
            # A temporary, signed URL to download the file content. The URL expires after one
            # hour.
            download_url:,
            # A link to the `Message` this attachment belongs to.
            message:
          )
          end

          sig do
            override.returns(
              { conversation: String, download_url: String, message: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
