# frozen_string_literal: true

module Moonbase
  module Resources
    class WebhookEndpoints
      # Create a new endpoint.
      #
      # @overload create(status:, url:, subscriptions: nil, request_options: {})
      #
      # @param status [Symbol, Moonbase::Models::WebhookEndpointCreateParams::Status] Indicates whether the endpoint is enabled.
      #
      # @param url [String] The HTTPS URL where webhook events will be sent.
      #
      # @param subscriptions [Array<Moonbase::Models::WebhookEndpointCreateParams::Subscription>] An array of event types that this endpoint should receive notifications for.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Endpoint]
      #
      # @see Moonbase::Models::WebhookEndpointCreateParams
      def create(params)
        parsed, options = Moonbase::WebhookEndpointCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhook_endpoints",
          body: parsed,
          model: Moonbase::Endpoint,
          options: options
        )
      end

      # Retrieves the details of an existing endpoint.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the Webhook Endpoint to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Endpoint]
      #
      # @see Moonbase::Models::WebhookEndpointRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["webhook_endpoints/%1$s", id],
          model: Moonbase::Endpoint,
          options: params[:request_options]
        )
      end

      # Updates an endpoint.
      #
      # @overload update(id, status: nil, subscriptions: nil, url: nil, request_options: {})
      #
      # @param id [String] The ID of the Webhook Endpoint to update.
      #
      # @param status [Symbol, Moonbase::Models::WebhookEndpointUpdateParams::Status] Indicates whether the endpoint is enabled.
      #
      # @param subscriptions [Array<Moonbase::Models::WebhookEndpointUpdateParams::Subscription>] An array of event types that this endpoint should receive notifications for.
      #
      # @param url [String] The HTTPS URL where webhook events will be sent.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Endpoint]
      #
      # @see Moonbase::Models::WebhookEndpointUpdateParams
      def update(id, params = {})
        parsed, options = Moonbase::WebhookEndpointUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["webhook_endpoints/%1$s", id],
          body: parsed,
          model: Moonbase::Endpoint,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::WebhookEndpointListParams} for more details.
      #
      # Returns a list of endpoints.
      #
      # @overload list(after: nil, before: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Endpoint>]
      #
      # @see Moonbase::Models::WebhookEndpointListParams
      def list(params = {})
        parsed, options = Moonbase::WebhookEndpointListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "webhook_endpoints",
          query: parsed,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Endpoint,
          options: options
        )
      end

      # Permanently deletes an endpoint.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the Webhook Endpoint to delete.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Moonbase::Models::WebhookEndpointDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["webhook_endpoints/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
