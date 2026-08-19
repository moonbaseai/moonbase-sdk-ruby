# typed: strong

module Moonbase
  module Models
    class ViewUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::ViewUpdateParams, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The metrics computed over the view's items. An empty array clears them.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                Moonbase::ViewAggregateItemCount,
                Moonbase::ViewAggregateFieldStatistic
              )
            ]
          )
        )
      end
      attr_reader :aggregates

      sig do
        params(
          aggregates:
            T::Array[
              T.any(
                Moonbase::ViewAggregateItemCount::OrHash,
                Moonbase::ViewAggregateFieldStatistic::OrHash
              )
            ]
        ).void
      end
      attr_writer :aggregates

      # The view's columns, in display order. If provided, it must contain at least one
      # column.
      sig { returns(T.nilable(T::Array[Moonbase::ViewField])) }
      attr_reader :fields

      sig { params(fields: T::Array[Moonbase::ViewField::OrHash]).void }
      attr_writer :fields

      # Return only items that match the filter conditions. Complex filters can be
      # created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
      sig do
        returns(
          T.nilable(
            T.any(
              Moonbase::ItemsFilterValueExists,
              Moonbase::ItemsFilterAndGroup,
              Moonbase::ItemsFilterOrGroup,
              Moonbase::ItemsFilterNotGroup,
              Moonbase::ItemsFilterValueMatches
            )
          )
        )
      end
      attr_accessor :filter

      # Fields whose values group the view's items. An empty array clears the grouping.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :groups

      sig { params(groups: T::Array[String]).void }
      attr_writer :groups

      # The name of the view.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Filters limiting which related items the view's relation columns show. An empty
      # array clears them.
      sig { returns(T.nilable(T::Array[Moonbase::ViewRelationValueFilter])) }
      attr_reader :relation_value_filters

      sig do
        params(
          relation_value_filters:
            T::Array[Moonbase::ViewRelationValueFilter::OrHash]
        ).void
      end
      attr_writer :relation_value_filters

      # Sort items returned by the specified fields. An empty array clears the sort.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :sort

      sig { params(sort: T::Array[String]).void }
      attr_writer :sort

      # The type of view, `table` or `board`.
      sig { returns(T.nilable(Moonbase::ViewUpdateParams::ViewType::OrSymbol)) }
      attr_reader :view_type

      sig do
        params(view_type: Moonbase::ViewUpdateParams::ViewType::OrSymbol).void
      end
      attr_writer :view_type

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
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
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

      sig do
        override.returns(
          {
            id: String,
            aggregates:
              T::Array[
                T.any(
                  Moonbase::ViewAggregateItemCount,
                  Moonbase::ViewAggregateFieldStatistic
                )
              ],
            fields: T::Array[Moonbase::ViewField],
            filter:
              T.nilable(
                T.any(
                  Moonbase::ItemsFilterValueExists,
                  Moonbase::ItemsFilterAndGroup,
                  Moonbase::ItemsFilterOrGroup,
                  Moonbase::ItemsFilterNotGroup,
                  Moonbase::ItemsFilterValueMatches
                )
              ),
            groups: T::Array[String],
            name: String,
            relation_value_filters: T::Array[Moonbase::ViewRelationValueFilter],
            sort: T::Array[String],
            view_type: Moonbase::ViewUpdateParams::ViewType::OrSymbol,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of view, `table` or `board`.
      module ViewType
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::ViewUpdateParams::ViewType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TABLE =
          T.let(:table, Moonbase::ViewUpdateParams::ViewType::TaggedSymbol)
        BOARD =
          T.let(:board, Moonbase::ViewUpdateParams::ViewType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::ViewUpdateParams::ViewType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
