# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Meetings#retrieve
    class Meeting < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute end_at
      #   The end time of the meeting, as an RFC 3339 timestamp.
      #
      #   @return [Time]
      required :end_at, Time

      # @!attribute i_cal_uid
      #   The globally unique iCalendar UID for the meeting event.
      #
      #   @return [String]
      required :i_cal_uid, String

      # @!attribute links
      #
      #   @return [MoonbaseSDK::Models::Meeting::Links]
      required :links, -> { MoonbaseSDK::Meeting::Links }

      # @!attribute provider_id
      #   The unique identifier for the meeting from the external calendar provider (e.g.,
      #   Google Calendar).
      #
      #   @return [String]
      required :provider_id, String

      # @!attribute start_at
      #   The start time of the meeting, as an RFC 3339 timestamp.
      #
      #   @return [Time]
      required :start_at, Time

      # @!attribute time_zone
      #   The IANA time zone in which the meeting is scheduled (e.g.,
      #   `America/Los_Angeles`).
      #
      #   @return [String]
      required :time_zone, String

      # @!attribute type
      #   String representing the object’s type. Always `meeting` for this object.
      #
      #   @return [Symbol, :meeting]
      required :type, const: :meeting

      # @!attribute attendees
      #   A list of `Attendee` objects for the meeting.
      #
      #   @return [Array<MoonbaseSDK::Models::Attendee>, nil]
      optional :attendees, -> { MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Attendee] }

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute description
      #   A detailed description or agenda for the meeting.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute duration
      #   The duration of the meeting in seconds.
      #
      #   @return [Float, nil]
      optional :duration, Float

      # @!attribute location
      #   The physical or virtual location of the meeting.
      #
      #   @return [String, nil]
      optional :location, String

      # @!attribute organizer
      #   The `Organizer` of the meeting.
      #
      #   @return [MoonbaseSDK::Models::Organizer, nil]
      optional :organizer, -> { MoonbaseSDK::Organizer }

      # @!attribute provider_uri
      #   A URL to access the meeting in the external provider's system.
      #
      #   @return [String, nil]
      optional :provider_uri, String

      # @!attribute summary_ante
      #   A summary or notes generated before the meeting.
      #
      #   @return [String, nil]
      optional :summary_ante, String

      # @!attribute summary_post
      #   A summary or notes generated after the meeting.
      #
      #   @return [String, nil]
      optional :summary_post, String

      # @!attribute title
      #   The title or subject of the meeting.
      #
      #   @return [String, nil]
      optional :title, String

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, end_at:, i_cal_uid:, links:, provider_id:, start_at:, time_zone:, attendees: nil, created_at: nil, description: nil, duration: nil, location: nil, organizer: nil, provider_uri: nil, summary_ante: nil, summary_post: nil, title: nil, updated_at: nil, type: :meeting)
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::Meeting} for more details.
      #
      #   The Meeting object represents a calendar event. It includes details about the
      #   participants, timing, and associated content like summaries and recordings.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param end_at [Time] The end time of the meeting, as an RFC 3339 timestamp.
      #
      #   @param i_cal_uid [String] The globally unique iCalendar UID for the meeting event.
      #
      #   @param links [MoonbaseSDK::Models::Meeting::Links]
      #
      #   @param provider_id [String] The unique identifier for the meeting from the external calendar provider (e.g.,
      #
      #   @param start_at [Time] The start time of the meeting, as an RFC 3339 timestamp.
      #
      #   @param time_zone [String] The IANA time zone in which the meeting is scheduled (e.g., `America/Los_Angeles
      #
      #   @param attendees [Array<MoonbaseSDK::Models::Attendee>] A list of `Attendee` objects for the meeting.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param description [String] A detailed description or agenda for the meeting.
      #
      #   @param duration [Float] The duration of the meeting in seconds.
      #
      #   @param location [String] The physical or virtual location of the meeting.
      #
      #   @param organizer [MoonbaseSDK::Models::Organizer] The `Organizer` of the meeting.
      #
      #   @param provider_uri [String] A URL to access the meeting in the external provider's system.
      #
      #   @param summary_ante [String] A summary or notes generated before the meeting.
      #
      #   @param summary_post [String] A summary or notes generated after the meeting.
      #
      #   @param title [String] The title or subject of the meeting.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :meeting] String representing the object’s type. Always `meeting` for this object.

      # @see MoonbaseSDK::Models::Meeting#links
      class Links < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!attribute note
        #   A link to an associated `Note` object.
        #
        #   @return [String, nil]
        optional :note, String

        # @!attribute recording_url
        #   A temporary, signed URL to download the meeting recording. The URL expires after
        #   one hour.
        #
        #   @return [String, nil]
        optional :recording_url, String

        # @!attribute summary
        #   A link to a long-form summary of the meeting.
        #
        #   @return [String, nil]
        optional :summary, String

        # @!attribute transcript_url
        #   A temporary, signed URL to download the meeting transcript. The URL expires
        #   after one hour.
        #
        #   @return [String, nil]
        optional :transcript_url, String

        # @!method initialize(self_:, note: nil, recording_url: nil, summary: nil, transcript_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {MoonbaseSDK::Models::Meeting::Links} for more details.
        #
        #   @param self_ [String] The canonical URL for this object.
        #
        #   @param note [String] A link to an associated `Note` object.
        #
        #   @param recording_url [String] A temporary, signed URL to download the meeting recording. The URL expires after
        #
        #   @param summary [String] A link to a long-form summary of the meeting.
        #
        #   @param transcript_url [String] A temporary, signed URL to download the meeting transcript. The URL expires afte
      end
    end
  end
end
