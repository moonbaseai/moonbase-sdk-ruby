# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Meetings#retrieve
    class Meeting < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute end_at
      #   The end time of the meeting, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :end_at, Time

      # @!attribute i_cal_uid
      #   The globally unique iCalendar UID for the meeting event.
      #
      #   @return [String]
      required :i_cal_uid, String

      # @!attribute provider_id
      #   The unique identifier for the meeting from the external calendar provider (e.g.,
      #   Google Calendar).
      #
      #   @return [String]
      required :provider_id, String

      # @!attribute start_at
      #   The start time of the meeting, as an ISO 8601 timestamp in UTC.
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

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute attendees
      #   A list of `Attendee` objects for the meeting.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Array<Moonbase::Models::Attendee>, nil]
      optional :attendees, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Attendee] }

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

      # @!attribute note
      #   Any personal notes taken during the meeting. It also includes the AI-generated
      #   pre-meeting briefing.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::Note, nil]
      optional :note, -> { Moonbase::Note }

      # @!attribute organizer
      #   The `Organizer` of the meeting.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::Organizer, nil]
      optional :organizer, -> { Moonbase::Organizer }

      # @!attribute provider_uri
      #   A URL to access the meeting in the external provider's system.
      #
      #   @return [String, nil]
      optional :provider_uri, String

      # @!attribute recording_url
      #   A temporary, signed URL to download the meeting recording. The URL expires after
      #   one hour.
      #
      #   @return [String, nil]
      optional :recording_url, String

      # @!attribute summary
      #   A summary of the meeting.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::Note, nil]
      optional :summary, -> { Moonbase::Note }

      # @!attribute title
      #   The title or subject of the meeting.
      #
      #   @return [String, nil]
      optional :title, String

      # @!attribute transcript
      #
      #   @return [Moonbase::Models::Meeting::Transcript, nil]
      optional :transcript, -> { Moonbase::Meeting::Transcript }, nil?: true

      # @!method initialize(id:, created_at:, end_at:, i_cal_uid:, provider_id:, start_at:, time_zone:, updated_at:, attendees: nil, description: nil, duration: nil, location: nil, note: nil, organizer: nil, provider_uri: nil, recording_url: nil, summary: nil, title: nil, transcript: nil, type: :meeting)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Meeting} for more details.
      #
      #   The Meeting object represents a calendar event. It includes details about the
      #   participants, timing, and associated content like summaries and recordings.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param end_at [Time] The end time of the meeting, as an ISO 8601 timestamp in UTC.
      #
      #   @param i_cal_uid [String] The globally unique iCalendar UID for the meeting event.
      #
      #   @param provider_id [String] The unique identifier for the meeting from the external calendar provider (e.g.,
      #
      #   @param start_at [Time] The start time of the meeting, as an ISO 8601 timestamp in UTC.
      #
      #   @param time_zone [String] The IANA time zone in which the meeting is scheduled (e.g., `America/Los_Angeles
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param attendees [Array<Moonbase::Models::Attendee>] A list of `Attendee` objects for the meeting.
      #
      #   @param description [String] A detailed description or agenda for the meeting.
      #
      #   @param duration [Float] The duration of the meeting in seconds.
      #
      #   @param location [String] The physical or virtual location of the meeting.
      #
      #   @param note [Moonbase::Models::Note] Any personal notes taken during the meeting. It also includes the AI-generated p
      #
      #   @param organizer [Moonbase::Models::Organizer] The `Organizer` of the meeting.
      #
      #   @param provider_uri [String] A URL to access the meeting in the external provider's system.
      #
      #   @param recording_url [String] A temporary, signed URL to download the meeting recording. The URL expires after
      #
      #   @param summary [Moonbase::Models::Note] A summary of the meeting.
      #
      #   @param title [String] The title or subject of the meeting.
      #
      #   @param transcript [Moonbase::Models::Meeting::Transcript, nil]
      #
      #   @param type [Symbol, :meeting] String representing the object’s type. Always `meeting` for this object.

      # @see Moonbase::Models::Meeting#transcript
      class Transcript < Moonbase::Internal::Type::BaseModel
        # @!attribute cues
        #
        #   @return [Array<Moonbase::Models::Meeting::Transcript::Cue>]
        required :cues, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Meeting::Transcript::Cue] }

        # @!method initialize(cues:)
        #   @param cues [Array<Moonbase::Models::Meeting::Transcript::Cue>]

        class Cue < Moonbase::Internal::Type::BaseModel
          # @!attribute from
          #
          #   @return [Float]
          required :from, Float

          # @!attribute speaker
          #
          #   @return [Moonbase::Models::Meeting::Transcript::Cue::Speaker]
          required :speaker, -> { Moonbase::Meeting::Transcript::Cue::Speaker }

          # @!attribute text
          #
          #   @return [String]
          required :text, String

          # @!attribute to
          #
          #   @return [Float]
          required :to, Float

          # @!method initialize(from:, speaker:, text:, to:)
          #   @param from [Float]
          #   @param speaker [Moonbase::Models::Meeting::Transcript::Cue::Speaker]
          #   @param text [String]
          #   @param to [Float]

          # @see Moonbase::Models::Meeting::Transcript::Cue#speaker
          class Speaker < Moonbase::Internal::Type::BaseModel
            # @!attribute attendee_id
            #
            #   @return [String, nil]
            optional :attendee_id, String

            # @!attribute label
            #
            #   @return [String, nil]
            optional :label, String

            # @!method initialize(attendee_id: nil, label: nil)
            #   @param attendee_id [String]
            #   @param label [String]
          end
        end
      end
    end
  end
end
