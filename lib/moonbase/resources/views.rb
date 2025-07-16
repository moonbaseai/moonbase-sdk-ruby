# frozen_string_literal: true

module Moonbase
  module Resources
    class Views
      # @return [Moonbase::Resources::Views::Items]
      attr_reader :items

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::ViewRetrieveParams} for more details.
      #
      # Retrieves the details of an existing view.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the view to retrieve.
      #
      # @param include [Array<Symbol, Moonbase::Models::ViewRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `col
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::View]
      #
      # @see Moonbase::Models::ViewRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Moonbase::ViewRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["views/%1$s", id],
          query: parsed,
          model: Moonbase::View,
          options: options
        )
      end

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
        @items = Moonbase::Resources::Views::Items.new(client: client)
      end
    end
  end
end
