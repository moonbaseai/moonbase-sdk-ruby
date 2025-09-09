# typed: strong

module Moonbase
  module Models
    class BooleanValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::BooleanValue, Moonbase::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # True or false value
      sig { params(data: T::Boolean, type: Symbol).returns(T.attached_class) }
      def self.new(data:, type: :"value/boolean")
      end

      sig { override.returns({ data: T::Boolean, type: Symbol }) }
      def to_hash
      end
    end
  end
end
