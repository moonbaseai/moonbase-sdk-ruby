# frozen_string_literal: true

module Moonbase
  module Models
    class MeetingTranscript < Moonbase::Internal::Type::BaseModel
      # @!attribute cues
      #
      #   @return [Array<Moonbase::Models::MeetingTranscriptCue>]
      required :cues, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::MeetingTranscriptCue] }

      # @!method initialize(cues:)
      #   @param cues [Array<Moonbase::Models::MeetingTranscriptCue>]
    end
  end
end
