# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Forms#retrieve
    class FormRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid option is
      #   `collection.fields`.
      #
      #   @return [Array<Symbol, MoonbaseSDK::Models::FormRetrieveParams::Include>, nil]
      optional :include,
               -> { MoonbaseSDK::Internal::Type::ArrayOf[enum: MoonbaseSDK::FormRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::FormRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, MoonbaseSDK::Models::FormRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `col
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        COLLECTION_FIELDS = :"collection.fields"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
