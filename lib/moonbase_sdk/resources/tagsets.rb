# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class Tagsets
      # Retrieves the details of an existing tagset.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the tagset to retrieve.
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::Tagset]
      #
      # @see MoonbaseSDK::Models::TagsetRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["tagsets/%1$s", id],
          model: MoonbaseSDK::Tagset,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::TagsetListParams} for more details.
      #
      # Returns a list of your tagsets.
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
      # @return [MoonbaseSDK::Internal::CursorPage<MoonbaseSDK::Models::Tagset>]
      #
      # @see MoonbaseSDK::Models::TagsetListParams
      def list(params = {})
        parsed, options = MoonbaseSDK::TagsetListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "tagsets",
          query: parsed,
          page: MoonbaseSDK::Internal::CursorPage,
          model: MoonbaseSDK::Tagset,
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
