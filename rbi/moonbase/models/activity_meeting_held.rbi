# typed: strong

module Moonbase
  module Models
    class ActivityMeetingHeld < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ActivityMeetingHeld, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The `Meeting` object associated with this event.
      sig { returns(T.nilable(Moonbase::MeetingPointer)) }
      attr_reader :meeting

      sig { params(meeting: T.nilable(Moonbase::MeetingPointer::OrHash)).void }
      attr_writer :meeting

      # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # The type of activity. Always `activity/meeting_held`.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents an event that occurs when a `Meeting` has concluded.
      sig do
        params(
          id: String,
          meeting: T.nilable(Moonbase::MeetingPointer::OrHash),
          occurred_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The `Meeting` object associated with this event.
        meeting:,
        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        occurred_at:,
        # The type of activity. Always `activity/meeting_held`.
        type: :"activity/meeting_held"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            meeting: T.nilable(Moonbase::MeetingPointer),
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
