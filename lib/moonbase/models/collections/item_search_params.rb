# frozen_string_literal: true

module Moonbase
  module Models
    module Collections
      # @see Moonbase::Resources::Collections::Items#search
      class ItemSearchParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        # @!attribute collection_id
        #
        #   @return [String]
        required :collection_id, String

        # @!attribute after
        #   When specified, returns results starting immediately after the item identified
        #   by this cursor. Use the cursor value from the previous response's metadata to
        #   fetch the next page of results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   When specified, returns results starting immediately before the item identified
        #   by this cursor. Use the cursor value from the response's metadata to fetch the
        #   previous page of results.
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute limit
        #   Maximum number of items to return per page. Must be between 1 and 100. Defaults
        #   to 20 if not specified.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute filter
        #   Return only items that match the filter conditions. Complex filters can be
        #   created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
        #
        #   @return [Moonbase::Models::ItemsFilterValueMatches, Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, nil]
        optional :filter, union: -> { Moonbase::ItemsFilter }

        # @!attribute include
        #   Include only specific fields in the returned items. Specify fields by id or key.
        #
        #   @return [Array<String>, nil]
        optional :include, Moonbase::Internal::Type::ArrayOf[String]

        # @!attribute sort
        #   Sort items by the specified field ids or keys. Prefix a field with a
        #   hyphen/minus (`-`) to sort in descending order by that field.
        #
        #   @return [Array<String>, nil]
        optional :sort, Moonbase::Internal::Type::ArrayOf[String]

        # @!method initialize(collection_id:, after: nil, before: nil, limit: nil, filter: nil, include: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::Collections::ItemSearchParams} for more details.
        #
        #   @param collection_id [String]
        #
        #   @param after [String] When specified, returns results starting immediately after the item identified b
        #
        #   @param before [String] When specified, returns results starting immediately before the item identified
        #
        #   @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
        #
        #   @param filter [Moonbase::Models::ItemsFilterValueMatches, Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup] Return only items that match the filter conditions. Complex filters can be creat
        #
        #   @param include [Array<String>] Include only specific fields in the returned items. Specify fields by id or key.
        #
        #   @param sort [Array<String>] Sort items by the specified field ids or keys. Prefix a field with a hyphen/minu
        #
        #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
