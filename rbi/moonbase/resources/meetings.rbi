# typed: strong

module Moonbase
  module Resources
    class Meetings
      # Retrieves the details of an existing meeting.
      sig do
        params(
          id: String,
          include: T::Array[Moonbase::MeetingRetrieveParams::Include::OrSymbol],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Meeting)
      end
      def retrieve(
        # The ID of the meeting to retrieve.
        id,
        # Specifies which related objects to include in the response. Valid options are
        # `organizer`, `attendees`, `transcript`, `note`, and `summary`.
        include: nil,
        request_options: {}
      )
      end

      # Adds a transcript or recording to an existing meeting.
      sig do
        params(
          id: String,
          recording: Moonbase::MeetingUpdateParams::Recording::OrHash,
          transcript: Moonbase::MeetingUpdateParams::Transcript::OrHash,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Meeting)
      end
      def update(
        # The ID of the meeting to update.
        id,
        # A video recording of the meeting.
        recording: nil,
        # The meeting transcript.
        transcript: nil,
        request_options: {}
      )
      end

      # Returns a list of meetings.
      sig do
        params(
          after: String,
          before: String,
          filter: Moonbase::MeetingListParams::Filter::OrHash,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Internal::CursorPage[Moonbase::Meeting])
      end
      def list(
        # When specified, returns results starting immediately after the item identified
        # by this cursor. Use the cursor value from the previous response's metadata to
        # fetch the next page of results.
        after: nil,
        # When specified, returns results starting immediately before the item identified
        # by this cursor. Use the cursor value from the response's metadata to fetch the
        # previous page of results.
        before: nil,
        filter: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Moonbase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
