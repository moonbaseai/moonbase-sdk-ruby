# frozen_string_literal: true

module Moonbase
  module Resources
    # Manage your collections and items
    class Collections
      # Manage your collections and items
      # @return [Moonbase::Resources::Collections::Fields]
      attr_reader :fields

      # Manage your collections and items
      # @return [Moonbase::Resources::Collections::Items]
      attr_reader :items

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::CollectionCreateParams} for more details.
      #
      # Creates a new collection with default fields (name, created_at, updated_at) and
      # a default view.
      #
      # @overload create(name:, description: nil, request_options: {})
      #
      # @param name [String] The user-facing name of the collection (e.g., "Leads"). A `ref` is automatically
      #
      # @param description [String] An optional, longer-form description of the collection's purpose.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Collection]
      #
      # @see Moonbase::Models::CollectionCreateParams
      def create(params)
        parsed, options = Moonbase::CollectionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "collections",
          body: parsed,
          model: Moonbase::Collection,
          options: options
        )
      end

      # Retrieves the details of an existing collection.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID or `ref` of the Collection to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Collection]
      #
      # @see Moonbase::Models::CollectionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["collections/%1$s", id],
          model: Moonbase::Collection,
          options: params[:request_options]
        )
      end

      # Updates an existing collection.
      #
      # @overload update(id, description: nil, name: nil, request_options: {})
      #
      # @param id [String] The ID or `ref` of the Collection to update.
      #
      # @param description [String] An optional, longer-form description of the collection's purpose.
      #
      # @param name [String] The user-facing name of the collection.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Collection]
      #
      # @see Moonbase::Models::CollectionUpdateParams
      def update(id, params = {})
        parsed, options = Moonbase::CollectionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["collections/%1$s", id],
          body: parsed,
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
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::CollectionListResponse>]
      #
      # @see Moonbase::Models::CollectionListParams
      def list(params = {})
        parsed, options = Moonbase::CollectionListParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "collections",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Models::CollectionListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
        @fields = Moonbase::Resources::Collections::Fields.new(client: client)
        @items = Moonbase::Resources::Collections::Items.new(client: client)
      end
    end
  end
end
