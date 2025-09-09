# typed: strong

module Moonbase
  module Models
    class ActivityNoteCreated < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ActivityNoteCreated, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # A lightweight reference to another resource.
      sig { returns(T.nilable(Moonbase::Pointer)) }
      attr_reader :note

      sig { params(note: T.nilable(Moonbase::Pointer::OrHash)).void }
      attr_writer :note

      # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig { returns(T.nilable(Moonbase::ItemPointer)) }
      attr_reader :related_item

      sig do
        params(related_item: T.nilable(Moonbase::ItemPointer::OrHash)).void
      end
      attr_writer :related_item

      # A lightweight reference to another resource.
      sig { returns(T.nilable(Moonbase::Pointer)) }
      attr_reader :related_meeting

      sig { params(related_meeting: T.nilable(Moonbase::Pointer::OrHash)).void }
      attr_writer :related_meeting

      # The type of activity. Always `activity/note_created`.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents an event that occurs when a `Note` is created.
      sig do
        params(
          id: String,
          note: T.nilable(Moonbase::Pointer::OrHash),
          occurred_at: Time,
          related_item: T.nilable(Moonbase::ItemPointer::OrHash),
          related_meeting: T.nilable(Moonbase::Pointer::OrHash),
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # A lightweight reference to another resource.
        note:,
        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        occurred_at:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        related_item:,
        # A lightweight reference to another resource.
        related_meeting:,
        # The type of activity. Always `activity/note_created`.
        type: :"activity/note_created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            note: T.nilable(Moonbase::Pointer),
            occurred_at: Time,
            related_item: T.nilable(Moonbase::ItemPointer),
            related_meeting: T.nilable(Moonbase::Pointer),
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
