# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityCallOccurred < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute call
      #   The `Call` object associated with this event.
      #
      #   @return [Moonbase::Models::CallPointer, nil]
      required :call, -> { Moonbase::CallPointer }, nil?: true

      # @!attribute occurred_at
      #   The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute type
      #   The type of activity. Always `activity/call_occurred`.
      #
      #   @return [Symbol, :"activity/call_occurred"]
      required :type, const: :"activity/call_occurred"

      # @!method initialize(id:, call:, occurred_at:, type: :"activity/call_occurred")
      #   Represents an event that occurs when an incoming or outgoing call is logged.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param call [Moonbase::Models::CallPointer, nil] The `Call` object associated with this event.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, :"activity/call_occurred"] The type of activity. Always `activity/call_occurred`.
    end
  end
end
