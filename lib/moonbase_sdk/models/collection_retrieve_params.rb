# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Collections#retrieve
    class CollectionRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `fields` and `views`.
      #
      #   @return [Array<Symbol, MoonbaseSDK::Models::CollectionRetrieveParams::Include>, nil]
      optional :include,
               -> {
                 MoonbaseSDK::Internal::Type::ArrayOf[enum: MoonbaseSDK::CollectionRetrieveParams::Include]
               }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::CollectionRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, MoonbaseSDK::Models::CollectionRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `f
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        FIELDS = :fields
        VIEWS = :views

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
