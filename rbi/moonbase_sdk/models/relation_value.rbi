# typed: strong

module MoonbaseSDK
  module Models
    class RelationValue < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::RelationValue, MoonbaseSDK::Internal::AnyHash)
        end

      # An Item represents a single record or row within a Collection. It holds a set of
      # `values` corresponding to the Collection's `fields`.
      sig { returns(MoonbaseSDK::Item) }
      attr_reader :item

      sig { params(item: MoonbaseSDK::Item).void }
      attr_writer :item

      sig { returns(Symbol) }
      attr_accessor :type

      # Related item reference
      sig do
        params(item: MoonbaseSDK::Item, type: Symbol).returns(T.attached_class)
      end
      def self.new(
        # An Item represents a single record or row within a Collection. It holds a set of
        # `values` corresponding to the Collection's `fields`.
        item:,
        type: :"value/relation"
      )
      end

      sig { override.returns({ item: MoonbaseSDK::Item, type: Symbol }) }
      def to_hash
      end
    end
  end
end
