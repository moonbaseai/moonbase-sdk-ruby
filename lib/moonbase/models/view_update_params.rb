# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Views#update
    class ViewUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute aggregates
      #   The metrics computed over the view's items. An empty array clears them.
      #
      #   @return [Array<Moonbase::Models::ViewAggregateItemCount, Moonbase::Models::ViewAggregateFieldStatistic>, nil]
      optional :aggregates, -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::ViewAggregate] }

      # @!attribute fields
      #   The view's columns, in display order. If provided, it must contain at least one
      #   column.
      #
      #   @return [Array<Moonbase::Models::ViewField>, nil]
      optional :fields, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::ViewField] }

      # @!attribute filter
      #   Return only items that match the filter conditions. Complex filters can be
      #   created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
      #
      #   @return [Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches, nil]
      optional :filter, union: -> { Moonbase::ItemsFilter }, nil?: true

      # @!attribute groups
      #   Fields whose values group the view's items. An empty array clears the grouping.
      #
      #   @return [Array<String>, nil]
      optional :groups, Moonbase::Internal::Type::ArrayOf[String]

      # @!attribute name
      #   The name of the view.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute relation_value_filters
      #   Filters limiting which related items the view's relation columns show. An empty
      #   array clears them.
      #
      #   @return [Array<Moonbase::Models::ViewRelationValueFilter>, nil]
      optional :relation_value_filters,
               -> { Moonbase::Internal::Type::ArrayOf[Moonbase::ViewRelationValueFilter] }

      # @!attribute sort
      #   Sort items returned by the specified fields. An empty array clears the sort.
      #
      #   @return [Array<String>, nil]
      optional :sort, Moonbase::Internal::Type::ArrayOf[String]

      # @!attribute view_type
      #   The type of view, `table` or `board`.
      #
      #   @return [Symbol, Moonbase::Models::ViewUpdateParams::ViewType, nil]
      optional :view_type, enum: -> { Moonbase::ViewUpdateParams::ViewType }

      # @!method initialize(id:, aggregates: nil, fields: nil, filter: nil, groups: nil, name: nil, relation_value_filters: nil, sort: nil, view_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ViewUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param aggregates [Array<Moonbase::Models::ViewAggregateItemCount, Moonbase::Models::ViewAggregateFieldStatistic>] The metrics computed over the view's items. An empty array clears them.
      #
      #   @param fields [Array<Moonbase::Models::ViewField>] The view's columns, in display order. If provided, it must contain at least one
      #
      #   @param filter [Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches, nil] Return only items that match the filter conditions. Complex filters can be creat
      #
      #   @param groups [Array<String>] Fields whose values group the view's items. An empty array clears the grouping.
      #
      #   @param name [String] The name of the view.
      #
      #   @param relation_value_filters [Array<Moonbase::Models::ViewRelationValueFilter>] Filters limiting which related items the view's relation columns show. An empty
      #
      #   @param sort [Array<String>] Sort items returned by the specified fields. An empty array clears the sort.
      #
      #   @param view_type [Symbol, Moonbase::Models::ViewUpdateParams::ViewType] The type of view, `table` or `board`.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      # The type of view, `table` or `board`.
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
