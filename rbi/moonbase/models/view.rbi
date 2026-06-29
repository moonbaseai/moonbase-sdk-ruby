# typed: strong

module Moonbase
  module Models
    class View < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::View, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The metrics computed over the view's items.
      sig { returns(T::Array[Moonbase::ViewAggregate::Variants]) }
      attr_accessor :aggregates

      # The `Collection` this view belongs to.
      sig { returns(Moonbase::CollectionPointer) }
      attr_reader :collection

      sig { params(collection: Moonbase::CollectionPointer::OrHash).void }
      attr_writer :collection

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The view's columns, in display order.
      sig { returns(T::Array[Moonbase::ViewField]) }
      attr_accessor :fields

      # Return only items that match the filter conditions. Complex filters can be
      # created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
      sig { returns(T.nilable(Moonbase::ItemsFilter::Variants)) }
      attr_accessor :filter

      # Fields whose values group the view's items. Empty when the view is not grouped.
      sig { returns(T::Array[String]) }
      attr_accessor :groups

      # The name of the view.
      sig { returns(String) }
      attr_accessor :name

      # Filters limiting which related items the view's relation columns show.
      sig { returns(T::Array[Moonbase::ViewRelationValueFilter]) }
      attr_accessor :relation_value_filters

      # Sort items returned by the specified fields. Empty when the view has no sort.
      sig { returns(T::Array[String]) }
      attr_accessor :sort

      # String representing the object’s type. Always `view` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The type of view, such as `table` or `board`.
      sig { returns(Moonbase::View::ViewType::TaggedSymbol) }
      attr_accessor :view_type

      # A View represents a saved configuration for displaying items in a collection,
      # including filters and sorting rules.
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
          collection: Moonbase::CollectionPointer::OrHash,
          created_at: Time,
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
          updated_at: Time,
          view_type: Moonbase::View::ViewType::OrSymbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The metrics computed over the view's items.
        aggregates:,
        # The `Collection` this view belongs to.
        collection:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The view's columns, in display order.
        fields:,
        # Return only items that match the filter conditions. Complex filters can be
        # created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
        filter:,
        # Fields whose values group the view's items. Empty when the view is not grouped.
        groups:,
        # The name of the view.
        name:,
        # Filters limiting which related items the view's relation columns show.
        relation_value_filters:,
        # Sort items returned by the specified fields. Empty when the view has no sort.
        sort:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # The type of view, such as `table` or `board`.
        view_type:,
        # String representing the object’s type. Always `view` for this object.
        type: :view
      )
      end

      sig do
        override.returns(
          {
            id: String,
            aggregates: T::Array[Moonbase::ViewAggregate::Variants],
            collection: Moonbase::CollectionPointer,
            created_at: Time,
            fields: T::Array[Moonbase::ViewField],
            filter: T.nilable(Moonbase::ItemsFilter::Variants),
            groups: T::Array[String],
            name: String,
            relation_value_filters: T::Array[Moonbase::ViewRelationValueFilter],
            sort: T::Array[String],
            type: Symbol,
            updated_at: Time,
            view_type: Moonbase::View::ViewType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of view, such as `table` or `board`.
      module ViewType
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::View::ViewType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TABLE = T.let(:table, Moonbase::View::ViewType::TaggedSymbol)
        BOARD = T.let(:board, Moonbase::View::ViewType::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::View::ViewType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
