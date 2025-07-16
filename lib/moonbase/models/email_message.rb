# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxMessages#retrieve
    class EmailMessage < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute links
      #
      #   @return [Moonbase::Models::EmailMessage::Links]
      required :links, -> { Moonbase::EmailMessage::Links }

      # @!attribute rfc822_message_id
      #   The globally unique `Message-ID` header of the email.
      #
      #   @return [String]
      required :rfc822_message_id, String

      # @!attribute subject
      #   The subject line of the email.
      #
      #   @return [String]
      required :subject, String

      # @!attribute type
      #   String representing the object’s type. Always `email_message` for this object.
      #
      #   @return [Symbol, :email_message]
      required :type, const: :email_message

      # @!attribute addresses
      #   A list of `Address` objects associated with the message (sender and recipients).
      #
      #   @return [Array<Moonbase::Models::Address>, nil]
      optional :addresses, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Address] }

      # @!attribute attachments
      #   A list of `Attachment` objects on the message.
      #
      #   @return [Array<Moonbase::Models::EmailMessage::Attachment>, nil]
      optional :attachments, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage::Attachment] }

      # @!attribute body_html
      #   The HTML content of the email body.
      #
      #   @return [String, nil]
      optional :body_html, String

      # @!attribute body_plain
      #   The plain text content of the email body.
      #
      #   @return [String, nil]
      optional :body_plain, String

      # @!attribute bulk
      #   `true` if the message appears to be part of a bulk mailing.
      #
      #   @return [Boolean, nil]
      optional :bulk, Moonbase::Internal::Type::Boolean

      # @!attribute conversation
      #   The `Conversation` thread this message is part of.
      #
      #   @return [Moonbase::Models::InboxConversation, nil]
      optional :conversation, -> { Moonbase::InboxConversation }

      # @!attribute created_at
      #   The time the message was received, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute draft
      #   `true` if the message is a draft that has not been sent.
      #
      #   @return [Boolean, nil]
      optional :draft, Moonbase::Internal::Type::Boolean

      # @!attribute in_reply_to_rfc822_message_id
      #   The `Message-ID` of the email this message is a reply to.
      #
      #   @return [String, nil]
      optional :in_reply_to_rfc822_message_id, String

      # @!attribute spam
      #   `true` if the message is classified as spam.
      #
      #   @return [Boolean, nil]
      optional :spam, Moonbase::Internal::Type::Boolean

      # @!attribute summary
      #   A concise, system-generated summary of the email content.
      #
      #   @return [String, nil]
      optional :summary, String

      # @!attribute trash
      #   `true` if the message is in the trash.
      #
      #   @return [Boolean, nil]
      optional :trash, Moonbase::Internal::Type::Boolean

      # @!attribute unread
      #   `true` if the message has not been read.
      #
      #   @return [Boolean, nil]
      optional :unread, Moonbase::Internal::Type::Boolean

      # @!method initialize(id:, links:, rfc822_message_id:, subject:, addresses: nil, attachments: nil, body_html: nil, body_plain: nil, bulk: nil, conversation: nil, created_at: nil, draft: nil, in_reply_to_rfc822_message_id: nil, spam: nil, summary: nil, trash: nil, unread: nil, type: :email_message)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::EmailMessage} for more details.
      #
      #   The Email Message object represents a single email within a `Conversation`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param links [Moonbase::Models::EmailMessage::Links]
      #
      #   @param rfc822_message_id [String] The globally unique `Message-ID` header of the email.
      #
      #   @param subject [String] The subject line of the email.
      #
      #   @param addresses [Array<Moonbase::Models::Address>] A list of `Address` objects associated with the message (sender and recipients).
      #
      #   @param attachments [Array<Moonbase::Models::EmailMessage::Attachment>] A list of `Attachment` objects on the message.
      #
      #   @param body_html [String] The HTML content of the email body.
      #
      #   @param body_plain [String] The plain text content of the email body.
      #
      #   @param bulk [Boolean] `true` if the message appears to be part of a bulk mailing.
      #
      #   @param conversation [Moonbase::Models::InboxConversation] The `Conversation` thread this message is part of.
      #
      #   @param created_at [Time] The time the message was received, as an RFC 3339 timestamp.
      #
      #   @param draft [Boolean] `true` if the message is a draft that has not been sent.
      #
      #   @param in_reply_to_rfc822_message_id [String] The `Message-ID` of the email this message is a reply to.
      #
      #   @param spam [Boolean] `true` if the message is classified as spam.
      #
      #   @param summary [String] A concise, system-generated summary of the email content.
      #
      #   @param trash [Boolean] `true` if the message is in the trash.
      #
      #   @param unread [Boolean] `true` if the message has not been read.
      #
      #   @param type [Symbol, :email_message] String representing the object’s type. Always `email_message` for this object.

      # @see Moonbase::Models::EmailMessage#links
      class Links < Moonbase::Internal::Type::BaseModel
        # @!attribute conversation
        #   A link to the `Conversation` this message belongs to.
        #
        #   @return [String]
        required :conversation, String

        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!method initialize(conversation:, self_:)
        #   @param conversation [String] A link to the `Conversation` this message belongs to.
        #
        #   @param self_ [String] The canonical URL for this object.
      end

      class Attachment < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute filename
        #   The original name of the uploaded file, including its extension.
        #
        #   @return [String]
        required :filename, String

        # @!attribute links
        #   A hash of related links.
        #
        #   @return [Moonbase::Models::EmailMessage::Attachment::Links]
        required :links, -> { Moonbase::EmailMessage::Attachment::Links }

        # @!attribute size
        #   The size of the file in bytes.
        #
        #   @return [Integer]
        required :size, Integer

        # @!attribute type
        #   String representing the object’s type. Always `attachment` for this object.
        #
        #   @return [Symbol, :attachment]
        required :type, const: :attachment

        # @!attribute created_at
        #   Time at which the object was created, as an RFC 3339 timestamp.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute updated_at
        #   Time at which the object was last updated, as an RFC 3339 timestamp.
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!method initialize(id:, filename:, links:, size:, created_at: nil, updated_at: nil, type: :attachment)
        #   The Attachment object represents a file attached to a message. You can download
        #   the file content via the `download_url`.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param filename [String] The original name of the uploaded file, including its extension.
        #
        #   @param links [Moonbase::Models::EmailMessage::Attachment::Links] A hash of related links.
        #
        #   @param size [Integer] The size of the file in bytes.
        #
        #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
        #
        #   @param updated_at [String] Time at which the object was last updated, as an RFC 3339 timestamp.
        #
        #   @param type [Symbol, :attachment] String representing the object’s type. Always `attachment` for this object.

        # @see Moonbase::Models::EmailMessage::Attachment#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute conversation
          #   A link to the `Conversation` this attachment belongs to.
          #
          #   @return [String]
          required :conversation, String

          # @!attribute download_url
          #   A temporary, signed URL to download the file content. The URL expires after one
          #   hour.
          #
          #   @return [String]
          required :download_url, String

          # @!attribute message
          #   A link to the `Message` this attachment belongs to.
          #
          #   @return [String]
          required :message, String

          # @!method initialize(conversation:, download_url:, message:)
          #   Some parameter documentations has been truncated, see
          #   {Moonbase::Models::EmailMessage::Attachment::Links} for more details.
          #
          #   A hash of related links.
          #
          #   @param conversation [String] A link to the `Conversation` this attachment belongs to.
          #
          #   @param download_url [String] A temporary, signed URL to download the file content. The URL expires after one
          #
          #   @param message [String] A link to the `Message` this attachment belongs to.
        end
      end
    end
  end
end
