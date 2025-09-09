# typed: strong

module Moonbase
  module Models
    class ItemPointer < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemPointer, Moonbase::Internal::AnyHash)
        end

      # Unique identifier of the item.
      sig { returns(String) }
      attr_accessor :id

      # A reference to the `Collection` containing this item.
      sig { returns(Moonbase::CollectionPointer) }
      attr_reader :collection

      sig { params(collection: Moonbase::CollectionPointer::OrHash).void }
      attr_writer :collection

      # String representing the object’s type. Always `item` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig do
        params(
          id: String,
          collection: Moonbase::CollectionPointer::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the item.
        id:,
        # A reference to the `Collection` containing this item.
        collection:,
        # String representing the object’s type. Always `item` for this object.
        type: :item
      )
      end

      sig do
        override.returns(
          { id: String, collection: Moonbase::CollectionPointer, type: Symbol }
        )
      end
      def to_hash
      end
    end
  end
end
