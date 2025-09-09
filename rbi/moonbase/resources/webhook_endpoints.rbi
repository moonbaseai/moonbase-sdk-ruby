# typed: strong

module Moonbase
  module Resources
    class WebhookEndpoints
      # Create a new endpoint.
      sig do
        params(
          status: Moonbase::WebhookEndpointCreateParams::Status::OrSymbol,
          url: String,
          subscriptions:
            T::Array[
              Moonbase::WebhookEndpointCreateParams::Subscription::OrHash
            ],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Endpoint)
      end
      def create(
        # Indicates whether the endpoint is enabled.
        status:,
        # The HTTPS URL where webhook events will be sent.
        url:,
        # An array of event types that this endpoint should receive notifications for.
        subscriptions: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing endpoint.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Endpoint)
      end
      def retrieve(
        # The ID of the Webhook Endpoint to retrieve.
        id,
        request_options: {}
      )
      end

      # Updates an endpoint.
      sig do
        params(
          id: String,
          status: Moonbase::WebhookEndpointUpdateParams::Status::OrSymbol,
          subscriptions:
            T::Array[
              Moonbase::WebhookEndpointUpdateParams::Subscription::OrHash
            ],
          url: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Endpoint)
      end
      def update(
        # The ID of the Webhook Endpoint to update.
        id,
        # Indicates whether the endpoint is enabled.
        status: nil,
        # An array of event types that this endpoint should receive notifications for.
        subscriptions: nil,
        # The HTTPS URL where webhook events will be sent.
        url: nil,
        request_options: {}
      )
      end

      # Returns a list of endpoints.
      sig do
        params(
          after: String,
          before: String,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::Endpoint])
      end
      def list(
        # When specified, returns results starting immediately after the item identified
        # by this cursor. Use the cursor value from the previous response's metadata to
        # fetch the next page of results.
        after: nil,
        # When specified, returns results starting immediately before the item identified
        # by this cursor. Use the cursor value from the response's metadata to fetch the
        # previous page of results.
        before: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
        request_options: {}
      )
      end

      # Permanently deletes an endpoint.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The ID of the Webhook Endpoint to delete.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Moonbase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
