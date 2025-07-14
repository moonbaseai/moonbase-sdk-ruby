# frozen_string_literal: true

module Moonbase
  module Resources
    class Meetings
      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::MeetingRetrieveParams} for more details.
      #
      # Retrieves the details of an existing meeting.
      #
      # @overload retrieve(id, include: nil, request_options: {})
      #
      # @param id [String] The ID of the meeting to retrieve.
      #
      # @param include [Array<Symbol, Moonbase::Models::MeetingRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `o
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Meeting]
      #
      # @see Moonbase::Models::MeetingRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Moonbase::MeetingRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["meetings/%1$s", id],
          query: parsed,
          model: Moonbase::Meeting,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::MeetingListParams} for more details.
      #
      # Returns a list of meetings.
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
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Meeting>]
      #
      # @see Moonbase::Models::MeetingListParams
      def list(params = {})
        parsed, options = Moonbase::MeetingListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "meetings",
          query: parsed,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::Meeting,
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
