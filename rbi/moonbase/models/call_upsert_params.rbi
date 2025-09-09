# typed: strong

module Moonbase
  module Models
    class CallUpsertParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::CallUpsertParams, Moonbase::Internal::AnyHash)
        end

      # The direction of the call, either `incoming` or `outgoing`.
      sig { returns(Moonbase::CallUpsertParams::Direction::OrSymbol) }
      attr_accessor :direction

      # An array of participants involved in the call.
      sig { returns(T::Array[Moonbase::CallUpsertParams::Participant]) }
      attr_accessor :participants

      # The name of the phone provider that handled the call (e.g., `openphone`).
      sig { returns(String) }
      attr_accessor :provider

      # The unique identifier for the call from the provider's system.
      sig { returns(String) }
      attr_accessor :provider_id

      # The status of the call.
      sig { returns(String) }
      attr_accessor :provider_status

      # The time the call started, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :start_at

      # The time the call was answered, as an ISO 8601 timestamp in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :answered_at

      sig { params(answered_at: Time).void }
      attr_writer :answered_at

      # The time the call ended, as an ISO 8601 timestamp in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :end_at

      sig { params(end_at: Time).void }
      attr_writer :end_at

      # A hash of additional metadata from the provider.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :provider_metadata

      sig { params(provider_metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :provider_metadata

      # Any recordings associated with the call.
      sig do
        returns(T.nilable(T::Array[Moonbase::CallUpsertParams::Recording]))
      end
      attr_reader :recordings

      sig do
        params(
          recordings: T::Array[Moonbase::CallUpsertParams::Recording::OrHash]
        ).void
      end
      attr_writer :recordings

      # A transcript of the call.
      sig { returns(T.nilable(Moonbase::CallUpsertParams::Transcript)) }
      attr_reader :transcript

      sig do
        params(transcript: Moonbase::CallUpsertParams::Transcript::OrHash).void
      end
      attr_writer :transcript

      sig do
        params(
          direction: Moonbase::CallUpsertParams::Direction::OrSymbol,
          participants:
            T::Array[Moonbase::CallUpsertParams::Participant::OrHash],
          provider: String,
          provider_id: String,
          provider_status: String,
          start_at: Time,
          answered_at: Time,
          end_at: Time,
          provider_metadata: T::Hash[Symbol, T.anything],
          recordings: T::Array[Moonbase::CallUpsertParams::Recording::OrHash],
          transcript: Moonbase::CallUpsertParams::Transcript::OrHash,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The direction of the call, either `incoming` or `outgoing`.
        direction:,
        # An array of participants involved in the call.
        participants:,
        # The name of the phone provider that handled the call (e.g., `openphone`).
        provider:,
        # The unique identifier for the call from the provider's system.
        provider_id:,
        # The status of the call.
        provider_status:,
        # The time the call started, as an ISO 8601 timestamp in UTC.
        start_at:,
        # The time the call was answered, as an ISO 8601 timestamp in UTC.
        answered_at: nil,
        # The time the call ended, as an ISO 8601 timestamp in UTC.
        end_at: nil,
        # A hash of additional metadata from the provider.
        provider_metadata: nil,
        # Any recordings associated with the call.
        recordings: nil,
        # A transcript of the call.
        transcript: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            direction: Moonbase::CallUpsertParams::Direction::OrSymbol,
            participants: T::Array[Moonbase::CallUpsertParams::Participant],
            provider: String,
            provider_id: String,
            provider_status: String,
            start_at: Time,
            answered_at: Time,
            end_at: Time,
            provider_metadata: T::Hash[Symbol, T.anything],
            recordings: T::Array[Moonbase::CallUpsertParams::Recording],
            transcript: Moonbase::CallUpsertParams::Transcript,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The direction of the call, either `incoming` or `outgoing`.
      module Direction
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::CallUpsertParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCOMING =
          T.let(:incoming, Moonbase::CallUpsertParams::Direction::TaggedSymbol)
        OUTGOING =
          T.let(:outgoing, Moonbase::CallUpsertParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::CallUpsertParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Participant < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::CallUpsertParams::Participant,
              Moonbase::Internal::AnyHash
            )
          end

        # The E.164 formatted phone number of the participant.
        sig { returns(String) }
        attr_accessor :phone

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        sig { returns(Moonbase::CallUpsertParams::Participant::Role::OrSymbol) }
        attr_accessor :role

        # Parameters for creating a `Participant` object.
        sig do
          params(
            phone: String,
            role: Moonbase::CallUpsertParams::Participant::Role::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The E.164 formatted phone number of the participant.
          phone:,
          # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
          role:
        )
        end

        sig do
          override.returns(
            {
              phone: String,
              role: Moonbase::CallUpsertParams::Participant::Role::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        module Role
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Moonbase::CallUpsertParams::Participant::Role)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALLER =
            T.let(
              :caller,
              Moonbase::CallUpsertParams::Participant::Role::TaggedSymbol
            )
          CALLEE =
            T.let(
              :callee,
              Moonbase::CallUpsertParams::Participant::Role::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              Moonbase::CallUpsertParams::Participant::Role::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::CallUpsertParams::Participant::Role::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Recording < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::CallUpsertParams::Recording,
              Moonbase::Internal::AnyHash
            )
          end

        # The content type of the recording. Note that only `audio/mpeg` is supported at
        # this time.
        sig { returns(String) }
        attr_accessor :content_type

        # The unique identifier for the recording from the provider's system.
        sig { returns(String) }
        attr_accessor :provider_id

        # The URL pointing to the recording.
        sig { returns(String) }
        attr_accessor :url

        # Parameters for creating a `CallRecording` object.
        sig do
          params(
            content_type: String,
            provider_id: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The content type of the recording. Note that only `audio/mpeg` is supported at
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
              Moonbase::CallUpsertParams::Transcript,
              Moonbase::Internal::AnyHash
            )
          end

        # A list of cues that identify the text spoken in specific time slices of the
        # call.
        sig { returns(T::Array[Moonbase::CallUpsertParams::Transcript::Cue]) }
        attr_accessor :cues

        # A transcript of the call.
        sig do
          params(
            cues: T::Array[Moonbase::CallUpsertParams::Transcript::Cue::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of cues that identify the text spoken in specific time slices of the
          # call.
          cues:
        )
        end

        sig do
          override.returns(
            { cues: T::Array[Moonbase::CallUpsertParams::Transcript::Cue] }
          )
        end
        def to_hash
        end

        class Cue < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::CallUpsertParams::Transcript::Cue,
                Moonbase::Internal::AnyHash
              )
            end

          # The start time of the slice, in fractional seconds from the start of the call.
          sig { returns(Float) }
          attr_accessor :from

          # The E.164 formatted phone number of the speaker.
          sig { returns(String) }
          attr_accessor :speaker

          # The text spoken during the slice.
          sig { returns(String) }
          attr_accessor :text

          # The end time of the slice, in fractional seconds from the start of the call.
          sig { returns(Float) }
          attr_accessor :to

          # Parameters for creating a `CallTranscriptCue` object to capture the text spoken
          # in a specific time slice.
          sig do
            params(
              from: Float,
              speaker: String,
              text: String,
              to: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # The start time of the slice, in fractional seconds from the start of the call.
            from:,
            # The E.164 formatted phone number of the speaker.
            speaker:,
            # The text spoken during the slice.
            text:,
            # The end time of the slice, in fractional seconds from the start of the call.
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
