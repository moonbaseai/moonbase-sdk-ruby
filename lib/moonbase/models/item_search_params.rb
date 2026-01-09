# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Items#search
    class ItemSearchParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute query
      #   The search text to match against items.
      #
      #   @return [String]
      required :query, String

      # @!attribute filter
      #   Filter results by one or more collection IDs or `ref` values.
      #
      #   @return [Moonbase::Models::ItemSearchParams::Filter, nil]
      optional :filter, -> { Moonbase::ItemSearchParams::Filter }

      # @!method initialize(query:, filter: nil, request_options: {})
      #   @param query [String] The search text to match against items.
      #
      #   @param filter [Moonbase::Models::ItemSearchParams::Filter] Filter results by one or more collection IDs or `ref` values.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Moonbase::Internal::Type::BaseModel
        # @!attribute collection_id
        #
        #   @return [Moonbase::Models::ItemSearchParams::Filter::CollectionID, nil]
        optional :collection_id, -> { Moonbase::ItemSearchParams::Filter::CollectionID }

        # @!method initialize(collection_id: nil)
        #   Filter results by one or more collection IDs or `ref` values.
        #
        #   @param collection_id [Moonbase::Models::ItemSearchParams::Filter::CollectionID]

        # @see Moonbase::Models::ItemSearchParams::Filter#collection_id
        class CollectionID < Moonbase::Internal::Type::BaseModel
          # @!attribute in_
          #
          #   @return [Array<String>, nil]
          optional :in_, Moonbase::Internal::Type::ArrayOf[String], api_name: :in

          # @!method initialize(in_: nil)
          #   @param in_ [Array<String>]
        end
      end
    end
  end
end
