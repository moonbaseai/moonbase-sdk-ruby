# typed: strong

module Moonbase
  module Models
    class IntegerValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::IntegerValue, Moonbase::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Integer value without units
      sig { params(data: Integer, type: Symbol).returns(T.attached_class) }
      def self.new(data:, type: :"value/number/unitless_integer")
      end

      sig { override.returns({ data: Integer, type: Symbol }) }
      def to_hash
      end
    end
  end
end
