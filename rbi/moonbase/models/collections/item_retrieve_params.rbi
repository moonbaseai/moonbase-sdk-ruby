# typed: strong

module Moonbase
  module Models
    module Collections
      class ItemRetrieveParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Collections::ItemRetrieveParams,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :collection_id

        sig do
          params(
            collection_id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(collection_id:, request_options: {})
        end

        sig do
          override.returns(
            { collection_id: String, request_options: Moonbase::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
