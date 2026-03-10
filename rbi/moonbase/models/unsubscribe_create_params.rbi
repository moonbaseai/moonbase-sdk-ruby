# typed: strong

module Moonbase
  module Models
    class UnsubscribeCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::UnsubscribeCreateParams, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      sig do
        params(
          email: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(email:, request_options: {})
      end

      sig do
        override.returns(
          { email: String, request_options: Moonbase::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
