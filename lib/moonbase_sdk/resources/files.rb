# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class Files
      # Retrieves the details of an existing file.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the File to retrieve.
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::MoonbaseFile]
      #
      # @see MoonbaseSDK::Models::FileRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["files/%1$s", id],
          model: MoonbaseSDK::MoonbaseFile,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::FileListParams} for more details.
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
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Internal::CursorPage<MoonbaseSDK::Models::MoonbaseFile>]
      #
      # @see MoonbaseSDK::Models::FileListParams
      def list(params = {})
        parsed, options = MoonbaseSDK::FileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "files",
          query: parsed,
          page: MoonbaseSDK::Internal::CursorPage,
          model: MoonbaseSDK::MoonbaseFile,
          options: options
        )
      end

      # @api private
      #
      # @param client [MoonbaseSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
