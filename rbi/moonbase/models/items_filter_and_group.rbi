# typed: strong

module Moonbase
  module Models
    class ItemsFilterAndGroup < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemsFilterAndGroup, Moonbase::Internal::AnyHash)
        end

      # An array of filters, ALL of which must be satisfied for this `and` filter to
      # match.
      sig { returns(T::Array[Moonbase::ItemsFilter]) }
      attr_accessor :filters

      sig { returns(Symbol) }
      attr_accessor :op

      # Include only items that match ALL of the filters in `filters`.
      sig do
        params(filters: T::Array[Moonbase::ItemsFilter], op: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # An array of filters, ALL of which must be satisfied for this `and` filter to
        # match.
        filters:,
        op: :and
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
