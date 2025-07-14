# typed: strong

module MoonbaseSDK
  module Models
    module Collections
      class FieldRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
        extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
        include MoonbaseSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Collections::FieldRetrieveParams,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :collection_id

        sig do
          params(
            collection_id: String,
            request_options: MoonbaseSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(collection_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              collection_id: String,
              request_options: MoonbaseSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
