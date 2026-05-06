# typed: strong

module Moonbase
  module Models
    class CallTranscript < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::CallTranscript, Moonbase::Internal::AnyHash)
        end

      sig { returns(T::Array[Moonbase::CallTranscriptCue]) }
      attr_accessor :cues

      sig do
        params(cues: T::Array[Moonbase::CallTranscriptCue::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(cues:)
      end

      sig { override.returns({ cues: T::Array[Moonbase::CallTranscriptCue] }) }
      def to_hash
      end
    end
  end
end
