# typed: strong

module MoonbaseSDK
  module Models
    class InboxConversation < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::InboxConversation, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(MoonbaseSDK::InboxConversation::Links) }
      attr_reader :links

      sig { params(links: MoonbaseSDK::InboxConversation::Links::OrHash).void }
      attr_writer :links

      # String representing the object’s type. Always `inbox_conversation` for this
      # object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A list of `Address` objects (participants) in this conversation.
      sig { returns(T.nilable(T::Array[MoonbaseSDK::Address])) }
      attr_reader :addresses

      sig { params(addresses: T::Array[MoonbaseSDK::Address::OrHash]).void }
      attr_writer :addresses

      # `true` if the conversation appears to be part of a bulk mailing.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :bulk

      sig { params(bulk: T::Boolean).void }
      attr_writer :bulk

      # `true` if the conversation is currently closed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :closed

      sig { params(closed: T::Boolean).void }
      attr_writer :closed

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Whether the conversation is marked for follow-up.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :follow_up

      sig { params(follow_up: T::Boolean).void }
      attr_writer :follow_up

      # `true` if a new draft reply to this conversation has been started.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :new_draft_conversation

      sig { params(new_draft_conversation: T::Boolean).void }
      attr_writer :new_draft_conversation

      # `true` if the conversation is currently open.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :open_

      sig { params(open_: T::Boolean).void }
      attr_writer :open_

      # `true` if the conversation is marked as spam.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :spam

      sig { params(spam: T::Boolean).void }
      attr_writer :spam

      # The subject line of the conversation.
      sig { returns(T.nilable(String)) }
      attr_reader :subject

      sig { params(subject: String).void }
      attr_writer :subject

      # A list of `Tag` objects applied to this conversation.
      sig { returns(T.nilable(T::Array[MoonbaseSDK::InboxConversation::Tag])) }
      attr_reader :tags

      sig do
        params(tags: T::Array[MoonbaseSDK::InboxConversation::Tag::OrHash]).void
      end
      attr_writer :tags

      # The time of the most recent activity in the conversation, as an RFC 3339
      # timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :timestamp

      sig { params(timestamp: String).void }
      attr_writer :timestamp

      # `true` if the conversation is in the trash.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :trash

      sig { params(trash: T::Boolean).void }
      attr_writer :trash

      # `true` if the conversation contains unread messages.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :unread

      sig { params(unread: T::Boolean).void }
      attr_writer :unread

      # If the conversation is snoozed, this is the time it will reappear in the inbox,
      # as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :unsnooze_at

      sig { params(unsnooze_at: Time).void }
      attr_writer :unsnooze_at

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The Conversation object represents a thread of related messages.
      sig do
        params(
          id: String,
          links: MoonbaseSDK::InboxConversation::Links::OrHash,
          addresses: T::Array[MoonbaseSDK::Address::OrHash],
          bulk: T::Boolean,
          closed: T::Boolean,
          created_at: Time,
          follow_up: T::Boolean,
          new_draft_conversation: T::Boolean,
          open_: T::Boolean,
          spam: T::Boolean,
          subject: String,
          tags: T::Array[MoonbaseSDK::InboxConversation::Tag::OrHash],
          timestamp: String,
          trash: T::Boolean,
          unread: T::Boolean,
          unsnooze_at: Time,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        links:,
        # A list of `Address` objects (participants) in this conversation.
        addresses: nil,
        # `true` if the conversation appears to be part of a bulk mailing.
        bulk: nil,
        # `true` if the conversation is currently closed.
        closed: nil,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # Whether the conversation is marked for follow-up.
        follow_up: nil,
        # `true` if a new draft reply to this conversation has been started.
        new_draft_conversation: nil,
        # `true` if the conversation is currently open.
        open_: nil,
        # `true` if the conversation is marked as spam.
        spam: nil,
        # The subject line of the conversation.
        subject: nil,
        # A list of `Tag` objects applied to this conversation.
        tags: nil,
        # The time of the most recent activity in the conversation, as an RFC 3339
        # timestamp.
        timestamp: nil,
        # `true` if the conversation is in the trash.
        trash: nil,
        # `true` if the conversation contains unread messages.
        unread: nil,
        # If the conversation is snoozed, this is the time it will reappear in the inbox,
        # as an RFC 3339 timestamp.
        unsnooze_at: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `inbox_conversation` for this
        # object.
        type: :inbox_conversation
      )
      end

      sig do
        override.returns(
          {
            id: String,
            links: MoonbaseSDK::InboxConversation::Links,
            type: Symbol,
            addresses: T::Array[MoonbaseSDK::Address],
            bulk: T::Boolean,
            closed: T::Boolean,
            created_at: Time,
            follow_up: T::Boolean,
            new_draft_conversation: T::Boolean,
            open_: T::Boolean,
            spam: T::Boolean,
            subject: String,
            tags: T::Array[MoonbaseSDK::InboxConversation::Tag],
            timestamp: String,
            trash: T::Boolean,
            unread: T::Boolean,
            unsnooze_at: Time,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::InboxConversation::Links,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # A link to the `Inbox` this conversation belongs to.
        sig { returns(String) }
        attr_accessor :inbox

        # A link to the list of `Message` objects in this conversation.
        sig { returns(String) }
        attr_accessor :messages

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        sig do
          params(inbox: String, messages: String, self_: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # A link to the `Inbox` this conversation belongs to.
          inbox:,
          # A link to the list of `Message` objects in this conversation.
          messages:,
          # The canonical URL for this object.
          self_:
        )
        end

        sig do
          override.returns({ inbox: String, messages: String, self_: String })
        end
        def to_hash
        end
      end

      class Tag < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::InboxConversation::Tag,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The name of the tag.
        sig { returns(String) }
        attr_accessor :name

        # String representing the object’s type. Always `tag` for this object.
        sig { returns(Symbol) }
        attr_accessor :type

        # A Tag is a label that can be applied to `Conversation` objects for organization
        # and filtering.
        sig do
          params(id: String, name: String, type: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # The name of the tag.
          name:,
          # String representing the object’s type. Always `tag` for this object.
          type: :tag
        )
        end

        sig { override.returns({ id: String, name: String, type: Symbol }) }
        def to_hash
        end
      end
    end
  end
end
