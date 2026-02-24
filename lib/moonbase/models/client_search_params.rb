# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Client#search
    class ClientSearchParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute query
      #
      #   @return [String]
      required :query, String

      # @!method initialize(query:, request_options: {})
      #   @param query [String]
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
