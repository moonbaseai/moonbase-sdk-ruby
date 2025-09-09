# typed: strong

module Moonbase
  module Models
    class RelationValueParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::RelationValueParam, Moonbase::Internal::AnyHash)
        end

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig { returns(T.any(Moonbase::ItemPointer, Moonbase::Pointer)) }
      attr_accessor :item

      sig { returns(Symbol) }
      attr_accessor :type

      # Related item reference
      sig do
        params(
          item: T.any(Moonbase::ItemPointer::OrHash, Moonbase::Pointer::OrHash),
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        item:,
        type: :"value/relation"
      )
      end

      sig do
        override.returns(
          {
            item: T.any(Moonbase::ItemPointer, Moonbase::Pointer),
            type: Symbol
          }
        )
      end
      def to_hash
      end

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      module Item
        extend Moonbase::Internal::Type::Union

        Variants =
          T.type_alias { T.any(Moonbase::ItemPointer, Moonbase::Pointer) }

        sig do
          override.returns(
            T::Array[Moonbase::RelationValueParam::Item::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
