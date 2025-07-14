# typed: strong

module MoonbaseSDK
  module Resources
    class Collections
      sig { returns(MoonbaseSDK::Resources::Collections::Fields) }
      attr_reader :fields

      # Retrieves the details of an existing collection.
      sig do
        params(
          id: String,
          include:
            T::Array[MoonbaseSDK::CollectionRetrieveParams::Include::OrSymbol],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Collection)
      end
      def retrieve(
        # The ID or `ref` of the Collection to retrieve.
        id,
        # Specifies which related objects to include in the response. Valid options are
        # `fields` and `views`.
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
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Internal::CursorPage[MoonbaseSDK::Collection])
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
      sig { params(client: MoonbaseSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
