# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityProgramMessageShielded < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute occurred_at
      #   The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute program_message
      #   A lightweight reference to another resource.
      #
      #   @return [Moonbase::Models::Pointer, nil]
      required :program_message, -> { Moonbase::Pointer }, nil?: true

      # @!attribute recipient
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      required :recipient, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute type
      #   The type of activity. Always `activity/program_message_shielded`.
      #
      #   @return [Symbol, :"activity/program_message_shielded"]
      required :type, const: :"activity/program_message_shielded"

      # @!attribute reason_code
      #   A code indicating why the message was shielded (e.g.,
      #   `person_previously_unsubscribed`).
      #
      #   @return [String, nil]
      optional :reason_code, String

      # @!method initialize(id:, occurred_at:, program_message:, recipient:, reason_code: nil, type: :"activity/program_message_shielded")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityProgramMessageShielded} for more details.
      #
      #   Represents an event that occurs when a `ProgramMessage` is prevented from being
      #   sent by a delivery protection rule.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param program_message [Moonbase::Models::Pointer, nil] A lightweight reference to another resource.
      #
      #   @param recipient [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param reason_code [String] A code indicating why the message was shielded (e.g., `person_previously_unsubsc
      #
      #   @param type [Symbol, :"activity/program_message_shielded"] The type of activity. Always `activity/program_message_shielded`.
    end
  end
end
