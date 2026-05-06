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

      # The `Note` object that was created.
      sig { returns(T.nilable(Moonbase::NotePointer)) }
      attr_reader :note

      sig { params(note: T.nilable(Moonbase::NotePointer::OrHash)).void }
      attr_writer :note

      # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # An array of `Item` this note is related to, if any.
      sig { returns(T::Array[Moonbase::ItemPointer]) }
      attr_accessor :related_items

      # The `Meeting` this note is related to, if any.
      sig { returns(T.nilable(Moonbase::MeetingPointer)) }
      attr_reader :related_meeting

      sig do
        params(
          related_meeting: T.nilable(Moonbase::MeetingPointer::OrHash)
        ).void
      end
      attr_writer :related_meeting

      # The type of activity. Always `activity/note_created`.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents an event that occurs when a `Note` is created.
      sig do
        params(
          id: String,
          note: T.nilable(Moonbase::NotePointer::OrHash),
          occurred_at: Time,
          related_items: T::Array[Moonbase::ItemPointer::OrHash],
          related_meeting: T.nilable(Moonbase::MeetingPointer::OrHash),
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The `Note` object that was created.
        note:,
        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        occurred_at:,
        # An array of `Item` this note is related to, if any.
        related_items:,
        # The `Meeting` this note is related to, if any.
        related_meeting:,
        # The type of activity. Always `activity/note_created`.
        type: :"activity/note_created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            note: T.nilable(Moonbase::NotePointer),
            occurred_at: Time,
            related_items: T::Array[Moonbase::ItemPointer],
            related_meeting: T.nilable(Moonbase::MeetingPointer),
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
