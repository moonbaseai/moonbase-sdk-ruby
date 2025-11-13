# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Meetings#update
    class MeetingUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute recording
      #   A video recording of the meeting.
      #
      #   @return [Moonbase::Models::MeetingUpdateParams::Recording, nil]
      optional :recording, -> { Moonbase::MeetingUpdateParams::Recording }

      # @!attribute transcript
      #   The meeting transcript.
      #
      #   @return [Moonbase::Models::MeetingUpdateParams::Transcript, nil]
      optional :transcript, -> { Moonbase::MeetingUpdateParams::Transcript }

      # @!method initialize(recording: nil, transcript: nil, request_options: {})
      #   @param recording [Moonbase::Models::MeetingUpdateParams::Recording] A video recording of the meeting.
      #
      #   @param transcript [Moonbase::Models::MeetingUpdateParams::Transcript] The meeting transcript.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Recording < Moonbase::Internal::Type::BaseModel
        # @!attribute content_type
        #   The content type of the recording. Note that only `video/mp4` is supported at
        #   this time.
        #
        #   @return [String]
        required :content_type, String

        # @!attribute provider_id
        #   The unique identifier for the recording from the provider's system.
        #
        #   @return [String]
        required :provider_id, String

        # @!attribute url
        #   The URL pointing to the recording.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(content_type:, provider_id:, url:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::MeetingUpdateParams::Recording} for more details.
        #
        #   A video recording of the meeting.
        #
        #   @param content_type [String] The content type of the recording. Note that only `video/mp4` is supported at th
        #
        #   @param provider_id [String] The unique identifier for the recording from the provider's system.
        #
        #   @param url [String] The URL pointing to the recording.
      end

      class Transcript < Moonbase::Internal::Type::BaseModel
        # @!attribute cues
        #   A list of cues that identify the text spoken in specific time slices of the
        #   meeting.
        #
        #   @return [Array<Moonbase::Models::MeetingUpdateParams::Transcript::Cue>]
        required :cues, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::MeetingUpdateParams::Transcript::Cue] }

        # @!attribute provider
        #   Identifies the source of the transcript.
        #
        #   @return [String]
        required :provider, String

        # @!attribute provider_id
        #   The unique identifier for the transcript from the provider's system.
        #
        #   @return [String]
        required :provider_id, String

        # @!method initialize(cues:, provider:, provider_id:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::MeetingUpdateParams::Transcript} for more details.
        #
        #   The meeting transcript.
        #
        #   @param cues [Array<Moonbase::Models::MeetingUpdateParams::Transcript::Cue>] A list of cues that identify the text spoken in specific time slices of the meet
        #
        #   @param provider [String] Identifies the source of the transcript.
        #
        #   @param provider_id [String] The unique identifier for the transcript from the provider's system.

        class Cue < Moonbase::Internal::Type::BaseModel
          # @!attribute from
          #   The start time of the slice, in fractional seconds from the start of the
          #   meeting.
          #
          #   @return [Float]
          required :from, Float

          # @!attribute speaker
          #   The name of the person speaking.
          #
          #   @return [String]
          required :speaker, String

          # @!attribute text
          #   The text spoken during the slice.
          #
          #   @return [String]
          required :text, String

          # @!attribute to
          #   The end time of the slice, in fractional seconds from the start of the meeting.
          #
          #   @return [Float]
          required :to, Float

          # @!method initialize(from:, speaker:, text:, to:)
          #   Some parameter documentations has been truncated, see
          #   {Moonbase::Models::MeetingUpdateParams::Transcript::Cue} for more details.
          #
          #   Parameters for creating a `MeetingTranscriptCue` object to capture the text
          #   spoken in a specific time slice.
          #
          #   @param from [Float] The start time of the slice, in fractional seconds from the start of the meeting
          #
          #   @param speaker [String] The name of the person speaking.
          #
          #   @param text [String] The text spoken during the slice.
          #
          #   @param to [Float] The end time of the slice, in fractional seconds from the start of the meeting.
        end
      end
    end
  end
end
