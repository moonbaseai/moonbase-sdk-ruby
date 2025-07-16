# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Programs#retrieve
    class ProgramRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `activity_metrics` and `program_template`.
      #
      #   @return [Array<Symbol, MoonbaseSDK::Models::ProgramRetrieveParams::Include>, nil]
      optional :include,
               -> { MoonbaseSDK::Internal::Type::ArrayOf[enum: MoonbaseSDK::ProgramRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::ProgramRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, MoonbaseSDK::Models::ProgramRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        ACTIVITY_METRICS = :activity_metrics
        PROGRAM_TEMPLATE = :program_template

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
