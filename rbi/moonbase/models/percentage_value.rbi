# typed: strong

module Moonbase
  module Models
    class PercentageValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::PercentageValue, Moonbase::Internal::AnyHash)
        end

      # A floating-point number representing a percentage value, for example 50.21 for
      # 50.21% or -1000 for -1000% etc.
      sig { returns(Float) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Percentage numeric value
      sig { params(data: Float, type: Symbol).returns(T.attached_class) }
      def self.new(
        # A floating-point number representing a percentage value, for example 50.21 for
        # 50.21% or -1000 for -1000% etc.
        data:,
        type: :"value/number/percentage"
      )
      end

      sig { override.returns({ data: Float, type: Symbol }) }
      def to_hash
      end
    end
  end
end
