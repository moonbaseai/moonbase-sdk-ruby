# typed: strong

module Moonbase
  module Models
    class ClientSearchParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::ClientSearchParams, Moonbase::Internal::AnyHash)
        end

      # The search text to match against items.
      sig { returns(String) }
      attr_accessor :query

      sig do
        params(
          query: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The search text to match against items.
        query:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { query: String, request_options: Moonbase::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
