# typed: strong

module Moonbase
  module Models
    class EmailValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::EmailValue, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(Symbol) }
      attr_accessor :type

      # Email address value
      sig { params(email: String, type: Symbol).returns(T.attached_class) }
      def self.new(email:, type: :"value/email")
      end

      sig { override.returns({ email: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
