# frozen_string_literal: true

module Moonbase
  module Resources
    class Programs
      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::ProgramRetrieveParams} for more details.
      #
      # Retrieves the details of an existing program.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the program to retrieve.
      #
      # @param include [Array<Symbol, Moonbase::Models::ProgramRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Program]
      #
      # @see Moonbase::Models::ProgramRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Moonbase::ProgramRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["programs/%1$s", id],
          query: parsed,
          model: Moonbase::Program,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::ProgramListParams} for more details.
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
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Program>]
      #
      # @see Moonbase::Models::ProgramListParams
      def list(params = {})
        parsed, options = Moonbase::ProgramListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "programs",
          query: parsed,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Program,
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
