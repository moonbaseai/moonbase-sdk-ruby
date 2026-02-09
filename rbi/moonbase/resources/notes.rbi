# typed: strong

module Moonbase
  module Resources
    class Notes
      # Create a new note.
      sig do
        params(
          body: Moonbase::FormattedText::OrHash,
          associations: T::Array[Moonbase::Pointer::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Note)
      end
      def create(
        # The main content of the note.
        body:,
        # Link the Note to Moonbase items (person, organization, deal, task, or an item in
        # a custom collection), meetings, or calls.
        associations: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing note.
      sig do
        params(
          id: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Note)
      end
      def retrieve(
        # The ID of the note to retrieve.
        id,
        request_options: {}
      )
      end

      # Update an existing note.
      sig do
        params(
          id: String,
          body: Moonbase::FormattedText::OrHash,
          lock_version: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Note)
      end
      def update(
        # The ID of the note to update.
        id,
        # The main content of the note.
        body:,
        # The current lock version of the note for optimistic concurrency control.
        lock_version:,
        request_options: {}
      )
      end

      # Returns a list of your notes.
      sig do
        params(
          after: String,
          before: String,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::Note])
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
