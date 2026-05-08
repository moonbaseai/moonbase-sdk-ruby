# frozen_string_literal: true

module Moonbase
  module Models
    module Collections
      # @see Moonbase::Resources::Collections::Items#search
      class ItemSearchResponse < Moonbase::Internal::Type::BaseModel
        # @!attribute data
        #   An Item represents a single record or row within a Collection. It holds a set of
        #   `values` corresponding to the Collection's `fields`.
        #
        #   @return [Moonbase::Models::Item]
        required :data, -> { Moonbase::Item }

        # @!attribute type
        #
        #   @return [Symbol, :search_result]
        required :type, const: :search_result

        # @!method initialize(data:, type: :search_result)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::Collections::ItemSearchResponse} for more details.
        #
        #   A collection search result entry containing an item.
        #
        #   @param data [Moonbase::Models::Item] An Item represents a single record or row within a Collection. It holds a set of
        #
        #   @param type [Symbol, :search_result]
      end
    end
  end
end
