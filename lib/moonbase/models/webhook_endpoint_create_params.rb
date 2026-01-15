# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::WebhookEndpoints#create
    class WebhookEndpointCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute status
      #   Indicates whether the endpoint is enabled.
      #
      #   @return [Symbol, Moonbase::Models::WebhookEndpointCreateParams::Status]
      required :status, enum: -> { Moonbase::WebhookEndpointCreateParams::Status }

      # @!attribute url
      #   The HTTPS URL where webhook events will be sent.
      #
      #   @return [String]
      required :url, String

      # @!attribute subscriptions
      #   An array of event types that this endpoint should receive notifications for.
      #
      #   @return [Array<Moonbase::Models::WebhookEndpointCreateParams::Subscription>, nil]
      optional :subscriptions,
               -> { Moonbase::Internal::Type::ArrayOf[Moonbase::WebhookEndpointCreateParams::Subscription] }

      # @!method initialize(status:, url:, subscriptions: nil, request_options: {})
      #   @param status [Symbol, Moonbase::Models::WebhookEndpointCreateParams::Status] Indicates whether the endpoint is enabled.
      #
      #   @param url [String] The HTTPS URL where webhook events will be sent.
      #
      #   @param subscriptions [Array<Moonbase::Models::WebhookEndpointCreateParams::Subscription>] An array of event types that this endpoint should receive notifications for.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      # Indicates whether the endpoint is enabled.
      module Status
        extend Moonbase::Internal::Type::Enum

        DISABLED = :disabled
        ENABLED = :enabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Subscription < Moonbase::Internal::Type::BaseModel
        # @!attribute event_type
        #   The type of event that will trigger notifications to the endpoint (e.g.,
        #   `activity/item_created`).
        #
        #   @return [Symbol, Moonbase::Models::WebhookEndpointCreateParams::Subscription::EventType]
        required :event_type, enum: -> { Moonbase::WebhookEndpointCreateParams::Subscription::EventType }

        # @!method initialize(event_type:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::WebhookEndpointCreateParams::Subscription} for more details.
        #
        #   Parameters for creating a webhook subscription.
        #
        #   @param event_type [Symbol, Moonbase::Models::WebhookEndpointCreateParams::Subscription::EventType] The type of event that will trigger notifications to the endpoint (e.g., `activi

        # The type of event that will trigger notifications to the endpoint (e.g.,
        # `activity/item_created`).
        #
        # @see Moonbase::Models::WebhookEndpointCreateParams::Subscription#event_type
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
end
