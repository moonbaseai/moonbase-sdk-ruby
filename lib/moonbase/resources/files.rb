# frozen_string_literal: true

module Moonbase
  module Resources
    class Files
      # Retrieves the details of an existing file.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the File to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::MoonbaseFile]
      #
      # @see Moonbase::Models::FileRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["files/%1$s", id],
          model: Moonbase::MoonbaseFile,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::FileListParams} for more details.
      #
      # Returns a list of files that you have uploaded.
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
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::MoonbaseFile>]
      #
      # @see Moonbase::Models::FileListParams
      def list(params = {})
        parsed, options = Moonbase::FileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "files",
          query: parsed,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::MoonbaseFile,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::FileUploadParams} for more details.
      #
      # Upload a file
      #
      # @overload upload(file:, associations: nil, name: nil, request_options: {})
      #
      # @param file [Pathname, StringIO, IO, String, Moonbase::FilePart] The File object to be uploaded.
      #
      # @param associations [Array<Moonbase::Models::Pointer>] Link the File to Moonbase items like a person, organization, deal, task, or an i
      #
      # @param name [String] The display name of the file.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::MoonbaseFile]
      #
      # @see Moonbase::Models::FileUploadParams
      def upload(params)
        parsed, options = Moonbase::FileUploadParams.dump_request(params)
        @client.request(
          method: :post,
          path: "files",
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: Moonbase::MoonbaseFile,
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
