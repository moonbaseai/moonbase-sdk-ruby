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

      sig { returns(T.nilable(Moonbase::MeetingUpdateParams::Recording)) }
      attr_reader :recording

      sig do
        params(recording: Moonbase::MeetingUpdateParams::Recording::OrHash).void
      end
      attr_writer :recording

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
      def self.new(recording: nil, transcript: nil, request_options: {})
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

        sig { returns(String) }
        attr_accessor :content_type

        sig { returns(String) }
        attr_accessor :provider_id

        sig { returns(String) }
        attr_accessor :url

        sig do
          params(
            content_type: String,
            provider_id: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(content_type:, provider_id:, url:)
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

        sig do
          returns(T::Array[Moonbase::MeetingUpdateParams::Transcript::Cue])
        end
        attr_accessor :cues

        sig { returns(String) }
        attr_accessor :provider

        sig { returns(String) }
        attr_accessor :provider_id

        sig do
          params(
            cues:
              T::Array[Moonbase::MeetingUpdateParams::Transcript::Cue::OrHash],
            provider: String,
            provider_id: String
          ).returns(T.attached_class)
        end
        def self.new(cues:, provider:, provider_id:)
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

          sig { returns(Float) }
          attr_accessor :from

          sig { returns(String) }
          attr_accessor :speaker

          sig { returns(String) }
          attr_accessor :text

          sig { returns(Float) }
          attr_accessor :to

          sig do
            params(
              from: Float,
              speaker: String,
              text: String,
              to: Float
            ).returns(T.attached_class)
          end
          def self.new(from:, speaker:, text:, to:)
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
