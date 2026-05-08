# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Calls#retrieve
    class CallRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `transcript`, `note`, and `summary`.
      #
      #   @return [Array<Symbol, Moonbase::Models::CallRetrieveParams::Include>, nil]
      optional :include, -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::CallRetrieveParams::Include] }

      # @!method initialize(id:, include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::CallRetrieveParams} for more details.
      #
      #   @param id [String]
      #
      #   @param include [Array<Symbol, Moonbase::Models::CallRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `t
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Moonbase::Internal::Type::Enum

        TRANSCRIPT = :transcript
        NOTE = :note
        SUMMARY = :summary

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
