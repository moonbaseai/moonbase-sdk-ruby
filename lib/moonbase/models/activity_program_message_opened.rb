# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityProgramMessageOpened < Moonbase::Internal::Type::BaseModel
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
      #   The `ProgramMessage` associated with the event.
      #
      #   @return [Moonbase::Models::ProgramMessagePointer, nil]
      required :program_message, -> { Moonbase::ProgramMessagePointer }, nil?: true

      # @!attribute recipient
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      required :recipient, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute type
      #   The type of activity. Always `activity/program_message_opened`.
      #
      #   @return [Symbol, :"activity/program_message_opened"]
      required :type, const: :"activity/program_message_opened"

      # @!method initialize(id:, occurred_at:, program_message:, recipient:, type: :"activity/program_message_opened")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityProgramMessageOpened} for more details.
      #
      #   Represents an event that occurs when a recipient opens a `ProgramMessage`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param program_message [Moonbase::Models::ProgramMessagePointer, nil] The `ProgramMessage` associated with the event.
      #
      #   @param recipient [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param type [Symbol, :"activity/program_message_opened"] The type of activity. Always `activity/program_message_opened`.
    end
  end
end
