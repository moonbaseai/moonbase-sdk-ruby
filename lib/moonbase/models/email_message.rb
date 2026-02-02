# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxMessages#create
    class EmailMessage < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute body
      #   Structured content that can be rendered in multiple formats, currently
      #   supporting Markdown.
      #
      #   @return [Moonbase::Models::FormattedText]
      required :body, -> { Moonbase::FormattedText }

      # @!attribute bulk
      #   `true` if the message appears to be part of a bulk mailing.
      #
      #   @return [Boolean]
      required :bulk, Moonbase::Internal::Type::Boolean

      # @!attribute created_at
      #   The time the message was received, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute draft
      #   `true` if the message is a draft that has not been sent.
      #
      #   @return [Boolean]
      required :draft, Moonbase::Internal::Type::Boolean

      # @!attribute lock_version
      #   The current lock version of the message for optimistic concurrency control.
      #
      #   @return [Integer]
      required :lock_version, Integer

      # @!attribute spam
      #   `true` if the message is classified as spam.
      #
      #   @return [Boolean]
      required :spam, Moonbase::Internal::Type::Boolean

      # @!attribute subject
      #   The subject line of the email.
      #
      #   @return [String]
      required :subject, String

      # @!attribute trash
      #   `true` if the message is in the trash.
      #
      #   @return [Boolean]
      required :trash, Moonbase::Internal::Type::Boolean

      # @!attribute type
      #   String representing the object’s type. Always `email_message` for this object.
      #
      #   @return [Symbol, :email_message]
      required :type, const: :email_message

      # @!attribute unread
      #   `true` if the message has not been read.
      #
      #   @return [Boolean]
      required :unread, Moonbase::Internal::Type::Boolean

      # @!attribute addresses
      #   A list of `Address` objects associated with the message (sender and recipients).
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Array<Moonbase::Models::Address>, nil]
      optional :addresses, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Address] }

      # @!attribute attachments
      #   A list of `Attachment` objects on the message.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Array<Moonbase::Models::EmailMessage::Attachment>, nil]
      optional :attachments, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage::Attachment] }

      # @!attribute conversation
      #   The `Conversation` thread this message is part of.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::InboxConversation, nil]
      optional :conversation, -> { Moonbase::InboxConversation }

      # @!attribute summary
      #   A concise, system-generated summary of the email content.
      #
      #   @return [String, nil]
      optional :summary, String

      # @!method initialize(id:, body:, bulk:, created_at:, draft:, lock_version:, spam:, subject:, trash:, unread:, addresses: nil, attachments: nil, conversation: nil, summary: nil, type: :email_message)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::EmailMessage} for more details.
      #
      #   The Email Message object represents a single email within a `Conversation`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param body [Moonbase::Models::FormattedText] Structured content that can be rendered in multiple formats, currently supportin
      #
      #   @param bulk [Boolean] `true` if the message appears to be part of a bulk mailing.
      #
      #   @param created_at [Time] The time the message was received, as an ISO 8601 timestamp in UTC.
      #
      #   @param draft [Boolean] `true` if the message is a draft that has not been sent.
      #
      #   @param lock_version [Integer] The current lock version of the message for optimistic concurrency control.
      #
      #   @param spam [Boolean] `true` if the message is classified as spam.
      #
      #   @param subject [String] The subject line of the email.
      #
      #   @param trash [Boolean] `true` if the message is in the trash.
      #
      #   @param unread [Boolean] `true` if the message has not been read.
      #
      #   @param addresses [Array<Moonbase::Models::Address>] A list of `Address` objects associated with the message (sender and recipients).
      #
      #   @param attachments [Array<Moonbase::Models::EmailMessage::Attachment>] A list of `Attachment` objects on the message.
      #
      #   @param conversation [Moonbase::Models::InboxConversation] The `Conversation` thread this message is part of.
      #
      #   @param summary [String] A concise, system-generated summary of the email content.
      #
      #   @param type [Symbol, :email_message] String representing the object’s type. Always `email_message` for this object.

      class Attachment < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute download_url
        #   A temporary, signed URL to download the file content. The URL expires after one
        #   hour.
        #
        #   @return [String]
        required :download_url, String

        # @!attribute filename
        #   The original name of the uploaded file, including its extension.
        #
        #   @return [String]
        required :filename, String

        # @!attribute size
        #   The size of the file in bytes.
        #
        #   @return [Integer]
        required :size, Integer

        # @!attribute type
        #   String representing the object’s type. Always `message_attachment` for this
        #   object.
        #
        #   @return [Symbol, :message_attachment]
        required :type, const: :message_attachment

        # @!method initialize(id:, created_at:, download_url:, filename:, size:, type: :message_attachment)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::EmailMessage::Attachment} for more details.
        #
        #   The Attachment object represents a file attached to a message. You can download
        #   the file content via the `download_url`.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
        #
        #   @param download_url [String] A temporary, signed URL to download the file content. The URL expires after one
        #
        #   @param filename [String] The original name of the uploaded file, including its extension.
        #
        #   @param size [Integer] The size of the file in bytes.
        #
        #   @param type [Symbol, :message_attachment] String representing the object’s type. Always `message_attachment` for this obje
      end
    end
  end
end
