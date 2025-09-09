# typed: strong

module Moonbase
  module Resources
    class Collections
      sig { returns(Moonbase::Resources::Collections::Fields) }
      attr_reader :fields

      sig { returns(Moonbase::Resources::Collections::Items) }
      attr_reader :items

      # Retrieves the details of an existing collection.
      sig do
        params(
          id: String,
          include:
            T::Array[Moonbase::CollectionRetrieveParams::Include::OrSymbol],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Collection)
      end
      def retrieve(
        # The ID or `ref` of the Collection to retrieve.
        id,
        # Specifies which related objects to include in the response.
        include: nil,
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
        ).returns(Moonbase::Internal::CursorPage[Moonbase::Collection])
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
