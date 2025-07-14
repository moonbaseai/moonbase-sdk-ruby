# typed: strong

module MoonbaseSDK
  module Resources
    class Tagsets
      # Retrieves the details of an existing tagset.
      sig do
        params(
          id: String,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Tagset)
      end
      def retrieve(
        # The ID of the tagset to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a list of your tagsets.
      sig do
        params(
          after: String,
          before: String,
          limit: Integer,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Internal::CursorPage[MoonbaseSDK::Tagset])
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
