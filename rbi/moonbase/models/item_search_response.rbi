# typed: strong

module Moonbase
  module Models
    class ItemSearchResponse < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::Models::ItemSearchResponse,
            Moonbase::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Moonbase::Item]) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(data: T::Array[Moonbase::Item::OrHash], type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(data:, type: :list)
      end

      sig { override.returns({ data: T::Array[Moonbase::Item], type: Symbol }) }
      def to_hash
      end
    end
  end
end
