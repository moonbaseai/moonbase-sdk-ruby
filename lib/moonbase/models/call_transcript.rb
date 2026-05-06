# frozen_string_literal: true

module Moonbase
  module Models
    class CallTranscript < Moonbase::Internal::Type::BaseModel
      # @!attribute cues
      #
      #   @return [Array<Moonbase::Models::CallTranscriptCue>]
      required :cues, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::CallTranscriptCue] }

      # @!method initialize(cues:)
      #   @param cues [Array<Moonbase::Models::CallTranscriptCue>]
    end
  end
end
