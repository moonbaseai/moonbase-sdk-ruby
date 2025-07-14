# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Views#retrieve
    class ViewRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid option is
      #   `collection`.
      #
      #   @return [Array<Symbol, MoonbaseSDK::Models::ViewRetrieveParams::Include>, nil]
      optional :include,
               -> { MoonbaseSDK::Internal::Type::ArrayOf[enum: MoonbaseSDK::ViewRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::ViewRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, MoonbaseSDK::Models::ViewRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `col
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        COLLECTION = :collection

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
