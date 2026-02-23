# typed: strong

module Moonbase
  module Models
    class ItemsFilterOrGroup < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemsFilterOrGroup, Moonbase::Internal::AnyHash)
        end

      # An array of filters, ANY of which must be satisfied for this `or` filter to
      # match.
      sig { returns(T::Array[Moonbase::ItemsFilter]) }
      attr_accessor :filters

      sig { returns(Symbol) }
      attr_accessor :op

      # Include only items that match ANY of the filters in `filters`.
      sig do
        params(filters: T::Array[Moonbase::ItemsFilter], op: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # An array of filters, ANY of which must be satisfied for this `or` filter to
        # match.
        filters:,
        op: :or
      )
      end

      sig do
        override.returns(
          { filters: T::Array[Moonbase::ItemsFilter], op: Symbol }
        )
      end
      def to_hash
      end
    end
  end
end
