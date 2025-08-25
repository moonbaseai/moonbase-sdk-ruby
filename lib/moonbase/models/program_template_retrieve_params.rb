# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::ProgramTemplates#retrieve
    class ProgramTemplateRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid option is
      #   `program`.
      #
      #   @return [Array<Symbol, Moonbase::Models::ProgramTemplateRetrieveParams::Include>, nil]
      optional :include,
               -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::ProgramTemplateRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ProgramTemplateRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, Moonbase::Models::ProgramTemplateRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `pro
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Moonbase::Internal::Type::Enum

        PROGRAM = :program

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
