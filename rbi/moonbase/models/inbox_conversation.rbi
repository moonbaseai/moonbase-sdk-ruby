# typed: strong

module Moonbase
  module Models
    class InboxConversation < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::InboxConversation, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Moonbase::InboxConversation::Links) }
      attr_reader :links

      sig { params(links: Moonbase::InboxConversation::Links::OrHash).void }
      attr_writer :links

      # The current state, which can be `unassigned`, `active`, `closed`, or `waiting`.
      sig { returns(Moonbase::InboxConversation::State::TaggedSymbol) }
      attr_accessor :state

      # String representing the object’s type. Always `inbox_conversation` for this
      # object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A list of `Address` objects (participants) in this conversation.
      sig { returns(T.nilable(T::Array[Moonbase::Address])) }
      attr_reader :addresses

      sig { params(addresses: T::Array[Moonbase::Address::OrHash]).void }
      attr_writer :addresses

      # `true` if the conversation appears to be part of a bulk mailing.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :bulk

      sig { params(bulk: T::Boolean).void }
      attr_writer :bulk

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
      sig { returns(T.nilable(T::Array[Moonbase::InboxConversation::Tag])) }
      attr_reader :tags

      sig do
        params(tags: T::Array[Moonbase::InboxConversation::Tag::OrHash]).void
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
          links: Moonbase::InboxConversation::Links::OrHash,
          state: Moonbase::InboxConversation::State::OrSymbol,
          addresses: T::Array[Moonbase::Address::OrHash],
          bulk: T::Boolean,
          created_at: Time,
          follow_up: T::Boolean,
          new_draft_conversation: T::Boolean,
          spam: T::Boolean,
          subject: String,
          tags: T::Array[Moonbase::InboxConversation::Tag::OrHash],
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
        # The current state, which can be `unassigned`, `active`, `closed`, or `waiting`.
        state:,
        # A list of `Address` objects (participants) in this conversation.
        addresses: nil,
        # `true` if the conversation appears to be part of a bulk mailing.
        bulk: nil,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # Whether the conversation is marked for follow-up.
        follow_up: nil,
        # `true` if a new draft reply to this conversation has been started.
        new_draft_conversation: nil,
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
            links: Moonbase::InboxConversation::Links,
            state: Moonbase::InboxConversation::State::TaggedSymbol,
            type: Symbol,
            addresses: T::Array[Moonbase::Address],
            bulk: T::Boolean,
            created_at: Time,
            follow_up: T::Boolean,
            new_draft_conversation: T::Boolean,
            spam: T::Boolean,
            subject: String,
            tags: T::Array[Moonbase::InboxConversation::Tag],
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

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::InboxConversation::Links,
              Moonbase::Internal::AnyHash
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

      # The current state, which can be `unassigned`, `active`, `closed`, or `waiting`.
      module State
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::InboxConversation::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNASSIGNED =
          T.let(:unassigned, Moonbase::InboxConversation::State::TaggedSymbol)
        ACTIVE =
          T.let(:active, Moonbase::InboxConversation::State::TaggedSymbol)
        CLOSED =
          T.let(:closed, Moonbase::InboxConversation::State::TaggedSymbol)
        WAITING =
          T.let(:waiting, Moonbase::InboxConversation::State::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::InboxConversation::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Tag < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::InboxConversation::Tag, Moonbase::Internal::AnyHash)
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
