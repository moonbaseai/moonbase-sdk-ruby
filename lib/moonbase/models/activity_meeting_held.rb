# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityMeetingHeld < Moonbase::Internal::Type::BaseModel
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
      #   The type of activity. Always `activity/meeting_held`.
      #
      #   @return [Symbol, :"activity/meeting_held"]
      required :type, const: :"activity/meeting_held"

      # @!method initialize(id:, meeting:, occurred_at:, type: :"activity/meeting_held")
      #   Represents an event that occurs when a `Meeting` has concluded.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param meeting [Moonbase::Models::Pointer, nil] A lightweight reference to another resource.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, :"activity/meeting_held"] The type of activity. Always `activity/meeting_held`.
    end
  end
end
