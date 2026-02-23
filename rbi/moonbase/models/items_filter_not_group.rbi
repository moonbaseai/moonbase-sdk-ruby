# typed: strong

module Moonbase
  module Models
    class ItemsFilterNotGroup < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemsFilterNotGroup, Moonbase::Internal::AnyHash)
        end

      # A nested filter which must NOT match in order for this `not` filter to match.
      sig { returns(Moonbase::ItemsFilter) }
      attr_accessor :filter

      sig { returns(Symbol) }
      attr_accessor :op

      sig do
        params(filter: Moonbase::ItemsFilter, op: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # A nested filter which must NOT match in order for this `not` filter to match.
        filter:,
        op: :not
      )
      end

      sig { override.returns({ filter: Moonbase::ItemsFilter, op: Symbol }) }
      def to_hash
      end
    end
  end
end
