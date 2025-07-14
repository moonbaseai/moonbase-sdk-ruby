# typed: strong

module MoonbaseSDK
  module Models
    class BooleanValue < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::BooleanValue, MoonbaseSDK::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :boolean

      sig { returns(Symbol) }
      attr_accessor :type

      # True or false value
      sig do
        params(boolean: T::Boolean, type: Symbol).returns(T.attached_class)
      end
      def self.new(boolean:, type: :"value/boolean")
      end

      sig { override.returns({ boolean: T::Boolean, type: Symbol }) }
      def to_hash
      end
    end
  end
end
