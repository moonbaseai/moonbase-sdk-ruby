# typed: strong

module Moonbase
  module Models
    class MeetingTranscriptCue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::MeetingTranscriptCue, Moonbase::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :from

      sig { returns(Moonbase::MeetingTranscriptSpeaker) }
      attr_reader :speaker

      sig { params(speaker: Moonbase::MeetingTranscriptSpeaker::OrHash).void }
      attr_writer :speaker

      sig { returns(String) }
      attr_accessor :text

      sig { returns(Float) }
      attr_accessor :to

      sig do
        params(
          from: Float,
          speaker: Moonbase::MeetingTranscriptSpeaker::OrHash,
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
            speaker: Moonbase::MeetingTranscriptSpeaker,
            text: String,
            to: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
