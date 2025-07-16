# frozen_string_literal: true

module Moonbase
  module Resources
    class Collections
      # @return [Moonbase::Resources::Collections::Fields]
      attr_reader :fields

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::CollectionRetrieveParams} for more details.
      #
      # Retrieves the details of an existing collection.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID or `ref` of the Collection to retrieve.
      #
      # @param include [Array<Symbol, Moonbase::Models::CollectionRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `f
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Collection]
      #
      # @see Moonbase::Models::CollectionRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Moonbase::CollectionRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["collections/%1$s", id],
          query: parsed,
          model: Moonbase::Collection,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::CollectionListParams} for more details.
      #
      # Returns a list of your collections.
      #
      # @overload list(after: nil, before: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Collection>]
      #
      # @see Moonbase::Models::CollectionListParams
      def list(params = {})
        parsed, options = Moonbase::CollectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "collections",
          query: parsed,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Collection,
          options: options
        )
      end

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
        @fields = Moonbase::Resources::Collections::Fields.new(client: client)
      end
    end
  end
end
