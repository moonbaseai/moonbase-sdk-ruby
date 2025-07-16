# typed: strong

module MoonbaseSDK
  module Models
    class Item < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Item, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # String representing the object’s type. Always `item` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A hash where keys are the `ref` of a `Field` and values are the data stored for
      # that field.
      sig do
        returns(T.nilable(T::Hash[Symbol, T.nilable(MoonbaseSDK::FieldValue)]))
      end
      attr_reader :values

      sig do
        params(values: T::Hash[Symbol, T.nilable(MoonbaseSDK::FieldValue)]).void
      end
      attr_writer :values

      # An Item represents a single record or row within a Collection. It holds a set of
      # `values` corresponding to the Collection's `fields`.
      sig do
        params(
          id: String,
          values: T::Hash[Symbol, T.nilable(MoonbaseSDK::FieldValue)],
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
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
            values: T::Hash[Symbol, T.nilable(MoonbaseSDK::FieldValue)]
          }
        )
      end
      def to_hash
      end
    end
  end
end
