# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Client#search
    class SearchResponse < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Moonbase::Models::SearchResponse::Data>]
      required :data, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Models::SearchResponse::Data] }

      # @!attribute type
      #
      #   @return [Symbol, :list]
      required :type, const: :list

      # @!method initialize(data:, type: :list)
      #   A list of search results.
      #
      #   @param data [Array<Moonbase::Models::SearchResponse::Data>]
      #   @param type [Symbol, :list]

      class Data < Moonbase::Internal::Type::BaseModel
        # @!attribute data
        #   An Item represents a single record or row within a Collection. It holds a set of
        #   `values` corresponding to the Collection's `fields`.
        #
        #   @return [Moonbase::Models::Item, Moonbase::Models::MoonbaseFile]
        required :data, union: -> { Moonbase::Models::SearchResponse::Data::Data }

        # @!attribute type
        #
        #   @return [Symbol, :search_result]
        required :type, const: :search_result

        # @!method initialize(data:, type: :search_result)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::SearchResponse::Data} for more details.
        #
        #   A search result entry.
        #
        #   @param data [Moonbase::Models::Item, Moonbase::Models::MoonbaseFile] An Item represents a single record or row within a Collection. It holds a set of
        #
        #   @param type [Symbol, :search_result]

        # An Item represents a single record or row within a Collection. It holds a set of
        # `values` corresponding to the Collection's `fields`.
        #
        # @see Moonbase::Models::SearchResponse::Data#data
        module Data
          extend Moonbase::Internal::Type::Union

          discriminator :type

          # An Item represents a single record or row within a Collection. It holds a set of `values` corresponding to the Collection's `fields`.
          variant :item, -> { Moonbase::Item }

          # The File object represents a file that has been uploaded to your library.
          variant :file, -> { Moonbase::MoonbaseFile }

          # @!method self.variants
          #   @return [Array(Moonbase::Models::Item, Moonbase::Models::MoonbaseFile)]
        end
      end
    end
  end
end
