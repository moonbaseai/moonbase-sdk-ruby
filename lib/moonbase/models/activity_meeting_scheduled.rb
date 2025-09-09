# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityMeetingScheduled < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute meeting
      #   A lightweight reference to another resource.
      #
      #   @return [Moonbase::Models::Pointer, nil]
      required :meeting, -> { Moonbase::Pointer }, nil?: true

      # @!attribute occurred_at
      #   The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute type
      #   The type of activity. Always `activity/meeting_scheduled`.
      #
      #   @return [Symbol, :"activity/meeting_scheduled"]
      required :type, const: :"activity/meeting_scheduled"

      # @!method initialize(id:, meeting:, occurred_at:, type: :"activity/meeting_scheduled")
      #   Represents an event that occurs when a `Meeting` is scheduled.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param meeting [Moonbase::Models::Pointer, nil] A lightweight reference to another resource.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, :"activity/meeting_scheduled"] The type of activity. Always `activity/meeting_scheduled`.
    end
  end
end
