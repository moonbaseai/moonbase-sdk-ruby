# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::ProgramTemplates#retrieve
    class ProgramTemplateRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid option is
      #   `program`.
      #
      #   @return [Array<Symbol, MoonbaseSDK::Models::ProgramTemplateRetrieveParams::Include>, nil]
      optional :include,
               -> {
                 MoonbaseSDK::Internal::Type::ArrayOf[enum: MoonbaseSDK::ProgramTemplateRetrieveParams::Include]
               }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::ProgramTemplateRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, MoonbaseSDK::Models::ProgramTemplateRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `pro
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        PROGRAM = :program

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
