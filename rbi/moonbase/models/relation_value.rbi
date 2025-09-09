# typed: strong

module Moonbase
  module Models
    class RelationValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::RelationValue, Moonbase::Internal::AnyHash)
        end

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig { returns(Moonbase::ItemPointer) }
      attr_reader :item

      sig { params(item: Moonbase::ItemPointer::OrHash).void }
      attr_writer :item

      sig { returns(Symbol) }
      attr_accessor :type

      # Related item reference
      sig do
        params(item: Moonbase::ItemPointer::OrHash, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        item:,
        type: :"value/relation"
      )
      end

      sig { override.returns({ item: Moonbase::ItemPointer, type: Symbol }) }
      def to_hash
      end
    end
  end
end
