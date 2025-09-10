# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Collections#retrieve
    class CollectionRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response.
      #
      #   @return [Array<Symbol, Moonbase::Models::CollectionRetrieveParams::Include>, nil]
      optional :include,
               -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::CollectionRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   @param include [Array<Symbol, Moonbase::Models::CollectionRetrieveParams::Include>] Specifies which related objects to include in the response.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Moonbase::Internal::Type::Enum

        VIEWS = :views

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
