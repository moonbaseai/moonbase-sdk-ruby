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

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::Collections::ItemSearchResponse} for more details.
        #
        #   A search result entry
        #
        #   @param data [Moonbase::Models::Item] An Item represents a single record or row within a Collection. It holds a set of
      end
    end
  end
end
