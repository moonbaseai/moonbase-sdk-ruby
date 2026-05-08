# typed: strong

module Moonbase
  module Models
    class MeetingTranscript < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::MeetingTranscript, Moonbase::Internal::AnyHash)
        end

      sig { returns(T::Array[Moonbase::MeetingTranscriptCue]) }
      attr_accessor :cues

      sig do
        params(cues: T::Array[Moonbase::MeetingTranscriptCue::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(cues:)
      end

      sig do
        override.returns({ cues: T::Array[Moonbase::MeetingTranscriptCue] })
      end
      def to_hash
      end
    end
  end
end
