# typed: strong

module Moonbase
  module Models
    class ItemsFilterValueExists < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemsFilterValueExists, Moonbase::Internal::AnyHash)
        end

      # The id or key of the field for which a value must exist.
      sig { returns(String) }
      attr_accessor :field

      sig { returns(Symbol) }
      attr_accessor :op

      # Include only items that have a value in the given `field`.
      sig { params(field: String, op: Symbol).returns(T.attached_class) }
      def self.new(
        # The id or key of the field for which a value must exist.
        field:,
        op: :exists
      )
      end

      sig { override.returns({ field: String, op: Symbol }) }
      def to_hash
      end
    end
  end
end
