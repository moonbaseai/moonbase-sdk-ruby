# typed: strong

module Moonbase
  module Resources
    # Manage your collections and items
    class Views
      # Manage your collections and items
      sig { returns(Moonbase::Resources::Views::Items) }
      attr_reader :items

      # Creates a new view in a collection.
      sig do
        params(
          collection: Moonbase::ViewCreateParams::Collection::OrHash,
          fields: T::Array[Moonbase::ViewField::OrHash],
          name: String,
          view_type: Moonbase::ViewCreateParams::ViewType::OrSymbol,
          aggregates:
            T::Array[
              T.any(
                Moonbase::ViewAggregateItemCount::OrHash,
                Moonbase::ViewAggregateFieldStatistic::OrHash
              )
            ],
          filter:
            T.any(
              Moonbase::ItemsFilterValueExists::OrHash,
              Moonbase::ItemsFilterAndGroup,
              Moonbase::ItemsFilterOrGroup,
              Moonbase::ItemsFilterNotGroup,
              Moonbase::ItemsFilterValueMatches::OrHash
            ),
          groups: T::Array[String],
          relation_value_filters:
            T::Array[Moonbase::ViewRelationValueFilter::OrHash],
          sort: T::Array[String],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::View)
      end
      def create(
        # A pointer to the `Collection` the view belongs to.
        collection:,
        # The view's columns, in display order.
        fields:,
        # The name of the view.
        name:,
        # The type of view, `table` or `board`.
        view_type:,
        # The metrics computed over the view's items.
        aggregates: nil,
        # The filter applied to the view's items.
        filter: nil,
        # Fields whose values group the view's items.
        groups: nil,
        # Filters limiting which related items the view's relation columns show.
        relation_value_filters: nil,
        # Sort items returned by the specified fields.
        sort: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing view.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::View)
      end
      def retrieve(
        # The ID of the view to retrieve.
        id,
        request_options: {}
      )
      end

      # Updates a view. The change applies to the shared view that everyone in the
      # workspace sees.
      sig do
        params(
          id: String,
          aggregates:
            T::Array[
              T.any(
                Moonbase::ViewAggregateItemCount::OrHash,
                Moonbase::ViewAggregateFieldStatistic::OrHash
              )
            ],
          fields: T::Array[Moonbase::ViewField::OrHash],
          filter:
            T.nilable(
              T.any(
                Moonbase::ItemsFilterValueExists::OrHash,
                Moonbase::ItemsFilterAndGroup,
                Moonbase::ItemsFilterOrGroup,
                Moonbase::ItemsFilterNotGroup,
                Moonbase::ItemsFilterValueMatches::OrHash
              )
            ),
          groups: T::Array[String],
          name: String,
          relation_value_filters:
            T::Array[Moonbase::ViewRelationValueFilter::OrHash],
          sort: T::Array[String],
          view_type: Moonbase::ViewUpdateParams::ViewType::OrSymbol,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::View)
      end
      def update(
        # The ID of the view to update.
        id,
        # The metrics computed over the view's items. An empty array clears them.
        aggregates: nil,
        # The view's columns, in display order. If provided, it must contain at least one
        # column.
        fields: nil,
        # Return only items that match the filter conditions. Complex filters can be
        # created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
        filter: nil,
        # Fields whose values group the view's items. An empty array clears the grouping.
        groups: nil,
        # The name of the view.
        name: nil,
        # Filters limiting which related items the view's relation columns show. An empty
        # array clears them.
        relation_value_filters: nil,
        # Sort items returned by the specified fields. An empty array clears the sort.
        sort: nil,
        # The type of view, `table` or `board`.
        view_type: nil,
        request_options: {}
      )
      end

      # Returns a list of views.
      sig do
        params(
          after: String,
          before: String,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(
          Moonbase::Internal::CursorPage[Moonbase::Models::ViewListResponse]
        )
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

      # Permanently deletes a view. The default view of a collection cannot be deleted.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The ID of the view to delete.
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
