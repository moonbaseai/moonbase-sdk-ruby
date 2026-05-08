# frozen_string_literal: true

module Moonbase
  module Resources
    # Manage your collections and items
    class Funnels
      # Creates a new funnel.
      #
      # @overload create(name:, steps: nil, request_options: {})
      #
      # @param name [String] The name of the funnel.
      #
      # @param steps [Array<Moonbase::Models::FunnelCreateParams::Step>] An ordered list of steps to create. Array order determines step order.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Funnel]
      #
      # @see Moonbase::Models::FunnelCreateParams
      def create(params)
        parsed, options = Moonbase::FunnelCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "funnels",
          body: parsed,
          model: Moonbase::Funnel,
          options: options
        )
      end

      # Retrieves the details of an existing funnel.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the funnel to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Funnel]
      #
      # @see Moonbase::Models::FunnelRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["funnels/%1$s", id],
          model: Moonbase::Funnel,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::FunnelUpdateParams} for more details.
      #
      # Updates a funnel.
      #
      # @overload update(id, name: nil, steps: nil, request_options: {})
      #
      # @param id [String] The ID of the funnel to update.
      #
      # @param name [String] The name of the funnel.
      #
      # @param steps [Array<Moonbase::Models::FunnelUpdateParams::Step>] An ordered list of steps. Providing this replaces all existing steps. Omitting p
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Funnel]
      #
      # @see Moonbase::Models::FunnelUpdateParams
      def update(id, params = {})
        parsed, options = Moonbase::FunnelUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["funnels/%1$s", id],
          body: parsed,
          model: Moonbase::Funnel,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::FunnelListParams} for more details.
      #
      # Returns a list of funnels.
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
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Funnel>]
      #
      # @see Moonbase::Models::FunnelListParams
      def list(params = {})
        parsed, options = Moonbase::FunnelListParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "funnels",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Funnel,
          options: options
        )
      end

      # Permanently deletes a funnel.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the funnel to delete.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Moonbase::Models::FunnelDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["funnels/%1$s", id],
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
