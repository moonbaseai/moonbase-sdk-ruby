# typed: strong

module Moonbase
  module Models
    class MeetingUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::MeetingUpdateParams, Moonbase::Internal::AnyHash)
        end

      # A video recording of the meeting.
      sig { returns(T.nilable(Moonbase::MeetingUpdateParams::Recording)) }
      attr_reader :recording

      sig do
        params(recording: Moonbase::MeetingUpdateParams::Recording::OrHash).void
      end
      attr_writer :recording

      # The meeting transcript.
      sig { returns(T.nilable(Moonbase::MeetingUpdateParams::Transcript)) }
      attr_reader :transcript

      sig do
        params(
          transcript: Moonbase::MeetingUpdateParams::Transcript::OrHash
        ).void
      end
      attr_writer :transcript

      sig do
        params(
          recording: Moonbase::MeetingUpdateParams::Recording::OrHash,
          transcript: Moonbase::MeetingUpdateParams::Transcript::OrHash,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A video recording of the meeting.
        recording: nil,
        # The meeting transcript.
        transcript: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            recording: Moonbase::MeetingUpdateParams::Recording,
            transcript: Moonbase::MeetingUpdateParams::Transcript,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Recording < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::MeetingUpdateParams::Recording,
              Moonbase::Internal::AnyHash
            )
          end

        # The content type of the recording. Note that only `video/mp4` is supported at
        # this time.
        sig { returns(String) }
        attr_accessor :content_type

        # The unique identifier for the recording from the provider's system.
        sig { returns(String) }
        attr_accessor :provider_id

        # The URL pointing to the recording.
        sig { returns(String) }
        attr_accessor :url

        # A video recording of the meeting.
        sig do
          params(
            content_type: String,
            provider_id: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The content type of the recording. Note that only `video/mp4` is supported at
          # this time.
          content_type:,
          # The unique identifier for the recording from the provider's system.
          provider_id:,
          # The URL pointing to the recording.
          url:
        )
        end

        sig do
          override.returns(
            { content_type: String, provider_id: String, url: String }
          )
        end
        def to_hash
        end
      end

      class Transcript < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::MeetingUpdateParams::Transcript,
              Moonbase::Internal::AnyHash
            )
          end

        # A list of cues that identify the text spoken in specific time slices of the
        # meeting.
        sig do
          returns(T::Array[Moonbase::MeetingUpdateParams::Transcript::Cue])
        end
        attr_accessor :cues

        # Identifies the source of the transcript.
        sig { returns(String) }
        attr_accessor :provider

        # The unique identifier for the transcript from the provider's system.
        sig { returns(String) }
        attr_accessor :provider_id

        # The meeting transcript.
        sig do
          params(
            cues:
              T::Array[Moonbase::MeetingUpdateParams::Transcript::Cue::OrHash],
            provider: String,
            provider_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of cues that identify the text spoken in specific time slices of the
          # meeting.
          cues:,
          # Identifies the source of the transcript.
          provider:,
          # The unique identifier for the transcript from the provider's system.
          provider_id:
        )
        end

        sig do
          override.returns(
            {
              cues: T::Array[Moonbase::MeetingUpdateParams::Transcript::Cue],
              provider: String,
              provider_id: String
            }
          )
        end
        def to_hash
        end

        class Cue < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::MeetingUpdateParams::Transcript::Cue,
                Moonbase::Internal::AnyHash
              )
            end

          # The start time of the slice, in fractional seconds from the start of the
          # meeting.
          sig { returns(Float) }
          attr_accessor :from

          # The name of the person speaking.
          sig { returns(String) }
          attr_accessor :speaker

          # The text spoken during the slice.
          sig { returns(String) }
          attr_accessor :text

          # The end time of the slice, in fractional seconds from the start of the meeting.
          sig { returns(Float) }
          attr_accessor :to

          # Parameters for creating a `MeetingTranscriptCue` object to capture the text
          # spoken in a specific time slice.
          sig do
            params(
              from: Float,
              speaker: String,
              text: String,
              to: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # The start time of the slice, in fractional seconds from the start of the
            # meeting.
            from:,
            # The name of the person speaking.
            speaker:,
            # The text spoken during the slice.
            text:,
            # The end time of the slice, in fractional seconds from the start of the meeting.
            to:
          )
          end

          sig do
            override.returns(
              { from: Float, speaker: String, text: String, to: Float }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
