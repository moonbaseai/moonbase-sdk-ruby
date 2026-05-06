# typed: strong

module Moonbase
  module Models
    class ActivityItemMentioned < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ActivityItemMentioned, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig { returns(T.nilable(Moonbase::ItemPointer)) }
      attr_reader :author

      sig { params(author: T.nilable(Moonbase::ItemPointer::OrHash)).void }
      attr_writer :author

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig { returns(T.nilable(Moonbase::ItemPointer)) }
      attr_reader :item

      sig { params(item: T.nilable(Moonbase::ItemPointer::OrHash)).void }
      attr_writer :item

      # The `Note` in which the item was mentioned.
      sig { returns(T.nilable(Moonbase::NotePointer)) }
      attr_reader :note

      sig { params(note: T.nilable(Moonbase::NotePointer::OrHash)).void }
      attr_writer :note

      # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # The type of activity. Always `activity/item_mentioned`.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents an event that occurs when an `Item` is mentioned.
      sig do
        params(
          id: String,
          author: T.nilable(Moonbase::ItemPointer::OrHash),
          item: T.nilable(Moonbase::ItemPointer::OrHash),
          note: T.nilable(Moonbase::NotePointer::OrHash),
          occurred_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        author:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        item:,
        # The `Note` in which the item was mentioned.
        note:,
        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        occurred_at:,
        # The type of activity. Always `activity/item_mentioned`.
        type: :"activity/item_mentioned"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            author: T.nilable(Moonbase::ItemPointer),
            item: T.nilable(Moonbase::ItemPointer),
            note: T.nilable(Moonbase::NotePointer),
            occurred_at: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
