# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityProgramMessageUnsubscribed < Moonbase::Internal::Type::BaseModel
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
      #   The type of activity. Always `activity/program_message_unsubscribed`.
      #
      #   @return [Symbol, :"activity/program_message_unsubscribed"]
      required :type, const: :"activity/program_message_unsubscribed"

      # @!attribute email
      #   The email address of the person who unsubscribed.
      #
      #   @return [String, nil]
      optional :email, String

      # @!method initialize(id:, occurred_at:, program_message:, recipient:, email: nil, type: :"activity/program_message_unsubscribed")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityProgramMessageUnsubscribed} for more details.
      #
      #   Represents an event that occurs when a recipient unsubscribes after receiving a
      #   `ProgramMessage`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param program_message [Moonbase::Models::Pointer, nil] A lightweight reference to another resource.
      #
      #   @param recipient [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param email [String] The email address of the person who unsubscribed.
      #
      #   @param type [Symbol, :"activity/program_message_unsubscribed"] The type of activity. Always `activity/program_message_unsubscribed`.
    end
  end
end
