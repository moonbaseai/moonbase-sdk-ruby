# typed: strong

module Moonbase
  module Models
    class MeetingTranscriptSpeaker < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::MeetingTranscriptSpeaker, Moonbase::Internal::AnyHash)
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
        params(attendee_id: String, label: String).returns(T.attached_class)
      end
      def self.new(attendee_id: nil, label: nil)
      end

      sig { override.returns({ attendee_id: String, label: String }) }
      def to_hash
      end
    end
  end
end
