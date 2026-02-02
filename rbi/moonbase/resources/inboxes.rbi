# typed: strong

module Moonbase
  module Resources
    class Inboxes
      # Retrieves the details of an existing inbox.
      sig do
        params(
          id: String,
          include: T::Array[Moonbase::InboxRetrieveParams::Include::OrSymbol],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Inbox)
      end
      def retrieve(
        # The ID of the Inbox to retrieve.
        id,
        # Specifies which related objects to include in the response. Valid option is
        # `tagsets`.
        include: nil,
        request_options: {}
      )
      end

      # Returns a list of shared inboxes.
      sig do
        params(
          after: String,
          before: String,
          include: T::Array[Moonbase::InboxListParams::Include::OrSymbol],
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::Inbox])
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
        include: nil,
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
