# typed: strong

module Moonbase
  module Models
    class CollectionPointer < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::CollectionPointer, Moonbase::Internal::AnyHash)
        end

      # Unique identifier of the collection.
      sig { returns(String) }
      attr_accessor :id

      # The stable, machine-readable reference identifier of the collection.
      sig { returns(String) }
      attr_accessor :ref

      # String representing the object’s type. Always `collection` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A lightweight reference to a `Collection`, containing the minimal information
      # needed to identify it.
      sig do
        params(id: String, ref: String, type: Symbol).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the collection.
        id:,
        # The stable, machine-readable reference identifier of the collection.
        ref:,
        # String representing the object’s type. Always `collection` for this object.
        type: :collection
      )
      end

      sig { override.returns({ id: String, ref: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
