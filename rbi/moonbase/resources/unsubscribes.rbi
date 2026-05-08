# typed: strong

module Moonbase
  module Resources
    # Manage your marketing campaigns and forms
    class Unsubscribes
      # Create a new unsubscribe.
      sig do
        params(
          email: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Unsubscribe)
      end
      def create(email:, request_options: {})
      end

      # Returns a list of unsubscribes.
      sig do
        params(
          after: String,
          before: String,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::Unsubscribe])
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

      # Permanently deletes an unsubscribe by email address.
      sig do
        params(
          email: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The email address of the unsubscribe to delete.
        email,
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
