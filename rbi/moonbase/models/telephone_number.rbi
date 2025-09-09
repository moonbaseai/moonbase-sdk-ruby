# typed: strong

module Moonbase
  module Models
    class TelephoneNumber < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::TelephoneNumber, Moonbase::Internal::AnyHash)
        end

      # A telephone number in strictly formatted E.164 format. Do not include spaces,
      # dashes, or parentheses etc.
      sig { returns(String) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Telephone number value
      sig { params(data: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # A telephone number in strictly formatted E.164 format. Do not include spaces,
        # dashes, or parentheses etc.
        data:,
        type: :"value/telephone_number"
      )
      end

      sig { override.returns({ data: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
