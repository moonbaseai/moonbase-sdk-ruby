# typed: strong

module Moonbase
  module Models
    class ActivityMeetingScheduled < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ActivityMeetingScheduled, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # A lightweight reference to another resource.
      sig { returns(T.nilable(Moonbase::Pointer)) }
      attr_reader :meeting

      sig { params(meeting: T.nilable(Moonbase::Pointer::OrHash)).void }
      attr_writer :meeting

      # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # The type of activity. Always `activity/meeting_scheduled`.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents an event that occurs when a `Meeting` is scheduled.
      sig do
        params(
          id: String,
          meeting: T.nilable(Moonbase::Pointer::OrHash),
          occurred_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # A lightweight reference to another resource.
        meeting:,
        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        occurred_at:,
        # The type of activity. Always `activity/meeting_scheduled`.
        type: :"activity/meeting_scheduled"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            meeting: T.nilable(Moonbase::Pointer),
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
