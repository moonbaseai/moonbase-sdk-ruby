# typed: strong

module Moonbase
  module Models
    class IntegerValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::IntegerValue, Moonbase::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :number

      sig { returns(Symbol) }
      attr_accessor :type

      # Integer value without units
      sig { params(number: Integer, type: Symbol).returns(T.attached_class) }
      def self.new(number:, type: :"value/number/unitless_integer")
      end

      sig { override.returns({ number: Integer, type: Symbol }) }
      def to_hash
      end
    end
  end
end
