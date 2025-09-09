# typed: strong

module Moonbase
  module Models
    class FloatValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::FloatValue, Moonbase::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Floating point number
      sig { params(data: Float, type: Symbol).returns(T.attached_class) }
      def self.new(data:, type: :"value/number/unitless_float")
      end

      sig { override.returns({ data: Float, type: Symbol }) }
      def to_hash
      end
    end
  end
end
