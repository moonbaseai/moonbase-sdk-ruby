# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Views#create
    class ViewCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute collection
      #   A pointer to the `Collection` the view belongs to.
      #
      #   @return [Moonbase::Models::ViewCreateParams::Collection]
      required :collection, -> { Moonbase::ViewCreateParams::Collection }

      # @!attribute fields
      #   The view's columns, in display order.
      #
      #   @return [Array<Moonbase::Models::ViewField>]
      required :fields, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::ViewField] }

      # @!attribute name
      #   The name of the view.
      #
      #   @return [String]
      required :name, String

      # @!attribute view_type
      #   The type of view, `table` or `board`.
      #
      #   @return [Symbol, Moonbase::Models::ViewCreateParams::ViewType]
      required :view_type, enum: -> { Moonbase::ViewCreateParams::ViewType }

      # @!attribute aggregates
      #   The metrics computed over the view's items.
      #
      #   @return [Array<Moonbase::Models::ViewAggregateItemCount, Moonbase::Models::ViewAggregateFieldStatistic>, nil]
      optional :aggregates, -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::ViewAggregate] }

      # @!attribute filter
      #   The filter applied to the view's items.
      #
      #   @return [Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches, nil]
      optional :filter, union: -> { Moonbase::ItemsFilter }

      # @!attribute groups
      #   Fields whose values group the view's items.
      #
      #   @return [Array<String>, nil]
      optional :groups, Moonbase::Internal::Type::ArrayOf[String]

      # @!attribute relation_value_filters
      #   Filters limiting which related items the view's relation columns show.
      #
      #   @return [Array<Moonbase::Models::ViewRelationValueFilter>, nil]
      optional :relation_value_filters,
               -> { Moonbase::Internal::Type::ArrayOf[Moonbase::ViewRelationValueFilter] }

      # @!attribute sort
      #   Sort items returned by the specified fields.
      #
      #   @return [Array<String>, nil]
      optional :sort, Moonbase::Internal::Type::ArrayOf[String]

      # @!method initialize(collection:, fields:, name:, view_type:, aggregates: nil, filter: nil, groups: nil, relation_value_filters: nil, sort: nil, request_options: {})
      #   @param collection [Moonbase::Models::ViewCreateParams::Collection] A pointer to the `Collection` the view belongs to.
      #
      #   @param fields [Array<Moonbase::Models::ViewField>] The view's columns, in display order.
      #
      #   @param name [String] The name of the view.
      #
      #   @param view_type [Symbol, Moonbase::Models::ViewCreateParams::ViewType] The type of view, `table` or `board`.
      #
      #   @param aggregates [Array<Moonbase::Models::ViewAggregateItemCount, Moonbase::Models::ViewAggregateFieldStatistic>] The metrics computed over the view's items.
      #
      #   @param filter [Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches] The filter applied to the view's items.
      #
      #   @param groups [Array<String>] Fields whose values group the view's items.
      #
      #   @param relation_value_filters [Array<Moonbase::Models::ViewRelationValueFilter>] Filters limiting which related items the view's relation columns show.
      #
      #   @param sort [Array<String>] Sort items returned by the specified fields.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Collection < Moonbase::Internal::Type::BaseModel
        # @!attribute type
        #   String representing the object’s type. Always `collection` for this object.
        #
        #   @return [Symbol, :collection]
        required :type, const: :collection

        # @!attribute id
        #   Unique identifier of the collection.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute ref
        #   The stable, machine-readable reference identifier of the collection.
        #
        #   @return [String, nil]
        optional :ref, String

        # @!method initialize(id: nil, ref: nil, type: :collection)
        #   A pointer to the `Collection` the view belongs to.
        #
        #   @param id [String] Unique identifier of the collection.
        #
        #   @param ref [String] The stable, machine-readable reference identifier of the collection.
        #
        #   @param type [Symbol, :collection] String representing the object’s type. Always `collection` for this object.
      end

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
