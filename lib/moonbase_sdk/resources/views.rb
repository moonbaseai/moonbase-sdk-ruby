# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class Views
      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::ViewRetrieveParams} for more details.
      #
      # Retrieves the details of an existing view.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the view to retrieve.
      #
      # @param include [Array<Symbol, MoonbaseSDK::Models::ViewRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `col
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::View]
      #
      # @see MoonbaseSDK::Models::ViewRetrieveParams
      def retrieve(id, params = {})
        parsed, options = MoonbaseSDK::ViewRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["views/%1$s", id],
          query: parsed,
          model: MoonbaseSDK::View,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::ViewListItemsParams} for more details.
      #
      # Returns a list of items that are part of the specified view.
      #
      # @overload list_items(id, after: nil, before: nil, limit: nil, request_options: {})
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
      # @see MoonbaseSDK::Models::ViewListItemsParams
      def list_items(id, params = {})
        parsed, options = MoonbaseSDK::ViewListItemsParams.dump_request(params)
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
