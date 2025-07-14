# frozen_string_literal: true

module Moonbase
  module Resources
    class Views
      class Items
        # Some parameter documentations has been truncated, see
        # {Moonbase::Models::Views::ItemListParams} for more details.
        #
        # Returns a list of items that are part of the specified view.
        #
        # @overload list(id, after: nil, before: nil, limit: nil, request_options: {})
        #
        # @param id [String] The ID of the view.
        #
        # @param after [String] When specified, returns results starting immediately after the item identified b
        #
        # @param before [String] When specified, returns results starting immediately before the item identified
        #
        # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Item>]
        #
        # @see Moonbase::Models::Views::ItemListParams
        def list(id, params = {})
          parsed, options = Moonbase::Views::ItemListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["views/%1$s/items", id],
            query: parsed,
            page: Moonbase::Internal::CursorPage,
            model: Moonbase::Item,
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
end
