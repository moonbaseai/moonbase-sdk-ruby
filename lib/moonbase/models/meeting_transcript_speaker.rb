# frozen_string_literal: true

module Moonbase
  module Models
    class MeetingTranscriptSpeaker < Moonbase::Internal::Type::BaseModel
      # @!attribute attendee_id
      #
      #   @return [String, nil]
      optional :attendee_id, String

      # @!attribute label
      #
      #   @return [String, nil]
      optional :label, String

      # @!method initialize(attendee_id: nil, label: nil)
      #   @param attendee_id [String]
      #   @param label [String]
    end
  end
end
