# frozen_string_literal: true

module Moonbase
  module Resources
    # Manage your collections and items
    class Views
      # Manage your collections and items
      # @return [Moonbase::Resources::Views::Items]
      attr_reader :items

      # Creates a new view in a collection.
      #
      # @overload create(collection:, fields:, name:, view_type:, aggregates: nil, filter: nil, groups: nil, relation_value_filters: nil, sort: nil, request_options: {})
      #
      # @param collection [Moonbase::Models::ViewCreateParams::Collection] A pointer to the `Collection` the view belongs to.
      #
      # @param fields [Array<Moonbase::Models::ViewField>] The view's columns, in display order.
      #
      # @param name [String] The name of the view.
      #
      # @param view_type [Symbol, Moonbase::Models::ViewCreateParams::ViewType] The type of view, `table` or `board`.
      #
      # @param aggregates [Array<Moonbase::Models::ViewAggregateItemCount, Moonbase::Models::ViewAggregateFieldStatistic>] The metrics computed over the view's items.
      #
      # @param filter [Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches] The filter applied to the view's items.
      #
      # @param groups [Array<String>] Fields whose values group the view's items.
      #
      # @param relation_value_filters [Array<Moonbase::Models::ViewRelationValueFilter>] Filters limiting which related items the view's relation columns show.
      #
      # @param sort [Array<String>] Sort items returned by the specified fields.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::View]
      #
      # @see Moonbase::Models::ViewCreateParams
      def create(params)
        parsed, options = Moonbase::ViewCreateParams.dump_request(params)
        @client.request(method: :post, path: "views", body: parsed, model: Moonbase::View, options: options)
      end

      # Retrieves the details of an existing view.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the view to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::View]
      #
      # @see Moonbase::Models::ViewRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["views/%1$s", id],
          model: Moonbase::View,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::ViewUpdateParams} for more details.
      #
      # Updates a view. The change applies to the shared view that everyone in the
      # workspace sees.
      #
      # @overload update(id, aggregates: nil, fields: nil, filter: nil, groups: nil, name: nil, relation_value_filters: nil, sort: nil, view_type: nil, request_options: {})
      #
      # @param id [String] The ID of the view to update.
      #
      # @param aggregates [Array<Moonbase::Models::ViewAggregateItemCount, Moonbase::Models::ViewAggregateFieldStatistic>] The metrics computed over the view's items. An empty array clears them.
      #
      # @param fields [Array<Moonbase::Models::ViewField>] The view's columns, in display order. If provided, it must contain at least one
      #
      # @param filter [Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches, nil] Return only items that match the filter conditions. Complex filters can be creat
      #
      # @param groups [Array<String>] Fields whose values group the view's items. An empty array clears the grouping.
      #
      # @param name [String] The name of the view.
      #
      # @param relation_value_filters [Array<Moonbase::Models::ViewRelationValueFilter>] Filters limiting which related items the view's relation columns show. An empty
      #
      # @param sort [Array<String>] Sort items returned by the specified fields. An empty array clears the sort.
      #
      # @param view_type [Symbol, Moonbase::Models::ViewUpdateParams::ViewType] The type of view, `table` or `board`.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::View]
      #
      # @see Moonbase::Models::ViewUpdateParams
      def update(id, params = {})
        parsed, options = Moonbase::ViewUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["views/%1$s", id],
          body: parsed,
          model: Moonbase::View,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::ViewListParams} for more details.
      #
      # Returns a list of views.
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
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::ViewListResponse>]
      #
      # @see Moonbase::Models::ViewListParams
      def list(params = {})
        parsed, options = Moonbase::ViewListParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "views",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Models::ViewListResponse,
          options: options
        )
      end

      # Permanently deletes a view. The default view of a collection cannot be deleted.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the view to delete.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Moonbase::Models::ViewDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["views/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
        @items = Moonbase::Resources::Views::Items.new(client: client)
      end
    end
  end
end
