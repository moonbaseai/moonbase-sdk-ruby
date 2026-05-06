# typed: strong

module Moonbase
  module Resources
    # Manage your collections and items
    class Funnels
      # Creates a new funnel.
      sig do
        params(
          name: String,
          steps: T::Array[Moonbase::FunnelCreateParams::Step::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Funnel)
      end
      def create(
        # The name of the funnel.
        name:,
        # An ordered list of steps to create. Array order determines step order.
        steps: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing funnel.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Funnel)
      end
      def retrieve(
        # The ID of the funnel to retrieve.
        id,
        request_options: {}
      )
      end

      # Updates a funnel.
      sig do
        params(
          id: String,
          name: String,
          steps: T::Array[Moonbase::FunnelUpdateParams::Step::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Funnel)
      end
      def update(
        # The ID of the funnel to update.
        id,
        # The name of the funnel.
        name: nil,
        # An ordered list of steps. Providing this replaces all existing steps. Omitting
        # preserves existing steps.
        steps: nil,
        request_options: {}
      )
      end

      # Returns a list of funnels.
      sig do
        params(
          after: String,
          before: String,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::Funnel])
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

      # Permanently deletes a funnel.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The ID of the funnel to delete.
        id,
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
