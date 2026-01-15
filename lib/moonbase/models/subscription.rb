# frozen_string_literal: true

module Moonbase
  module Models
    class Subscription < Moonbase::Internal::Type::BaseModel
      # @!attribute event_type
      #   The type of event that will trigger notifications to the endpoint (e.g.,
      #   `activity/item_created`).
      #
      #   @return [Symbol, Moonbase::Models::Subscription::EventType]
      required :event_type, enum: -> { Moonbase::Subscription::EventType }

      # @!attribute type
      #   String representing the object’s type. Always `webhook_subscription` for this
      #   object.
      #
      #   @return [Symbol, :webhook_subscription]
      required :type, const: :webhook_subscription

      # @!method initialize(event_type:, type: :webhook_subscription)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Subscription} for more details.
      #
      #   A Webhook Subscription defines which event type should be sent to a specific
      #   webhook endpoint.
      #
      #   @param event_type [Symbol, Moonbase::Models::Subscription::EventType] The type of event that will trigger notifications to the endpoint (e.g., `activi
      #
      #   @param type [Symbol, :webhook_subscription] String representing the object’s type. Always `webhook_subscription` for this ob

      # The type of event that will trigger notifications to the endpoint (e.g.,
      # `activity/item_created`).
      #
      # @see Moonbase::Models::Subscription#event_type
      module EventType
        extend Moonbase::Internal::Type::Enum

        ACTIVITY_CALL_OCCURRED = :"activity/call_occurred"
        ACTIVITY_FORM_SUBMITTED = :"activity/form_submitted"
        ACTIVITY_INBOX_MESSAGE_SENT = :"activity/inbox_message_sent"
        ACTIVITY_ITEM_CREATED = :"activity/item_created"
        ACTIVITY_ITEM_MENTIONED = :"activity/item_mentioned"
        ACTIVITY_ITEM_MERGED = :"activity/item_merged"
        ACTIVITY_FILE_CREATED = :"activity/file_created"
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
