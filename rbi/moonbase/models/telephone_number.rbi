# typed: strong

module Moonbase
  module Models
    class TelephoneNumber < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::TelephoneNumber, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :telephone_number

      sig { returns(Symbol) }
      attr_accessor :type

      # Telephone number value
      sig do
        params(telephone_number: String, type: Symbol).returns(T.attached_class)
      end
      def self.new(telephone_number:, type: :"value/telephone_number")
      end

      sig { override.returns({ telephone_number: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
