# frozen_string_literal: true

module MoonbaseSDK
  module Models
    module Collections
      # @see MoonbaseSDK::Resources::Collections::Fields#retrieve
      class FieldRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
        extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
        include MoonbaseSDK::Internal::Type::RequestParameters

        # @!attribute collection_id
        #
        #   @return [String]
        required :collection_id, String

        # @!method initialize(collection_id:, request_options: {})
        #   @param collection_id [String]
        #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
