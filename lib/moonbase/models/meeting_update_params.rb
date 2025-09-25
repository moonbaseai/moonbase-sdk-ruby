# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Meetings#update
    class MeetingUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute recording
      #
      #   @return [Moonbase::Models::MeetingUpdateParams::Recording, nil]
      optional :recording, -> { Moonbase::MeetingUpdateParams::Recording }

      # @!attribute transcript
      #
      #   @return [Moonbase::Models::MeetingUpdateParams::Transcript, nil]
      optional :transcript, -> { Moonbase::MeetingUpdateParams::Transcript }

      # @!method initialize(recording: nil, transcript: nil, request_options: {})
      #   @param recording [Moonbase::Models::MeetingUpdateParams::Recording]
      #   @param transcript [Moonbase::Models::MeetingUpdateParams::Transcript]
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Recording < Moonbase::Internal::Type::BaseModel
        # @!attribute content_type
        #
        #   @return [String]
        required :content_type, String

        # @!attribute provider_id
        #
        #   @return [String]
        required :provider_id, String

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(content_type:, provider_id:, url:)
        #   @param content_type [String]
        #   @param provider_id [String]
        #   @param url [String]
      end

      class Transcript < Moonbase::Internal::Type::BaseModel
        # @!attribute cues
        #
        #   @return [Array<Moonbase::Models::MeetingUpdateParams::Transcript::Cue>]
        required :cues, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::MeetingUpdateParams::Transcript::Cue] }

        # @!attribute provider
        #
        #   @return [String]
        required :provider, String

        # @!attribute provider_id
        #
        #   @return [String]
        required :provider_id, String

        # @!method initialize(cues:, provider:, provider_id:)
        #   @param cues [Array<Moonbase::Models::MeetingUpdateParams::Transcript::Cue>]
        #   @param provider [String]
        #   @param provider_id [String]

        class Cue < Moonbase::Internal::Type::BaseModel
          # @!attribute from
          #
          #   @return [Float]
          required :from, Float

          # @!attribute speaker
          #
          #   @return [String]
          required :speaker, String

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
          #   @param speaker [String]
          #   @param text [String]
          #   @param to [Float]
        end
      end
    end
  end
end
