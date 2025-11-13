# typed: strong

module Moonbase
  module Models
    class Meeting < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Meeting, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The end time of the meeting, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :end_at

      # The globally unique iCalendar UID for the meeting event.
      sig { returns(String) }
      attr_accessor :i_cal_uid

      # The unique identifier for the meeting from the external calendar provider (e.g.,
      # Google Calendar).
      sig { returns(String) }
      attr_accessor :provider_id

      # The start time of the meeting, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :start_at

      # The IANA time zone in which the meeting is scheduled (e.g.,
      # `America/Los_Angeles`).
      sig { returns(String) }
      attr_accessor :time_zone

      # String representing the object’s type. Always `meeting` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # A list of `Attendee` objects for the meeting.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(T::Array[Moonbase::Attendee])) }
      attr_reader :attendees

      sig { params(attendees: T::Array[Moonbase::Attendee::OrHash]).void }
      attr_writer :attendees

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
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(Moonbase::Organizer)) }
      attr_reader :organizer

      sig { params(organizer: Moonbase::Organizer::OrHash).void }
      attr_writer :organizer

      # A URL to access the meeting in the external provider's system.
      sig { returns(T.nilable(String)) }
      attr_reader :provider_uri

      sig { params(provider_uri: String).void }
      attr_writer :provider_uri

      # A temporary, signed URL to download the meeting recording. The URL expires after
      # one hour.
      sig { returns(T.nilable(String)) }
      attr_reader :recording_url

      sig { params(recording_url: String).void }
      attr_writer :recording_url

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

      sig { returns(T.nilable(Moonbase::Meeting::Transcript)) }
      attr_reader :transcript

      sig do
        params(
          transcript: T.nilable(Moonbase::Meeting::Transcript::OrHash)
        ).void
      end
      attr_writer :transcript

      # The Meeting object represents a calendar event. It includes details about the
      # participants, timing, and associated content like summaries and recordings.
      sig do
        params(
          id: String,
          created_at: Time,
          end_at: Time,
          i_cal_uid: String,
          provider_id: String,
          start_at: Time,
          time_zone: String,
          updated_at: Time,
          attendees: T::Array[Moonbase::Attendee::OrHash],
          description: String,
          duration: Float,
          location: String,
          organizer: Moonbase::Organizer::OrHash,
          provider_uri: String,
          recording_url: String,
          summary_ante: String,
          summary_post: String,
          title: String,
          transcript: T.nilable(Moonbase::Meeting::Transcript::OrHash),
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The end time of the meeting, as an ISO 8601 timestamp in UTC.
        end_at:,
        # The globally unique iCalendar UID for the meeting event.
        i_cal_uid:,
        # The unique identifier for the meeting from the external calendar provider (e.g.,
        # Google Calendar).
        provider_id:,
        # The start time of the meeting, as an ISO 8601 timestamp in UTC.
        start_at:,
        # The IANA time zone in which the meeting is scheduled (e.g.,
        # `America/Los_Angeles`).
        time_zone:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # A list of `Attendee` objects for the meeting.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        attendees: nil,
        # A detailed description or agenda for the meeting.
        description: nil,
        # The duration of the meeting in seconds.
        duration: nil,
        # The physical or virtual location of the meeting.
        location: nil,
        # The `Organizer` of the meeting.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        organizer: nil,
        # A URL to access the meeting in the external provider's system.
        provider_uri: nil,
        # A temporary, signed URL to download the meeting recording. The URL expires after
        # one hour.
        recording_url: nil,
        # A summary or notes generated before the meeting.
        summary_ante: nil,
        # A summary or notes generated after the meeting.
        summary_post: nil,
        # The title or subject of the meeting.
        title: nil,
        transcript: nil,
        # String representing the object’s type. Always `meeting` for this object.
        type: :meeting
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            end_at: Time,
            i_cal_uid: String,
            provider_id: String,
            start_at: Time,
            time_zone: String,
            type: Symbol,
            updated_at: Time,
            attendees: T::Array[Moonbase::Attendee],
            description: String,
            duration: Float,
            location: String,
            organizer: Moonbase::Organizer,
            provider_uri: String,
            recording_url: String,
            summary_ante: String,
            summary_post: String,
            title: String,
            transcript: T.nilable(Moonbase::Meeting::Transcript)
          }
        )
      end
      def to_hash
      end

      class Transcript < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Meeting::Transcript, Moonbase::Internal::AnyHash)
          end

        sig { returns(T::Array[Moonbase::Meeting::Transcript::Cue]) }
        attr_accessor :cues

        sig do
          params(
            cues: T::Array[Moonbase::Meeting::Transcript::Cue::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(cues:)
        end

        sig do
          override.returns(
            { cues: T::Array[Moonbase::Meeting::Transcript::Cue] }
          )
        end
        def to_hash
        end

        class Cue < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Meeting::Transcript::Cue,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :from

          sig { returns(Moonbase::Meeting::Transcript::Cue::Speaker) }
          attr_reader :speaker

          sig do
            params(
              speaker: Moonbase::Meeting::Transcript::Cue::Speaker::OrHash
            ).void
          end
          attr_writer :speaker

          sig { returns(String) }
          attr_accessor :text

          sig { returns(Float) }
          attr_accessor :to

          sig do
            params(
              from: Float,
              speaker: Moonbase::Meeting::Transcript::Cue::Speaker::OrHash,
              text: String,
              to: Float
            ).returns(T.attached_class)
          end
          def self.new(from:, speaker:, text:, to:)
          end

          sig do
            override.returns(
              {
                from: Float,
                speaker: Moonbase::Meeting::Transcript::Cue::Speaker,
                text: String,
                to: Float
              }
            )
          end
          def to_hash
          end

          class Speaker < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Meeting::Transcript::Cue::Speaker,
                  Moonbase::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :attendee_id

            sig { params(attendee_id: String).void }
            attr_writer :attendee_id

            sig { returns(T.nilable(String)) }
            attr_reader :label

            sig { params(label: String).void }
            attr_writer :label

            sig do
              params(attendee_id: String, label: String).returns(
                T.attached_class
              )
            end
            def self.new(attendee_id: nil, label: nil)
            end

            sig { override.returns({ attendee_id: String, label: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
