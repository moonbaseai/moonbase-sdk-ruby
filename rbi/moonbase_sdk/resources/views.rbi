# typed: strong

module MoonbaseSDK
  module Resources
    class Views
      # Retrieves the details of an existing view.
      sig do
        params(
          id: String,
          include: T::Array[MoonbaseSDK::ViewRetrieveParams::Include::OrSymbol],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::View)
      end
      def retrieve(
        # The ID of the view to retrieve.
        id,
        # Specifies which related objects to include in the response. Valid option is
        # `collection`.
        include: nil,
        request_options: {}
      )
      end

      # Returns a list of items that are part of the specified view.
      sig do
        params(
          id: String,
          after: String,
          before: String,
          limit: Integer,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Internal::CursorPage[MoonbaseSDK::Item])
      end
      def list_items(
        # The ID of the view.
        id,
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
