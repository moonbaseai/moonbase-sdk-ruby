# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class Inboxes
      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::InboxRetrieveParams} for more details.
      #
      # Retrieves the details of an existing inbox.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the Inbox to retrieve.
      #
      # @param include [Symbol, MoonbaseSDK::Models::InboxRetrieveParams::Include] Specifies which related objects to include in the response. Valid option is `tag
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::Inbox]
      #
      # @see MoonbaseSDK::Models::InboxRetrieveParams
      def retrieve(id, params = {})
        parsed, options = MoonbaseSDK::InboxRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["inboxes/%1$s", id],
          query: parsed.transform_keys(include: "include[]"),
          model: MoonbaseSDK::Inbox,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::InboxListParams} for more details.
      #
      # Returns a list of shared inboxes.
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
      # @return [MoonbaseSDK::Internal::CursorPage<MoonbaseSDK::Models::Inbox>]
      #
      # @see MoonbaseSDK::Models::InboxListParams
      def list(params = {})
        parsed, options = MoonbaseSDK::InboxListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inboxes",
          query: parsed,
          page: MoonbaseSDK::Internal::CursorPage,
          model: MoonbaseSDK::Inbox,
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
