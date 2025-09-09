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

      # `true` if the conversation appears to be part of a bulk mailing.
      sig { returns(T::Boolean) }
      attr_accessor :bulk

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # `true` if a new draft reply to this conversation has been started.
      sig { returns(T::Boolean) }
      attr_accessor :draft

      # Whether the conversation is marked for follow-up.
      sig { returns(T::Boolean) }
      attr_accessor :follow_up

      # The time of the most recent activity in the conversation, as an ISO 8601
      # timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :last_message_at

      # `true` if the conversation is marked as spam.
      sig { returns(T::Boolean) }
      attr_accessor :spam

      # The current state, which can be `unassigned`, `active`, `closed`, or `waiting`.
      sig { returns(Moonbase::InboxConversation::State::TaggedSymbol) }
      attr_accessor :state

      # The subject line of the conversation.
      sig { returns(String) }
      attr_accessor :subject

      # A list of `Tag` objects applied to this conversation.
      sig { returns(T::Array[Moonbase::InboxConversation::Tag]) }
      attr_accessor :tags

      # `true` if the conversation is in the trash.
      sig { returns(T::Boolean) }
      attr_accessor :trash

      # String representing the object’s type. Always `inbox_conversation` for this
      # object.
      sig { returns(Symbol) }
      attr_accessor :type

      # `true` if the conversation contains unread messages.
      sig { returns(T::Boolean) }
      attr_accessor :unread

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The `Inbox` that this conversations belongs to.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(Moonbase::Inbox)) }
      attr_reader :inbox

      sig { params(inbox: Moonbase::Inbox::OrHash).void }
      attr_writer :inbox

      # The `EmailMessage` objects that belong to this conversation.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(T::Array[Moonbase::EmailMessage])) }
      attr_reader :messages

      sig { params(messages: T::Array[Moonbase::EmailMessage]).void }
      attr_writer :messages

      # If the conversation is snoozed, this is the time it will reappear in the inbox,
      # as an ISO 8601 timestamp in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :unsnooze_at

      sig { params(unsnooze_at: Time).void }
      attr_writer :unsnooze_at

      # The Conversation object represents a thread of related messages.
      sig do
        params(
          id: String,
          bulk: T::Boolean,
          created_at: Time,
          draft: T::Boolean,
          follow_up: T::Boolean,
          last_message_at: Time,
          spam: T::Boolean,
          state: Moonbase::InboxConversation::State::OrSymbol,
          subject: String,
          tags: T::Array[Moonbase::InboxConversation::Tag::OrHash],
          trash: T::Boolean,
          unread: T::Boolean,
          updated_at: Time,
          inbox: Moonbase::Inbox::OrHash,
          messages: T::Array[Moonbase::EmailMessage],
          unsnooze_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # `true` if the conversation appears to be part of a bulk mailing.
        bulk:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # `true` if a new draft reply to this conversation has been started.
        draft:,
        # Whether the conversation is marked for follow-up.
        follow_up:,
        # The time of the most recent activity in the conversation, as an ISO 8601
        # timestamp in UTC.
        last_message_at:,
        # `true` if the conversation is marked as spam.
        spam:,
        # The current state, which can be `unassigned`, `active`, `closed`, or `waiting`.
        state:,
        # The subject line of the conversation.
        subject:,
        # A list of `Tag` objects applied to this conversation.
        tags:,
        # `true` if the conversation is in the trash.
        trash:,
        # `true` if the conversation contains unread messages.
        unread:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # The `Inbox` that this conversations belongs to.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        inbox: nil,
        # The `EmailMessage` objects that belong to this conversation.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        messages: nil,
        # If the conversation is snoozed, this is the time it will reappear in the inbox,
        # as an ISO 8601 timestamp in UTC.
        unsnooze_at: nil,
        # String representing the object’s type. Always `inbox_conversation` for this
        # object.
        type: :inbox_conversation
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bulk: T::Boolean,
            created_at: Time,
            draft: T::Boolean,
            follow_up: T::Boolean,
            last_message_at: Time,
            spam: T::Boolean,
            state: Moonbase::InboxConversation::State::TaggedSymbol,
            subject: String,
            tags: T::Array[Moonbase::InboxConversation::Tag],
            trash: T::Boolean,
            type: Symbol,
            unread: T::Boolean,
            updated_at: Time,
            inbox: Moonbase::Inbox,
            messages: T::Array[Moonbase::EmailMessage],
            unsnooze_at: Time
          }
        )
      end
      def to_hash
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
