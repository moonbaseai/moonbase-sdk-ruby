# frozen_string_literal: true

module Moonbase
  module Models
    class MeetingTranscriptCue < Moonbase::Internal::Type::BaseModel
      # @!attribute from
      #
      #   @return [Float]
      required :from, Float

      # @!attribute speaker
      #
      #   @return [Moonbase::Models::MeetingTranscriptSpeaker]
      required :speaker, -> { Moonbase::MeetingTranscriptSpeaker }

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
      #   @param speaker [Moonbase::Models::MeetingTranscriptSpeaker]
      #   @param text [String]
      #   @param to [Float]
    end
  end
end
