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
        #   @return [Moonbase::Models::Item]
        required :data, -> { Moonbase::Item }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::SearchResponse::Data} for more details.
        #
        #   A search result entry
        #
        #   @param data [Moonbase::Models::Item] An Item represents a single record or row within a Collection. It holds a set of
      end
    end
  end
end
