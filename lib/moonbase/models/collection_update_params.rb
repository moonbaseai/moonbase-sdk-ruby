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

      # @!attribute icon_name
      #   The collection's icon, as a Phosphor icon name in kebab-case (e.g. `users`,
      #   `chart-bar`), or `null` to clear it.
      #
      #   @return [String, nil]
      optional :icon_name, String, nil?: true

      # @!attribute name
      #   The user-facing name of the collection.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(id:, description: nil, icon_name: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::CollectionUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param description [String] An optional, longer-form description of the collection's purpose.
      #
      #   @param icon_name [String, nil] The collection's icon, as a Phosphor icon name in kebab-case (e.g. `users`, `cha
      #
      #   @param name [String] The user-facing name of the collection.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
