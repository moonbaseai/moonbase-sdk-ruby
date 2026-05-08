# typed: strong

module Moonbase
  module Resources
    # Manage your collections and items
    class Collections
      # Manage your collections and items
      sig { returns(Moonbase::Resources::Collections::Fields) }
      attr_reader :fields

      # Manage your collections and items
      sig { returns(Moonbase::Resources::Collections::Items) }
      attr_reader :items

      # Creates a new collection with default fields (name, created_at, updated_at) and
      # a default view.
      sig do
        params(
          name: String,
          description: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Collection)
      end
      def create(
        # The user-facing name of the collection (e.g., "Leads"). A `ref` is automatically
        # derived from the name.
        name:,
        # An optional, longer-form description of the collection's purpose.
        description: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing collection.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Collection)
      end
      def retrieve(
        # The ID or `ref` of the Collection to retrieve.
        id,
        request_options: {}
      )
      end

      # Updates an existing collection.
      sig do
        params(
          id: String,
          description: String,
          name: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Collection)
      end
      def update(
        # The ID or `ref` of the Collection to update.
        id,
        # An optional, longer-form description of the collection's purpose.
        description: nil,
        # The user-facing name of the collection.
        name: nil,
        request_options: {}
      )
      end

      # Returns a list of your collections.
      sig do
        params(
          after: String,
          before: String,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(
          Moonbase::Internal::CursorPage[
            Moonbase::Models::CollectionListResponse
          ]
        )
      end
      def list(
        # When specified, returns results starting immediately after the item identified
        # by this cursor. Use the cursor value from the previous response's metadata to
        # fetch the next page of results.
        after: nil,
        # When specified, returns results starting immediately before the item identified
        # by this cursor. Use the cursor value from the response's metadata to fetch the
        # previous page of results.
        before: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Moonbase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
