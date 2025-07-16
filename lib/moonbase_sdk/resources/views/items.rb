# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class Views
      class Items
        # Some parameter documentations has been truncated, see
        # {MoonbaseSDK::Models::Views::ItemListParams} for more details.
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
        # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MoonbaseSDK::Internal::CursorPage<MoonbaseSDK::Models::Item>]
        #
        # @see MoonbaseSDK::Models::Views::ItemListParams
        def list(id, params = {})
          parsed, options = MoonbaseSDK::Views::ItemListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["views/%1$s/items", id],
            query: parsed,
            page: MoonbaseSDK::Internal::CursorPage,
            model: MoonbaseSDK::Item,
            options: options
          )
        end

        # @api private
        #
        # @param client [MoonbaseSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
