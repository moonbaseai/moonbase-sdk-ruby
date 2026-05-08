# typed: strong

module Moonbase
  module Resources
    # Manage your meetings, files, and notes
    class Tagsets
      # Create a new tagset.
      sig do
        params(
          name: String,
          description: String,
          tags: T::Array[Moonbase::TagsetCreateParams::Tag::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Tagset)
      end
      def create(
        # The name of the tagset.
        name:,
        # An optional description of the tagset's purpose.
        description: nil,
        # Optional list of tags to create with this tagset. Tags are ordered by their
        # position in the list.
        tags: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing tagset.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Tagset)
      end
      def retrieve(
        # The ID of the tagset to retrieve.
        id,
        request_options: {}
      )
      end

      # Updates an existing tagset.
      sig do
        params(
          id: String,
          description: String,
          name: String,
          tags: T::Array[Moonbase::TagsetUpdateParams::Tag::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Tagset)
      end
      def update(
        # The ID of the tagset to update.
        id,
        # An updated description of the tagset.
        description: nil,
        # The new name of the tagset.
        name: nil,
        # Optional full list of tags for this tagset. If provided, tags are ordered by
        # array position.
        tags: nil,
        request_options: {}
      )
      end

      # Returns a list of your tagsets.
      sig do
        params(
          after: String,
          before: String,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::Tagset])
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

      # Permanently deletes a tagset.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The ID of the tagset to delete.
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
