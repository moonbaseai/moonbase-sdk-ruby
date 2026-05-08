# typed: strong

module Moonbase
  module Models
    class ItemPointerParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemPointerParam, Moonbase::Internal::AnyHash)
        end

      # Unique identifier of the item.
      sig { returns(String) }
      attr_accessor :id

      # String representing the object’s type. Always `item` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A lightweight reference to an `Item` used in request bodies.
      sig { params(id: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # Unique identifier of the item.
        id:,
        # String representing the object’s type. Always `item` for this object.
        type: :item
      )
      end

      sig { override.returns({ id: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
