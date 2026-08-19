# frozen_string_literal: true

module Moonbase
  module Models
    class SlackMessage < Moonbase::Internal::Type::BaseModel
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
      #   The subject line of the message (for messages received from Slack, this is a
      #   snippet of the message; for messages sent to Slack, it can be set, but is not
      #   sent to Slack).
      #
      #   @return [String]
      required :subject, String

      # @!attribute trash
      #   `true` if the message is in the trash.
      #
      #   @return [Boolean]
      required :trash, Moonbase::Internal::Type::Boolean

      # @!attribute type
      #   String representing the object’s type. Always `slack_message` for this object.
      #
      #   @return [Symbol, :slack_message]
      required :type, const: :slack_message

      # @!attribute unread
      #   `true` if the message has not been read.
      #
      #   @return [Boolean]
      required :unread, Moonbase::Internal::Type::Boolean

      # @!attribute addresses
      #   A list of `SlackMessageAddress` objects associated with the message (sender and
      #   recipients).
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Array<Moonbase::Models::SlackMessageAddress::SlackMessageChannelAddress, Moonbase::Models::SlackMessageAddress::SlackMessageUserAddress>, nil]
      optional :addresses, -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::SlackMessageAddress] }

      # @!attribute attachments
      #   A list of `Attachment` objects on the message.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Array<Moonbase::Models::MessageAttachment>, nil]
      optional :attachments, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::MessageAttachment] }

      # @!attribute conversation
      #   The `Conversation` thread this message is part of.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::InboxConversation, nil]
      optional :conversation, -> { Moonbase::InboxConversation }

      # @!attribute summary
      #   A concise, system-generated summary of the message content.
      #
      #   @return [String, nil]
      optional :summary, String

      # @!method initialize(id:, body:, bulk:, created_at:, draft:, lock_version:, spam:, subject:, trash:, unread:, addresses: nil, attachments: nil, conversation: nil, summary: nil, type: :slack_message)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::SlackMessage} for more details.
      #
      #   The Slack Message object represents a single Slack post within a `Conversation`.
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
      #   @param subject [String] The subject line of the message (for messages received from Slack, this is a sni
      #
      #   @param trash [Boolean] `true` if the message is in the trash.
      #
      #   @param unread [Boolean] `true` if the message has not been read.
      #
      #   @param addresses [Array<Moonbase::Models::SlackMessageAddress::SlackMessageChannelAddress, Moonbase::Models::SlackMessageAddress::SlackMessageUserAddress>] A list of `SlackMessageAddress` objects associated with the message (sender and
      #
      #   @param attachments [Array<Moonbase::Models::MessageAttachment>] A list of `Attachment` objects on the message.
      #
      #   @param conversation [Moonbase::Models::InboxConversation] The `Conversation` thread this message is part of.
      #
      #   @param summary [String] A concise, system-generated summary of the message content.
      #
      #   @param type [Symbol, :slack_message] String representing the object’s type. Always `slack_message` for this object.
    end
  end
end
