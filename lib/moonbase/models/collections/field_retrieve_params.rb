# frozen_string_literal: true

module Moonbase
  module Models
    module Collections
      # @see Moonbase::Resources::Collections::Fields#retrieve
      class FieldRetrieveParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        # @!attribute collection_id
        #
        #   @return [String]
        required :collection_id, String

        # @!method initialize(collection_id:, request_options: {})
        #   @param collection_id [String]
        #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
