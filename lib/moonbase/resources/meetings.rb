# frozen_string_literal: true

module Moonbase
  module Resources
    # Manage your meetings, files, and notes
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
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["meetings/%1$s", id],
          query: query,
          model: Moonbase::Meeting,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::MeetingUpdateParams} for more details.
      #
      # Adds a transcript, recording, or tags to an existing meeting.
      #
      # @overload update(id, recording: nil, tags: nil, transcript: nil, request_options: {})
      #
      # @param id [String] The ID of the meeting to update.
      #
      # @param recording [Moonbase::Models::MeetingUpdateParams::Recording] A video recording of the meeting.
      #
      # @param tags [Array<Moonbase::Models::TagPointerParam>] Optional list of tag pointers to assign to the meeting. If omitted, existing tag
      #
      # @param transcript [Moonbase::Models::MeetingUpdateParams::Transcript] The meeting transcript.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Meeting]
      #
      # @see Moonbase::Models::MeetingUpdateParams
      def update(id, params = {})
        parsed, options = Moonbase::MeetingUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["meetings/%1$s", id],
          body: parsed,
          model: Moonbase::Meeting,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::MeetingListParams} for more details.
      #
      # Returns a list of meetings.
      #
      # @overload list(after: nil, before: nil, i_cal_uid: nil, limit: nil, request_options: {})
      #
      # @param after [String] When specified, returns results starting immediately after the item identified b
      #
      # @param before [String] When specified, returns results starting immediately before the item identified
      #
      # @param i_cal_uid [Moonbase::Models::MeetingListParams::ICalUid]
      #
      # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Internal::CursorPage<Moonbase::Models::MeetingPointer>]
      #
      # @see Moonbase::Models::MeetingListParams
      def list(params = {})
        parsed, options = Moonbase::MeetingListParams.dump_request(params)
        query = Moonbase::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "meetings",
          query: query,
          page: Moonbase::Internal::CursorPage,
          model: Moonbase::MeetingPointer,
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
