# frozen_string_literal: true

module Moonbase
  module Resources
    # View activities and capture calls
    class Activities
      # Retrieves the details of an existing activity.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the Activity to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Activity]
      #
      # @see Moonbase::Models::ActivityRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["activities/%1$s", id],
          model: Moonbase::Activity,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::ActivityListParams} for more details.
      #
      # Returns a list of activities.
      #
      # @overload list(after: nil, before: nil, constituent_entity_id: nil, constituent_entity_type: nil, constituent_relation: nil, limit: nil, occurred_at: nil, type: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param constituent_entity_id [Moonbase::Models::ActivityListParams::ConstituentEntityID] Filter activities by which entities were involved. Must be paired with constitue
      #
      # @param constituent_entity_type [Moonbase::Models::ActivityListParams::ConstituentEntityType] Filter activities by which entities were involved. Must be paired with constitue
      #
      # @param constituent_relation [Moonbase::Models::ActivityListParams::ConstituentRelation] Filter activities by which entities were involved via specific relations. Must b
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param occurred_at [Moonbase::Models::ActivityListParams::OccurredAt] Filter activities by when they occurred.
      #
      # @param type [Moonbase::Models::ActivityListParams::Type] Filter activities by type.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Activity>]
      #
      # @see Moonbase::Models::ActivityListParams
      def list(params = {})
        parsed, options = Moonbase::ActivityListParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "activities",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Activity,
          options: options
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
