# frozen_string_literal: true

module Moonbase
  module Resources
    class Notes
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
