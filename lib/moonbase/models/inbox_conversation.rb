# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxConversations#retrieve
    class InboxConversation < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute bulk
      #   `true` if the conversation appears to be part of a bulk mailing.
      #
      #   @return [Boolean]
      required :bulk, Moonbase::Internal::Type::Boolean

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute draft
      #   `true` if a new draft reply to this conversation has been started.
      #
      #   @return [Boolean]
      required :draft, Moonbase::Internal::Type::Boolean

      # @!attribute follow_up
      #   Whether the conversation is marked for follow-up.
      #
      #   @return [Boolean]
      required :follow_up, Moonbase::Internal::Type::Boolean

      # @!attribute last_message_at
      #   The time of the most recent activity in the conversation, as an ISO 8601
      #   timestamp in UTC.
      #
      #   @return [Time]
      required :last_message_at, Time

      # @!attribute spam
      #   `true` if the conversation is marked as spam.
      #
      #   @return [Boolean]
      required :spam, Moonbase::Internal::Type::Boolean

      # @!attribute state
      #   The current state, which can be `unassigned`, `active`, `closed`, or `waiting`.
      #
      #   @return [Symbol, Moonbase::Models::InboxConversation::State]
      required :state, enum: -> { Moonbase::InboxConversation::State }

      # @!attribute subject
      #   The subject line of the conversation.
      #
      #   @return [String]
      required :subject, String

      # @!attribute tags
      #   A list of `Tag` objects applied to this conversation.
      #
      #   @return [Array<Moonbase::Models::InboxConversation::Tag>]
      required :tags, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::InboxConversation::Tag] }

      # @!attribute trash
      #   `true` if the conversation is in the trash.
      #
      #   @return [Boolean]
      required :trash, Moonbase::Internal::Type::Boolean

      # @!attribute type
      #   String representing the object’s type. Always `inbox_conversation` for this
      #   object.
      #
      #   @return [Symbol, :inbox_conversation]
      required :type, const: :inbox_conversation

      # @!attribute unread
      #   `true` if the conversation contains unread messages.
      #
      #   @return [Boolean]
      required :unread, Moonbase::Internal::Type::Boolean

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute inbox
      #   The `Inbox` that this conversations belongs to.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::Inbox, nil]
      optional :inbox, -> { Moonbase::Inbox }

      # @!attribute messages
      #   The `EmailMessage` objects that belong to this conversation.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Array<Moonbase::Models::EmailMessage>, nil]
      optional :messages, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage] }

      # @!attribute unsnooze_at
      #   If the conversation is snoozed, this is the time it will reappear in the inbox,
      #   as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time, nil]
      optional :unsnooze_at, Time

      # @!method initialize(id:, bulk:, created_at:, draft:, follow_up:, last_message_at:, spam:, state:, subject:, tags:, trash:, unread:, updated_at:, inbox: nil, messages: nil, unsnooze_at: nil, type: :inbox_conversation)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxConversation} for more details.
      #
      #   The Conversation object represents a thread of related messages.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param bulk [Boolean] `true` if the conversation appears to be part of a bulk mailing.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param draft [Boolean] `true` if a new draft reply to this conversation has been started.
      #
      #   @param follow_up [Boolean] Whether the conversation is marked for follow-up.
      #
      #   @param last_message_at [Time] The time of the most recent activity in the conversation, as an ISO 8601 timesta
      #
      #   @param spam [Boolean] `true` if the conversation is marked as spam.
      #
      #   @param state [Symbol, Moonbase::Models::InboxConversation::State] The current state, which can be `unassigned`, `active`, `closed`, or `waiting`.
      #
      #   @param subject [String] The subject line of the conversation.
      #
      #   @param tags [Array<Moonbase::Models::InboxConversation::Tag>] A list of `Tag` objects applied to this conversation.
      #
      #   @param trash [Boolean] `true` if the conversation is in the trash.
      #
      #   @param unread [Boolean] `true` if the conversation contains unread messages.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param inbox [Moonbase::Models::Inbox] The `Inbox` that this conversations belongs to.
      #
      #   @param messages [Array<Moonbase::Models::EmailMessage>] The `EmailMessage` objects that belong to this conversation.
      #
      #   @param unsnooze_at [Time] If the conversation is snoozed, this is the time it will reappear in the inbox,
      #
      #   @param type [Symbol, :inbox_conversation] String representing the object’s type. Always `inbox_conversation` for this obje

      # The current state, which can be `unassigned`, `active`, `closed`, or `waiting`.
      #
      # @see Moonbase::Models::InboxConversation#state
      module State
        extend Moonbase::Internal::Type::Enum

        UNASSIGNED = :unassigned
        ACTIVE = :active
        CLOSED = :closed
        WAITING = :waiting

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Tag < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the tag.
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #   String representing the object’s type. Always `tag` for this object.
        #
        #   @return [Symbol, :tag]
        required :type, const: :tag

        # @!method initialize(id:, name:, type: :tag)
        #   A Tag is a label that can be applied to `Conversation` objects for organization
        #   and filtering.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param name [String] The name of the tag.
        #
        #   @param type [Symbol, :tag] String representing the object’s type. Always `tag` for this object.
      end
    end
  end
end
