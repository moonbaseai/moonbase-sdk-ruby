# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::WebhookEndpoints#create
    class Endpoint < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute status
      #   Indicates whether the endpoint is enabled.
      #
      #   @return [Symbol, Moonbase::Models::Endpoint::Status]
      required :status, enum: -> { Moonbase::Endpoint::Status }

      # @!attribute subscriptions
      #   An array of `WebhookSubscription` objects representing the events this endpoint
      #   will receive.
      #
      #   @return [Array<Moonbase::Models::Subscription>]
      required :subscriptions, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Subscription] }

      # @!attribute type
      #   String representing the object’s type. Always `webhook_endpoint` for this
      #   object.
      #
      #   @return [Symbol, :webhook_endpoint]
      required :type, const: :webhook_endpoint

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute url
      #   The HTTPS URL where webhook events will be sent.
      #
      #   @return [String]
      required :url, String

      # @!attribute secret
      #   The signing secret used to verify webhook authenticity. This value is only shown
      #   when creating the endpoint and starts with `whsec_`.
      #
      #   @return [String, nil]
      optional :secret, String

      # @!method initialize(id:, created_at:, status:, subscriptions:, updated_at:, url:, secret: nil, type: :webhook_endpoint)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Endpoint} for more details.
      #
      #   A Webhook Endpoint is an HTTP endpoint that receives webhooks. You can configure
      #   which events are sent to each endpoint by creating `WebhookSubscription`
      #   objects.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param status [Symbol, Moonbase::Models::Endpoint::Status] Indicates whether the endpoint is enabled.
      #
      #   @param subscriptions [Array<Moonbase::Models::Subscription>] An array of `WebhookSubscription` objects representing the events this endpoint
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param url [String] The HTTPS URL where webhook events will be sent.
      #
      #   @param secret [String] The signing secret used to verify webhook authenticity. This value is only shown
      #
      #   @param type [Symbol, :webhook_endpoint] String representing the object’s type. Always `webhook_endpoint` for this object

      # Indicates whether the endpoint is enabled.
      #
      # @see Moonbase::Models::Endpoint#status
      module Status
        extend Moonbase::Internal::Type::Enum

        DISABLED = :disabled
        ENABLED = :enabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
