# typed: strong

module Moonbase
  module Models
    class ViewCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::ViewCreateParams, Moonbase::Internal::AnyHash)
        end

      # A pointer to the `Collection` the view belongs to.
      sig { returns(Moonbase::ViewCreateParams::Collection) }
      attr_reader :collection

      sig do
        params(collection: Moonbase::ViewCreateParams::Collection::OrHash).void
      end
      attr_writer :collection

      # The view's columns, in display order.
      sig { returns(T::Array[Moonbase::ViewField]) }
      attr_accessor :fields

      # The name of the view.
      sig { returns(String) }
      attr_accessor :name

      # The type of view, `table` or `board`.
      sig { returns(Moonbase::ViewCreateParams::ViewType::OrSymbol) }
      attr_accessor :view_type

      # The metrics computed over the view's items.
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

      # The filter applied to the view's items.
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
      attr_reader :filter

      sig do
        params(
          filter:
            T.any(
              Moonbase::ItemsFilterValueExists::OrHash,
              Moonbase::ItemsFilterAndGroup,
              Moonbase::ItemsFilterOrGroup,
              Moonbase::ItemsFilterNotGroup,
              Moonbase::ItemsFilterValueMatches::OrHash
            )
        ).void
      end
      attr_writer :filter

      # Fields whose values group the view's items.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :groups

      sig { params(groups: T::Array[String]).void }
      attr_writer :groups

      # Filters limiting which related items the view's relation columns show.
      sig { returns(T.nilable(T::Array[Moonbase::ViewRelationValueFilter])) }
      attr_reader :relation_value_filters

      sig do
        params(
          relation_value_filters:
            T::Array[Moonbase::ViewRelationValueFilter::OrHash]
        ).void
      end
      attr_writer :relation_value_filters

      # Sort items returned by the specified fields.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :sort

      sig { params(sort: T::Array[String]).void }
      attr_writer :sort

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            collection: Moonbase::ViewCreateParams::Collection,
            fields: T::Array[Moonbase::ViewField],
            name: String,
            view_type: Moonbase::ViewCreateParams::ViewType::OrSymbol,
            aggregates:
              T::Array[
                T.any(
                  Moonbase::ViewAggregateItemCount,
                  Moonbase::ViewAggregateFieldStatistic
                )
              ],
            filter:
              T.any(
                Moonbase::ItemsFilterValueExists,
                Moonbase::ItemsFilterAndGroup,
                Moonbase::ItemsFilterOrGroup,
                Moonbase::ItemsFilterNotGroup,
                Moonbase::ItemsFilterValueMatches
              ),
            groups: T::Array[String],
            relation_value_filters: T::Array[Moonbase::ViewRelationValueFilter],
            sort: T::Array[String],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Collection < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::ViewCreateParams::Collection,
              Moonbase::Internal::AnyHash
            )
          end

        # String representing the object’s type. Always `collection` for this object.
        sig { returns(Symbol) }
        attr_accessor :type

        # Unique identifier of the collection.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The stable, machine-readable reference identifier of the collection.
        sig { returns(T.nilable(String)) }
        attr_reader :ref

        sig { params(ref: String).void }
        attr_writer :ref

        # A pointer to the `Collection` the view belongs to.
        sig do
          params(id: String, ref: String, type: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # Unique identifier of the collection.
          id: nil,
          # The stable, machine-readable reference identifier of the collection.
          ref: nil,
          # String representing the object’s type. Always `collection` for this object.
          type: :collection
        )
        end

        sig { override.returns({ type: Symbol, id: String, ref: String }) }
        def to_hash
        end
      end

      # The type of view, `table` or `board`.
      module ViewType
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::ViewCreateParams::ViewType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TABLE =
          T.let(:table, Moonbase::ViewCreateParams::ViewType::TaggedSymbol)
        BOARD =
          T.let(:board, Moonbase::ViewCreateParams::ViewType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::ViewCreateParams::ViewType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
