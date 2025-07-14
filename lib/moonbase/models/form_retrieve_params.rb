# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Forms#retrieve
    class FormRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid option is
      #   `collection.fields`.
      #
      #   @return [Array<Symbol, Moonbase::Models::FormRetrieveParams::Include>, nil]
      optional :include, -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::FormRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::FormRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, Moonbase::Models::FormRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `col
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Moonbase::Internal::Type::Enum

        COLLECTION_FIELDS = :"collection.fields"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
