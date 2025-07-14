# typed: strong

module MoonbaseSDK
  module Models
    class ItemRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::ItemRetrieveParams, MoonbaseSDK::Internal::AnyHash)
        end

      sig do
        params(request_options: MoonbaseSDK::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: MoonbaseSDK::RequestOptions }) }
      def to_hash
      end
    end
  end
end
