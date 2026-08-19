# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Views#create
    class View < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute aggregates
      #   The metrics computed over the view's items.
      #
      #   @return [Array<Moonbase::Models::ViewAggregateItemCount, Moonbase::Models::ViewAggregateFieldStatistic>]
      required :aggregates, -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::ViewAggregate] }

      # @!attribute collection
      #   The `Collection` this view belongs to.
      #
      #   @return [Moonbase::Models::CollectionPointer]
      required :collection, -> { Moonbase::CollectionPointer }

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute fields
      #   The view's columns, in display order.
      #
      #   @return [Array<Moonbase::Models::ViewField>]
      required :fields, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::ViewField] }

      # @!attribute filter
      #   Return only items that match the filter conditions. Complex filters can be
      #   created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
      #
      #   @return [Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches, nil]
      required :filter, union: -> { Moonbase::ItemsFilter }, nil?: true

      # @!attribute groups
      #   Fields whose values group the view's items. Empty when the view is not grouped.
      #
      #   @return [Array<String>]
      required :groups, Moonbase::Internal::Type::ArrayOf[String]

      # @!attribute name
      #   The name of the view.
      #
      #   @return [String]
      required :name, String

      # @!attribute relation_value_filters
      #   Filters limiting which related items the view's relation columns show.
      #
      #   @return [Array<Moonbase::Models::ViewRelationValueFilter>]
      required :relation_value_filters,
               -> { Moonbase::Internal::Type::ArrayOf[Moonbase::ViewRelationValueFilter] }

      # @!attribute sort
      #   Sort items returned by the specified fields. Empty when the view has no sort.
      #
      #   @return [Array<String>]
      required :sort, Moonbase::Internal::Type::ArrayOf[String]

      # @!attribute type
      #   String representing the object’s type. Always `view` for this object.
      #
      #   @return [Symbol, :view]
      required :type, const: :view

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute view_type
      #   The type of view, such as `table` or `board`.
      #
      #   @return [Symbol, Moonbase::Models::View::ViewType]
      required :view_type, enum: -> { Moonbase::View::ViewType }

      # @!method initialize(id:, aggregates:, collection:, created_at:, fields:, filter:, groups:, name:, relation_value_filters:, sort:, updated_at:, view_type:, type: :view)
      #   Some parameter documentations has been truncated, see {Moonbase::Models::View}
      #   for more details.
      #
      #   A View represents a saved configuration for displaying items in a collection,
      #   including filters and sorting rules.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param aggregates [Array<Moonbase::Models::ViewAggregateItemCount, Moonbase::Models::ViewAggregateFieldStatistic>] The metrics computed over the view's items.
      #
      #   @param collection [Moonbase::Models::CollectionPointer] The `Collection` this view belongs to.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param fields [Array<Moonbase::Models::ViewField>] The view's columns, in display order.
      #
      #   @param filter [Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches, nil] Return only items that match the filter conditions. Complex filters can be creat
      #
      #   @param groups [Array<String>] Fields whose values group the view's items. Empty when the view is not grouped.
      #
      #   @param name [String] The name of the view.
      #
      #   @param relation_value_filters [Array<Moonbase::Models::ViewRelationValueFilter>] Filters limiting which related items the view's relation columns show.
      #
      #   @param sort [Array<String>] Sort items returned by the specified fields. Empty when the view has no sort.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param view_type [Symbol, Moonbase::Models::View::ViewType] The type of view, such as `table` or `board`.
      #
      #   @param type [Symbol, :view] String representing the object’s type. Always `view` for this object.

      # The type of view, such as `table` or `board`.
      #
      # @see Moonbase::Models::View#view_type
      module ViewType
        extend Moonbase::Internal::Type::Enum

        TABLE = :table
        BOARD = :board

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
