# typed: strong

module Moonbase
  module Models
    class RelationValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::RelationValue, Moonbase::Internal::AnyHash)
        end

      # An Item represents a single record or row within a Collection. It holds a set of
      # `values` corresponding to the Collection's `fields`.
      sig { returns(Moonbase::Item) }
      attr_reader :item

      sig { params(item: Moonbase::Item).void }
      attr_writer :item

      sig { returns(Symbol) }
      attr_accessor :type

      # Related item reference
      sig do
        params(item: Moonbase::Item, type: Symbol).returns(T.attached_class)
      end
      def self.new(
        # An Item represents a single record or row within a Collection. It holds a set of
        # `values` corresponding to the Collection's `fields`.
        item:,
        type: :"value/relation"
      )
      end

      sig { override.returns({ item: Moonbase::Item, type: Symbol }) }
      def to_hash
      end
    end
  end
end
