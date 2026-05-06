# frozen_string_literal: true

module Moonbase
  module Models
    class CallTranscriptCue < Moonbase::Internal::Type::BaseModel
      # @!attribute from
      #
      #   @return [Float]
      required :from, Float

      # @!attribute speaker
      #
      #   @return [Moonbase::Models::CallTranscriptSpeaker]
      required :speaker, -> { Moonbase::CallTranscriptSpeaker }

      # @!attribute text
      #
      #   @return [String]
      required :text, String

      # @!attribute to
      #
      #   @return [Float]
      required :to, Float

      # @!method initialize(from:, speaker:, text:, to:)
      #   @param from [Float]
      #   @param speaker [Moonbase::Models::CallTranscriptSpeaker]
      #   @param text [String]
      #   @param to [Float]
    end
  end
end
