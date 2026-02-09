# frozen_string_literal: true

module Moonbase
  module Resources
    class Notes
      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::NoteCreateParams} for more details.
      #
      # Create a new note.
      #
      # @overload create(body:, associations: nil, request_options: {})
      #
      # @param body [Moonbase::Models::FormattedText] The main content of the note.
      #
      # @param associations [Array<Moonbase::Models::Pointer>] Link the Note to Moonbase items (person, organization, deal, task, or an item in
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Note]
      #
      # @see Moonbase::Models::NoteCreateParams
      def create(params)
        parsed, options = Moonbase::NoteCreateParams.dump_request(params)
        @client.request(method: :post, path: "notes", body: parsed, model: Moonbase::Note, options: options)
      end

      # Retrieves the details of an existing note.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the note to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Note]
      #
      # @see Moonbase::Models::NoteRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["notes/%1$s", id],
          model: Moonbase::Note,
          options: params[:request_options]
        )
      end

      # Update an existing note.
      #
      # @overload update(id, body:, lock_version:, request_options: {})
      #
      # @param id [String] The ID of the note to update.
      #
      # @param body [Moonbase::Models::FormattedText] The main content of the note.
      #
      # @param lock_version [Integer] The current lock version of the note for optimistic concurrency control.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Note]
      #
      # @see Moonbase::Models::NoteUpdateParams
      def update(id, params)
        parsed, options = Moonbase::NoteUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["notes/%1$s", id],
          body: parsed,
          model: Moonbase::Note,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::NoteListParams} for more details.
      #
      # Returns a list of your notes.
      #
      # @overload list(after: nil, before: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Note>]
      #
      # @see Moonbase::Models::NoteListParams
      def list(params = {})
        parsed, options = Moonbase::NoteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "notes",
          query: parsed,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Note,
          options: options
        )
      end

      # @api private
      #
      # @param client [Moonbase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
