# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityInboxMessageSent < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute message
      #   The `EmailMessage` that was sent.
      #
      #   @return [Moonbase::Models::EmailMessagePointer, nil]
      required :message, -> { Moonbase::EmailMessagePointer }, nil?: true

      # @!attribute occurred_at
      #   The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute type
      #   The type of activity. Always `activity/inbox_message_sent`.
      #
      #   @return [Symbol, :"activity/inbox_message_sent"]
      required :type, const: :"activity/inbox_message_sent"

      # @!method initialize(id:, message:, occurred_at:, type: :"activity/inbox_message_sent")
      #   Represents an event that occurs when a message is sent from an `Inbox`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param message [Moonbase::Models::EmailMessagePointer, nil] The `EmailMessage` that was sent.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, :"activity/inbox_message_sent"] The type of activity. Always `activity/inbox_message_sent`.
    end
  end
end
