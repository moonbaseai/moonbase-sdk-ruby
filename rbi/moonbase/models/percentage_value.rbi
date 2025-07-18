# typed: strong

module Moonbase
  module Models
    class PercentageValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::PercentageValue, Moonbase::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :percentage

      sig { returns(Symbol) }
      attr_accessor :type

      # Percentage numeric value
      sig { params(percentage: Float, type: Symbol).returns(T.attached_class) }
      def self.new(percentage:, type: :"value/number/percentage")
      end

      sig { override.returns({ percentage: Float, type: Symbol }) }
      def to_hash
      end
    end
  end
end
