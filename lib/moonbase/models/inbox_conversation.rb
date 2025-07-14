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

      # @!attribute links
      #
      #   @return [Moonbase::Models::InboxConversation::Links]
      required :links, -> { Moonbase::InboxConversation::Links }

      # @!attribute type
      #   String representing the object’s type. Always `inbox_conversation` for this
      #   object.
      #
      #   @return [Symbol, :inbox_conversation]
      required :type, const: :inbox_conversation

      # @!attribute addresses
      #   A list of `Address` objects (participants) in this conversation.
      #
      #   @return [Array<Moonbase::Models::Address>, nil]
      optional :addresses, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Address] }

      # @!attribute bulk
      #   `true` if the conversation appears to be part of a bulk mailing.
      #
      #   @return [Boolean, nil]
      optional :bulk, Moonbase::Internal::Type::Boolean

      # @!attribute closed
      #   `true` if the conversation is currently closed.
      #
      #   @return [Boolean, nil]
      optional :closed, Moonbase::Internal::Type::Boolean

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute follow_up
      #   Whether the conversation is marked for follow-up.
      #
      #   @return [Boolean, nil]
      optional :follow_up, Moonbase::Internal::Type::Boolean

      # @!attribute new_draft_conversation
      #   `true` if a new draft reply to this conversation has been started.
      #
      #   @return [Boolean, nil]
      optional :new_draft_conversation, Moonbase::Internal::Type::Boolean

      # @!attribute open_
      #   `true` if the conversation is currently open.
      #
      #   @return [Boolean, nil]
      optional :open_, Moonbase::Internal::Type::Boolean, api_name: :open

      # @!attribute spam
      #   `true` if the conversation is marked as spam.
      #
      #   @return [Boolean, nil]
      optional :spam, Moonbase::Internal::Type::Boolean

      # @!attribute subject
      #   The subject line of the conversation.
      #
      #   @return [String, nil]
      optional :subject, String

      # @!attribute tags
      #   A list of `Tag` objects applied to this conversation.
      #
      #   @return [Array<Moonbase::Models::InboxConversation::Tag>, nil]
      optional :tags, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::InboxConversation::Tag] }

      # @!attribute timestamp
      #   The time of the most recent activity in the conversation, as an RFC 3339
      #   timestamp.
      #
      #   @return [String, nil]
      optional :timestamp, String

      # @!attribute trash
      #   `true` if the conversation is in the trash.
      #
      #   @return [Boolean, nil]
      optional :trash, Moonbase::Internal::Type::Boolean

      # @!attribute unread
      #   `true` if the conversation contains unread messages.
      #
      #   @return [Boolean, nil]
      optional :unread, Moonbase::Internal::Type::Boolean

      # @!attribute unsnooze_at
      #   If the conversation is snoozed, this is the time it will reappear in the inbox,
      #   as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :unsnooze_at, Time

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, links:, addresses: nil, bulk: nil, closed: nil, created_at: nil, follow_up: nil, new_draft_conversation: nil, open_: nil, spam: nil, subject: nil, tags: nil, timestamp: nil, trash: nil, unread: nil, unsnooze_at: nil, updated_at: nil, type: :inbox_conversation)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxConversation} for more details.
      #
      #   The Conversation object represents a thread of related messages.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param links [Moonbase::Models::InboxConversation::Links]
      #
      #   @param addresses [Array<Moonbase::Models::Address>] A list of `Address` objects (participants) in this conversation.
      #
      #   @param bulk [Boolean] `true` if the conversation appears to be part of a bulk mailing.
      #
      #   @param closed [Boolean] `true` if the conversation is currently closed.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param follow_up [Boolean] Whether the conversation is marked for follow-up.
      #
      #   @param new_draft_conversation [Boolean] `true` if a new draft reply to this conversation has been started.
      #
      #   @param open_ [Boolean] `true` if the conversation is currently open.
      #
      #   @param spam [Boolean] `true` if the conversation is marked as spam.
      #
      #   @param subject [String] The subject line of the conversation.
      #
      #   @param tags [Array<Moonbase::Models::InboxConversation::Tag>] A list of `Tag` objects applied to this conversation.
      #
      #   @param timestamp [String] The time of the most recent activity in the conversation, as an RFC 3339 timesta
      #
      #   @param trash [Boolean] `true` if the conversation is in the trash.
      #
      #   @param unread [Boolean] `true` if the conversation contains unread messages.
      #
      #   @param unsnooze_at [Time] If the conversation is snoozed, this is the time it will reappear in the inbox,
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :inbox_conversation] String representing the object’s type. Always `inbox_conversation` for this obje

      # @see Moonbase::Models::InboxConversation#links
      class Links < Moonbase::Internal::Type::BaseModel
        # @!attribute inbox
        #   A link to the `Inbox` this conversation belongs to.
        #
        #   @return [String]
        required :inbox, String

        # @!attribute messages
        #   A link to the list of `Message` objects in this conversation.
        #
        #   @return [String]
        required :messages, String

        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!method initialize(inbox:, messages:, self_:)
        #   @param inbox [String] A link to the `Inbox` this conversation belongs to.
        #
        #   @param messages [String] A link to the list of `Message` objects in this conversation.
        #
        #   @param self_ [String] The canonical URL for this object.
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
