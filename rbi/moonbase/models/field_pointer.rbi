# typed: strong

module Moonbase
  module Models
    class FieldPointer < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::FieldPointer, Moonbase::Internal::AnyHash)
        end

      # Unique identifier of the field.
      sig { returns(String) }
      attr_accessor :id

      # A reference to the `Collection` containing this field.
      sig { returns(Moonbase::CollectionPointer) }
      attr_reader :collection

      sig { params(collection: Moonbase::CollectionPointer::OrHash).void }
      attr_writer :collection

      # The stable, machine-readable reference identifier of the field.
      sig { returns(String) }
      attr_accessor :ref

      # String representing the object’s type. Always `field` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A lightweight reference to a `Field`, containing the minimal information needed
      # to identify it.
      sig do
        params(
          id: String,
          collection: Moonbase::CollectionPointer::OrHash,
          ref: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the field.
        id:,
        # A reference to the `Collection` containing this field.
        collection:,
        # The stable, machine-readable reference identifier of the field.
        ref:,
        # String representing the object’s type. Always `field` for this object.
        type: :field
      )
      end

      sig do
        override.returns(
          {
            id: String,
            collection: Moonbase::CollectionPointer,
            ref: String,
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
