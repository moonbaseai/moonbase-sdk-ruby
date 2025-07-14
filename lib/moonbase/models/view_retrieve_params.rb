# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Views#retrieve
    class ViewRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid option is
      #   `collection`.
      #
      #   @return [Array<Symbol, Moonbase::Models::ViewRetrieveParams::Include>, nil]
      optional :include, -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::ViewRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ViewRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, Moonbase::Models::ViewRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `col
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Moonbase::Internal::Type::Enum

        COLLECTION = :collection

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
