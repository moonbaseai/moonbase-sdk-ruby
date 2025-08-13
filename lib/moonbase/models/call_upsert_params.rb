# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Calls#upsert
    class CallUpsertParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute direction
      #   The direction of the call, either `incoming` or `outgoing`.
      #
      #   @return [Symbol, Moonbase::Models::CallUpsertParams::Direction]
      required :direction, enum: -> { Moonbase::CallUpsertParams::Direction }

      # @!attribute participants
      #   An array of participants involved in the call.
      #
      #   @return [Array<Moonbase::Models::CallUpsertParams::Participant>]
      required :participants,
               -> {
                 Moonbase::Internal::Type::ArrayOf[Moonbase::CallUpsertParams::Participant]
               }

      # @!attribute provider
      #   The name of the phone provider that handled the call (e.g., `openphone`).
      #
      #   @return [String]
      required :provider, String

      # @!attribute provider_id
      #   The unique identifier for the call from the provider's system.
      #
      #   @return [String]
      required :provider_id, String

      # @!attribute start_at
      #   The time the call started, as an RFC 3339 timestamp.
      #
      #   @return [Time]
      required :start_at, Time

      # @!attribute status
      #   The status of the call.
      #
      #   @return [Symbol, Moonbase::Models::CallUpsertParams::Status]
      required :status, enum: -> { Moonbase::CallUpsertParams::Status }

      # @!attribute answered_at
      #   The time the call was answered, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :answered_at, Time

      # @!attribute end_at
      #   The time the call ended, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :end_at, Time

      # @!attribute provider_metadata
      #   A hash of additional metadata from the provider.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :provider_metadata, Moonbase::Internal::Type::HashOf[Moonbase::Internal::Type::Unknown]

      # @!attribute recordings
      #   Any recordings associated with the call.
      #
      #   @return [Array<Moonbase::Models::CallUpsertParams::Recording>, nil]
      optional :recordings, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::CallUpsertParams::Recording] }

      # @!attribute transcript
      #   A transcript of the call.
      #
      #   @return [Moonbase::Models::CallUpsertParams::Transcript, nil]
      optional :transcript, -> { Moonbase::CallUpsertParams::Transcript }

      # @!method initialize(direction:, participants:, provider:, provider_id:, start_at:, status:, answered_at: nil, end_at: nil, provider_metadata: nil, recordings: nil, transcript: nil, request_options: {})
      #   @param direction [Symbol, Moonbase::Models::CallUpsertParams::Direction] The direction of the call, either `incoming` or `outgoing`.
      #
      #   @param participants [Array<Moonbase::Models::CallUpsertParams::Participant>] An array of participants involved in the call.
      #
      #   @param provider [String] The name of the phone provider that handled the call (e.g., `openphone`).
      #
      #   @param provider_id [String] The unique identifier for the call from the provider's system.
      #
      #   @param start_at [Time] The time the call started, as an RFC 3339 timestamp.
      #
      #   @param status [Symbol, Moonbase::Models::CallUpsertParams::Status] The status of the call.
      #
      #   @param answered_at [Time] The time the call was answered, as an RFC 3339 timestamp.
      #
      #   @param end_at [Time] The time the call ended, as an RFC 3339 timestamp.
      #
      #   @param provider_metadata [Hash{Symbol=>Object}] A hash of additional metadata from the provider.
      #
      #   @param recordings [Array<Moonbase::Models::CallUpsertParams::Recording>] Any recordings associated with the call.
      #
      #   @param transcript [Moonbase::Models::CallUpsertParams::Transcript] A transcript of the call.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      # The direction of the call, either `incoming` or `outgoing`.
      module Direction
        extend Moonbase::Internal::Type::Enum

        INCOMING = :incoming
        OUTGOING = :outgoing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Participant < Moonbase::Internal::Type::BaseModel
        # @!attribute phone
        #   The E.164 formatted phone number of the participant.
        #
        #   @return [String]
        required :phone, String

        # @!attribute role
        #   The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        #
        #   @return [Symbol, Moonbase::Models::CallUpsertParams::Participant::Role]
        required :role, enum: -> { Moonbase::CallUpsertParams::Participant::Role }

        # @!method initialize(phone:, role:)
        #   Parameters for creating a `Participant` object.
        #
        #   @param phone [String] The E.164 formatted phone number of the participant.
        #
        #   @param role [Symbol, Moonbase::Models::CallUpsertParams::Participant::Role] The role of the participant in the call. Can be `caller`, `callee`, or `other`.

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        #
        # @see Moonbase::Models::CallUpsertParams::Participant#role
        module Role
          extend Moonbase::Internal::Type::Enum

          CALLER = :caller
          CALLEE = :callee
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The status of the call.
      module Status
        extend Moonbase::Internal::Type::Enum

        QUEUED = :queued
        INITIATED = :initiated
        RINGING = :ringing
        IN_PROGRESS = :in_progress
        COMPLETED = :completed
        BUSY = :busy
        FAILED = :failed
        NO_ANSWER = :no_answer
        CANCELED = :canceled
        MISSED = :missed
        ANSWERED = :answered
        FORWARDED = :forwarded
        ABANDONED = :abandoned

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Recording < Moonbase::Internal::Type::BaseModel
        # @!attribute content_type
        #   The content type of the recording. Note that only `audio/mpeg` is supported at
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
        #   {Moonbase::Models::CallUpsertParams::Recording} for more details.
        #
        #   Parameters for creating a `CallRecording` object.
        #
        #   @param content_type [String] The content type of the recording. Note that only `audio/mpeg` is supported at t
        #
        #   @param provider_id [String] The unique identifier for the recording from the provider's system.
        #
        #   @param url [String] The URL pointing to the recording.
      end

      class Transcript < Moonbase::Internal::Type::BaseModel
        # @!attribute cues
        #   A list of cues that identify the text spoken in specific time slices of the
        #   call.
        #
        #   @return [Array<Moonbase::Models::CallUpsertParams::Transcript::Cue>]
        required :cues, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::CallUpsertParams::Transcript::Cue] }

        # @!method initialize(cues:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::CallUpsertParams::Transcript} for more details.
        #
        #   A transcript of the call.
        #
        #   @param cues [Array<Moonbase::Models::CallUpsertParams::Transcript::Cue>] A list of cues that identify the text spoken in specific time slices of the call

        class Cue < Moonbase::Internal::Type::BaseModel
          # @!attribute from
          #   The start time of the slice, in fractional seconds from the start of the call.
          #
          #   @return [Float]
          required :from, Float

          # @!attribute speaker
          #   The E.164 formatted phone number of the speaker.
          #
          #   @return [String]
          required :speaker, String

          # @!attribute text
          #   The text spoken during the slice.
          #
          #   @return [String]
          required :text, String

          # @!attribute to
          #   The end time of the slice, in fractional seconds from the start of the call.
          #
          #   @return [Float]
          required :to, Float

          # @!method initialize(from:, speaker:, text:, to:)
          #   Parameters for creating a `CallTranscriptCue` object to capture the text spoken
          #   in a specific time slice.
          #
          #   @param from [Float] The start time of the slice, in fractional seconds from the start of the call.
          #
          #   @param speaker [String] The E.164 formatted phone number of the speaker.
          #
          #   @param text [String] The text spoken during the slice.
          #
          #   @param to [Float] The end time of the slice, in fractional seconds from the start of the call.
        end
      end
    end
  end
end
