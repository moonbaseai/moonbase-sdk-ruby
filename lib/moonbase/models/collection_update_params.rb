# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Collections#update
    class CollectionUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #   An optional, longer-form description of the collection's purpose.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute name
      #   The user-facing name of the collection.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(id:, description: nil, name: nil, request_options: {})
      #   @param id [String]
      #
      #   @param description [String] An optional, longer-form description of the collection's purpose.
      #
      #   @param name [String] The user-facing name of the collection.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
