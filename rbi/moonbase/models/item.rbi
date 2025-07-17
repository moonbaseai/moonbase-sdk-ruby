# typed: strong

module Moonbase
  module Models
    class Item < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Item, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # String representing the object’s type. Always `item` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(Moonbase::Item::Links)) }
      attr_reader :links

      sig { params(links: Moonbase::Item::Links::OrHash).void }
      attr_writer :links

      # A hash where keys are the `ref` of a `Field` and values are the data stored for
      # that field.
      sig do
        returns(T.nilable(T::Hash[Symbol, T.nilable(Moonbase::FieldValue)]))
      end
      attr_reader :values

      sig do
        params(values: T::Hash[Symbol, T.nilable(Moonbase::FieldValue)]).void
      end
      attr_writer :values

      # An Item represents a single record or row within a Collection. It holds a set of
      # `values` corresponding to the Collection's `fields`.
      sig do
        params(
          id: String,
          links: Moonbase::Item::Links::OrHash,
          values: T::Hash[Symbol, T.nilable(Moonbase::FieldValue)],
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        links: nil,
        # A hash where keys are the `ref` of a `Field` and values are the data stored for
        # that field.
        values: nil,
        # String representing the object’s type. Always `item` for this object.
        type: :item
      )
      end

      sig do
        override.returns(
          {
            id: String,
            type: Symbol,
            links: Moonbase::Item::Links,
            values: T::Hash[Symbol, T.nilable(Moonbase::FieldValue)]
          }
        )
      end
      def to_hash
      end

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Item::Links, Moonbase::Internal::AnyHash)
          end

        # A link to the `Collection` the item belongs to.
        sig { returns(T.nilable(String)) }
        attr_reader :collection

        sig { params(collection: String).void }
        attr_writer :collection

        # The canonical URL for this object.
        sig { returns(T.nilable(String)) }
        attr_reader :self_

        sig { params(self_: String).void }
        attr_writer :self_

        sig do
          params(collection: String, self_: String).returns(T.attached_class)
        end
        def self.new(
          # A link to the `Collection` the item belongs to.
          collection: nil,
          # The canonical URL for this object.
          self_: nil
        )
        end

        sig { override.returns({ collection: String, self_: String }) }
        def to_hash
        end
      end
    end
  end
end
