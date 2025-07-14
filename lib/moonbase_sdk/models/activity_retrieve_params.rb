# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Activities#retrieve
    class ActivityRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
