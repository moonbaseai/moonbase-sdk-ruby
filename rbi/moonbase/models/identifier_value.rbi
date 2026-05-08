# typed: strong

module Moonbase
  module Models
    class IdentifierValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::IdentifierValue, Moonbase::Internal::AnyHash)
        end

      # An external identifier as text, uo to 255 characters in length.
      sig { returns(String) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Identifier string
      sig { params(data: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # An external identifier as text, uo to 255 characters in length.
        data:,
        type: :"value/identifier"
      )
      end

      sig { override.returns({ data: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
