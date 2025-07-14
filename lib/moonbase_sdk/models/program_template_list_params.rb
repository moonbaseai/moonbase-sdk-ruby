# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::ProgramTemplates#list
    class ProgramTemplateListParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   When specified, returns results starting immediately after the item identified
      #   by this cursor. Use the cursor value from the previous response's metadata to
      #   fetch the next page of results.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   When specified, returns results starting immediately before the item identified
      #   by this cursor. Use the cursor value from the response's metadata to fetch the
      #   previous page of results.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid option is
      #   `program`.
      #
      #   @return [Array<Symbol, MoonbaseSDK::Models::ProgramTemplateListParams::Include>, nil]
      optional :include,
               -> {
                 MoonbaseSDK::Internal::Type::ArrayOf[enum: MoonbaseSDK::ProgramTemplateListParams::Include]
               }

      # @!attribute limit
      #   Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #   to 20 if not specified.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(after: nil, before: nil, include: nil, limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::ProgramTemplateListParams} for more details.
      #
      #   @param after [String] When specified, returns results starting immediately after the item identified b
      #
      #   @param before [String] When specified, returns results starting immediately before the item identified
      #
      #   @param include [Array<Symbol, MoonbaseSDK::Models::ProgramTemplateListParams::Include>] Specifies which related objects to include in the response. Valid option is `pro
      #
      #   @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
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
