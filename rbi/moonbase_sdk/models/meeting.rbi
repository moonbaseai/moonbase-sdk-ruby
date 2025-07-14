# typed: strong

module MoonbaseSDK
  module Models
    class Meeting < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Meeting, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The end time of the meeting, as an RFC 3339 timestamp.
      sig { returns(Time) }
      attr_accessor :end_at

      # The globally unique iCalendar UID for the meeting event.
      sig { returns(String) }
      attr_accessor :i_cal_uid

      sig { returns(MoonbaseSDK::Meeting::Links) }
      attr_reader :links

      sig { params(links: MoonbaseSDK::Meeting::Links::OrHash).void }
      attr_writer :links

      # The unique identifier for the meeting from the external calendar provider (e.g.,
      # Google Calendar).
      sig { returns(String) }
      attr_accessor :provider_id

      # The start time of the meeting, as an RFC 3339 timestamp.
      sig { returns(Time) }
      attr_accessor :start_at

      # The IANA time zone in which the meeting is scheduled (e.g.,
      # `America/Los_Angeles`).
      sig { returns(String) }
      attr_accessor :time_zone

      # String representing the object’s type. Always `meeting` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A list of `Attendee` objects for the meeting.
      sig { returns(T.nilable(T::Array[MoonbaseSDK::Attendee])) }
      attr_reader :attendees

      sig { params(attendees: T::Array[MoonbaseSDK::Attendee::OrHash]).void }
      attr_writer :attendees

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # A detailed description or agenda for the meeting.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The duration of the meeting in seconds.
      sig { returns(T.nilable(Float)) }
      attr_reader :duration

      sig { params(duration: Float).void }
      attr_writer :duration

      # The physical or virtual location of the meeting.
      sig { returns(T.nilable(String)) }
      attr_reader :location

      sig { params(location: String).void }
      attr_writer :location

      # The `Organizer` of the meeting.
      sig { returns(T.nilable(MoonbaseSDK::Organizer)) }
      attr_reader :organizer

      sig { params(organizer: MoonbaseSDK::Organizer::OrHash).void }
      attr_writer :organizer

      # A URL to access the meeting in the external provider's system.
      sig { returns(T.nilable(String)) }
      attr_reader :provider_uri

      sig { params(provider_uri: String).void }
      attr_writer :provider_uri

      # A summary or notes generated before the meeting.
      sig { returns(T.nilable(String)) }
      attr_reader :summary_ante

      sig { params(summary_ante: String).void }
      attr_writer :summary_ante

      # A summary or notes generated after the meeting.
      sig { returns(T.nilable(String)) }
      attr_reader :summary_post

      sig { params(summary_post: String).void }
      attr_writer :summary_post

      # The title or subject of the meeting.
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The Meeting object represents a calendar event. It includes details about the
      # participants, timing, and associated content like summaries and recordings.
      sig do
        params(
          id: String,
          end_at: Time,
          i_cal_uid: String,
          links: MoonbaseSDK::Meeting::Links::OrHash,
          provider_id: String,
          start_at: Time,
          time_zone: String,
          attendees: T::Array[MoonbaseSDK::Attendee::OrHash],
          created_at: Time,
          description: String,
          duration: Float,
          location: String,
          organizer: MoonbaseSDK::Organizer::OrHash,
          provider_uri: String,
          summary_ante: String,
          summary_post: String,
          title: String,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The end time of the meeting, as an RFC 3339 timestamp.
        end_at:,
        # The globally unique iCalendar UID for the meeting event.
        i_cal_uid:,
        links:,
        # The unique identifier for the meeting from the external calendar provider (e.g.,
        # Google Calendar).
        provider_id:,
        # The start time of the meeting, as an RFC 3339 timestamp.
        start_at:,
        # The IANA time zone in which the meeting is scheduled (e.g.,
        # `America/Los_Angeles`).
        time_zone:,
        # A list of `Attendee` objects for the meeting.
        attendees: nil,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # A detailed description or agenda for the meeting.
        description: nil,
        # The duration of the meeting in seconds.
        duration: nil,
        # The physical or virtual location of the meeting.
        location: nil,
        # The `Organizer` of the meeting.
        organizer: nil,
        # A URL to access the meeting in the external provider's system.
        provider_uri: nil,
        # A summary or notes generated before the meeting.
        summary_ante: nil,
        # A summary or notes generated after the meeting.
        summary_post: nil,
        # The title or subject of the meeting.
        title: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `meeting` for this object.
        type: :meeting
      )
      end

      sig do
        override.returns(
          {
            id: String,
            end_at: Time,
            i_cal_uid: String,
            links: MoonbaseSDK::Meeting::Links,
            provider_id: String,
            start_at: Time,
            time_zone: String,
            type: Symbol,
            attendees: T::Array[MoonbaseSDK::Attendee],
            created_at: Time,
            description: String,
            duration: Float,
            location: String,
            organizer: MoonbaseSDK::Organizer,
            provider_uri: String,
            summary_ante: String,
            summary_post: String,
            title: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Meeting::Links, MoonbaseSDK::Internal::AnyHash)
          end

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        # A link to an associated `Note` object.
        sig { returns(T.nilable(String)) }
        attr_reader :note

        sig { params(note: String).void }
        attr_writer :note

        # A temporary, signed URL to download the meeting recording. The URL expires after
        # one hour.
        sig { returns(T.nilable(String)) }
        attr_reader :recording_url

        sig { params(recording_url: String).void }
        attr_writer :recording_url

        # A link to a long-form summary of the meeting.
        sig { returns(T.nilable(String)) }
        attr_reader :summary

        sig { params(summary: String).void }
        attr_writer :summary

        # A temporary, signed URL to download the meeting transcript. The URL expires
        # after one hour.
        sig { returns(T.nilable(String)) }
        attr_reader :transcript_url

        sig { params(transcript_url: String).void }
        attr_writer :transcript_url

        sig do
          params(
            self_: String,
            note: String,
            recording_url: String,
            summary: String,
            transcript_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The canonical URL for this object.
          self_:,
          # A link to an associated `Note` object.
          note: nil,
          # A temporary, signed URL to download the meeting recording. The URL expires after
          # one hour.
          recording_url: nil,
          # A link to a long-form summary of the meeting.
          summary: nil,
          # A temporary, signed URL to download the meeting transcript. The URL expires
          # after one hour.
          transcript_url: nil
        )
        end

        sig do
          override.returns(
            {
              self_: String,
              note: String,
              recording_url: String,
              summary: String,
              transcript_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
