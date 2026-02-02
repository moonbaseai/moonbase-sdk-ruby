# frozen_string_literal: true

module Moonbase
  module Resources
    class Items
      # Returns items that match the search query.
      #
      # @overload search(query:, filter: nil, request_options: {})
      #
      # @param query [String] The search text to match against items.
      #
      # @param filter [Moonbase::Models::ItemSearchParams::Filter] Filter results by one or more collection IDs or `ref` values.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::ItemSearchResponse]
      #
      # @see Moonbase::Models::ItemSearchParams
      def search(params)
        parsed, options = Moonbase::ItemSearchParams.dump_request(params)
        @client.request(
          method: :get,
          path: "items/search",
          query: parsed,
          model: Moonbase::Models::ItemSearchResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
