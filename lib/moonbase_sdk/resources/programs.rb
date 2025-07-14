# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class Programs
      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::ProgramRetrieveParams} for more details.
      #
      # Retrieves the details of an existing program.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the program to retrieve.
      #
      # @param include [Array<Symbol, MoonbaseSDK::Models::ProgramRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::Program]
      #
      # @see MoonbaseSDK::Models::ProgramRetrieveParams
      def retrieve(id, params = {})
        parsed, options = MoonbaseSDK::ProgramRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["programs/%1$s", id],
          query: parsed,
          model: MoonbaseSDK::Program,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::ProgramListParams} for more details.
      #
      # Returns a list of your marketing programs.
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
      # @return [MoonbaseSDK::Internal::CursorPage<MoonbaseSDK::Models::Program>]
      #
      # @see MoonbaseSDK::Models::ProgramListParams
      def list(params = {})
        parsed, options = MoonbaseSDK::ProgramListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "programs",
          query: parsed,
          page: MoonbaseSDK::Internal::CursorPage,
          model: MoonbaseSDK::Program,
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
