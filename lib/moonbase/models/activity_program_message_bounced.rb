# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityProgramMessageBounced < Moonbase::Internal::Type::BaseModel
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
      #   The type of activity. Always `activity/program_message_bounced`.
      #
      #   @return [Symbol, :"activity/program_message_bounced"]
      required :type, const: :"activity/program_message_bounced"

      # @!attribute bounce_type
      #   The type of bounce (e.g., `Permanent` for hard bounces, `Temporary` for soft
      #   bounces).
      #
      #   @return [String, nil]
      optional :bounce_type, String

      # @!attribute bounced_recipient_emails
      #   List of email addresses that bounced.
      #
      #   @return [Array<String>, nil]
      optional :bounced_recipient_emails, Moonbase::Internal::Type::ArrayOf[String]

      # @!method initialize(id:, occurred_at:, program_message:, recipient:, bounce_type: nil, bounced_recipient_emails: nil, type: :"activity/program_message_bounced")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityProgramMessageBounced} for more details.
      #
      #   Represents an event that occurs when a `ProgramMessage` bounces.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param program_message [Moonbase::Models::Pointer, nil] A lightweight reference to another resource.
      #
      #   @param recipient [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param bounce_type [String] The type of bounce (e.g., `Permanent` for hard bounces, `Temporary` for soft bou
      #
      #   @param bounced_recipient_emails [Array<String>] List of email addresses that bounced.
      #
      #   @param type [Symbol, :"activity/program_message_bounced"] The type of activity. Always `activity/program_message_bounced`.
    end
  end
end
