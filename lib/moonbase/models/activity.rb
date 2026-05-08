# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Activities#retrieve
    class Activity < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute constituents
      #   An array of entities involved along with each entity's relation to the activity.
      #
      #   @return [Array<Moonbase::Models::Constituent>]
      required :constituents, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Constituent] }

      # @!attribute occurred_at
      #   The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute type
      #   The type of activity.
      #
      #   @return [Symbol, Moonbase::Models::Activity::Type]
      required :type, enum: -> { Moonbase::Activity::Type }

      # @!method initialize(id:, constituents:, occurred_at:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Activity} for more details.
      #
      #   The Activity object represents a specific event that has occurred, such as a
      #   meeting being scheduled or a form being submitted.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param constituents [Array<Moonbase::Models::Constituent>] An array of entities involved along with each entity's relation to the activity.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, Moonbase::Models::Activity::Type] The type of activity.

      # The type of activity.
      #
      # @see Moonbase::Models::Activity#type
      module Type
        extend Moonbase::Internal::Type::Enum

        ACTIVITY_CALL_OCCURRED = :"activity/call_occurred"
        ACTIVITY_FILE_CREATED = :"activity/file_created"
        ACTIVITY_FORM_SUBMITTED = :"activity/form_submitted"
        ACTIVITY_INBOX_MESSAGE_SENT = :"activity/inbox_message_sent"
        ACTIVITY_ITEM_CREATED = :"activity/item_created"
        ACTIVITY_ITEM_MENTIONED = :"activity/item_mentioned"
        ACTIVITY_ITEM_MERGED = :"activity/item_merged"
        ACTIVITY_MEETING_HELD = :"activity/meeting_held"
        ACTIVITY_MEETING_SCHEDULED = :"activity/meeting_scheduled"
        ACTIVITY_NOTE_CREATED = :"activity/note_created"
        ACTIVITY_PROGRAM_MESSAGE_BOUNCED = :"activity/program_message_bounced"
        ACTIVITY_PROGRAM_MESSAGE_CLICKED = :"activity/program_message_clicked"
        ACTIVITY_PROGRAM_MESSAGE_COMPLAINED = :"activity/program_message_complained"
        ACTIVITY_PROGRAM_MESSAGE_FAILED = :"activity/program_message_failed"
        ACTIVITY_PROGRAM_MESSAGE_OPENED = :"activity/program_message_opened"
        ACTIVITY_PROGRAM_MESSAGE_SENT = :"activity/program_message_sent"
        ACTIVITY_PROGRAM_MESSAGE_SHIELDED = :"activity/program_message_shielded"
        ACTIVITY_PROGRAM_MESSAGE_UNSUBSCRIBED = :"activity/program_message_unsubscribed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
