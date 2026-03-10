# typed: strong

module Moonbase
  module Models
    class Unsubscribe < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::Unsubscribe, Moonbase::Internal::AnyHash)
        end

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :email

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(created_at: Time, email: String, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(created_at:, email:, type: :unsubscribe)
      end

      sig do
        override.returns({ created_at: Time, email: String, type: Symbol })
      end
      def to_hash
      end
    end
  end
end
