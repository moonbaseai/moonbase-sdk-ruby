# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Programs#retrieve
    class ProgramRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `activity_metrics` and `program_template`.
      #
      #   @return [Array<Symbol, Moonbase::Models::ProgramRetrieveParams::Include>, nil]
      optional :include,
               -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::ProgramRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ProgramRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, Moonbase::Models::ProgramRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Moonbase::Internal::Type::Enum

        ACTIVITY_METRICS = :activity_metrics
        PROGRAM_TEMPLATE = :program_template

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
