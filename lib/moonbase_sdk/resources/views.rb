# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class Views
      # @return [MoonbaseSDK::Resources::Views::Items]
      attr_reader :items

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

      # @api private
      #
      # @param client [MoonbaseSDK::Client]
      def initialize(client:)
        @client = client
        @items = MoonbaseSDK::Resources::Views::Items.new(client: client)
      end
    end
  end
end
