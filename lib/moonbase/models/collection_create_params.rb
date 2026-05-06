# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Collections#create
    class CollectionCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute name
      #   The user-facing name of the collection (e.g., "Leads"). A `ref` is automatically
      #   derived from the name.
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #   An optional, longer-form description of the collection's purpose.
      #
      #   @return [String, nil]
      optional :description, String

      # @!method initialize(name:, description: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::CollectionCreateParams} for more details.
      #
      #   @param name [String] The user-facing name of the collection (e.g., "Leads"). A `ref` is automatically
      #
      #   @param description [String] An optional, longer-form description of the collection's purpose.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
