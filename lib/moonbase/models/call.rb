# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Calls#create
    class Call < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute direction
      #   The direction of the call, either `incoming` or `outgoing`.
      #
      #   @return [Symbol, Moonbase::Models::Call::Direction]
      required :direction, enum: -> { Moonbase::Call::Direction }

      # @!attribute participants
      #   The participants involved in the call.
      #
      #   @return [Array<Moonbase::Models::Call::Participant>]
      required :participants, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Call::Participant] }

      # @!attribute provider
      #   The name of the phone provider that handled the call.
      #
      #   @return [Symbol, Moonbase::Models::Call::Provider]
      required :provider, enum: -> { Moonbase::Call::Provider }

      # @!attribute provider_id
      #   The unique identifier for the call from the provider's system.
      #
      #   @return [String]
      required :provider_id, String

      # @!attribute provider_status
      #   The current status of the call.
      #
      #   @return [String]
      required :provider_status, String

      # @!attribute start_at
      #   The time the call started, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :start_at, Time

      # @!attribute type
      #   String representing the object’s type. Always `call` for this object.
      #
      #   @return [Symbol, :call]
      required :type, const: :call

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute answered_at
      #   The time the call was answered, if available, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time, nil]
      optional :answered_at, Time

      # @!attribute end_at
      #   The time the call ended, if available, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time, nil]
      optional :end_at, Time

      # @!attribute note
      #   The Note object represents a block of text content, often used for meeting notes
      #   or summaries.
      #
      #   @return [Moonbase::Models::Note, nil]
      optional :note, -> { Moonbase::Note }, nil?: true

      # @!attribute provider_metadata
      #   A hash of additional metadata from the provider.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :provider_metadata, Moonbase::Internal::Type::HashOf[Moonbase::Internal::Type::Unknown]

      # @!attribute summary
      #   The Note object represents a block of text content, often used for meeting notes
      #   or summaries.
      #
      #   @return [Moonbase::Models::Note, nil]
      optional :summary, -> { Moonbase::Note }, nil?: true

      # @!attribute transcript
      #
      #   @return [Moonbase::Models::Call::Transcript, nil]
      optional :transcript, -> { Moonbase::Call::Transcript }, nil?: true

      # @!method initialize(id:, created_at:, direction:, participants:, provider:, provider_id:, provider_status:, start_at:, updated_at:, answered_at: nil, end_at: nil, note: nil, provider_metadata: nil, summary: nil, transcript: nil, type: :call)
      #   Some parameter documentations has been truncated, see {Moonbase::Models::Call}
      #   for more details.
      #
      #   The Call object represents a phone call that has been logged in the system. It
      #   contains details about the participants, timing, and outcome of the call.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param direction [Symbol, Moonbase::Models::Call::Direction] The direction of the call, either `incoming` or `outgoing`.
      #
      #   @param participants [Array<Moonbase::Models::Call::Participant>] The participants involved in the call.
      #
      #   @param provider [Symbol, Moonbase::Models::Call::Provider] The name of the phone provider that handled the call.
      #
      #   @param provider_id [String] The unique identifier for the call from the provider's system.
      #
      #   @param provider_status [String] The current status of the call.
      #
      #   @param start_at [Time] The time the call started, as an ISO 8601 timestamp in UTC.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param answered_at [Time] The time the call was answered, if available, as an ISO 8601 timestamp in UTC.
      #
      #   @param end_at [Time] The time the call ended, if available, as an ISO 8601 timestamp in UTC.
      #
      #   @param note [Moonbase::Models::Note, nil] The Note object represents a block of text content, often used for meeting notes
      #
      #   @param provider_metadata [Hash{Symbol=>Object}] A hash of additional metadata from the provider.
      #
      #   @param summary [Moonbase::Models::Note, nil] The Note object represents a block of text content, often used for meeting notes
      #
      #   @param transcript [Moonbase::Models::Call::Transcript, nil]
      #
      #   @param type [Symbol, :call] String representing the object’s type. Always `call` for this object.

      # The direction of the call, either `incoming` or `outgoing`.
      #
      # @see Moonbase::Models::Call#direction
      module Direction
        extend Moonbase::Internal::Type::Enum

        INCOMING = :incoming
        OUTGOING = :outgoing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Participant < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute phone
        #   The E.164 formatted phone number of the participant.
        #
        #   @return [String]
        required :phone, String

        # @!attribute role
        #   The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        #
        #   @return [Symbol, Moonbase::Models::Call::Participant::Role]
        required :role, enum: -> { Moonbase::Call::Participant::Role }

        # @!attribute type
        #   String representing the object’s type. Always `call_participant` for this
        #   object.
        #
        #   @return [Symbol, :call_participant]
        required :type, const: :call_participant

        # @!attribute organization
        #   A lightweight reference to another resource.
        #
        #   @return [Moonbase::Models::Pointer, nil]
        optional :organization, -> { Moonbase::Pointer }

        # @!attribute person
        #   A lightweight reference to another resource.
        #
        #   @return [Moonbase::Models::Pointer, nil]
        optional :person, -> { Moonbase::Pointer }

        # @!method initialize(id:, phone:, role:, organization: nil, person: nil, type: :call_participant)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::Call::Participant} for more details.
        #
        #   Represents a participant in a call.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param phone [String] The E.164 formatted phone number of the participant.
        #
        #   @param role [Symbol, Moonbase::Models::Call::Participant::Role] The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        #
        #   @param organization [Moonbase::Models::Pointer] A lightweight reference to another resource.
        #
        #   @param person [Moonbase::Models::Pointer] A lightweight reference to another resource.
        #
        #   @param type [Symbol, :call_participant] String representing the object’s type. Always `call_participant` for this object

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        #
        # @see Moonbase::Models::Call::Participant#role
        module Role
          extend Moonbase::Internal::Type::Enum

          CALLER = :caller
          CALLEE = :callee
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The name of the phone provider that handled the call.
      #
      # @see Moonbase::Models::Call#provider
      module Provider
        extend Moonbase::Internal::Type::Enum

        OPENPHONE = :openphone
        USER = :user
        ZOOM_PHONE = :zoom_phone

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Moonbase::Models::Call#transcript
      class Transcript < Moonbase::Internal::Type::BaseModel
        # @!attribute cues
        #
        #   @return [Array<Moonbase::Models::Call::Transcript::Cue>]
        required :cues, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Call::Transcript::Cue] }

        # @!method initialize(cues:)
        #   @param cues [Array<Moonbase::Models::Call::Transcript::Cue>]

        class Cue < Moonbase::Internal::Type::BaseModel
          # @!attribute from
          #
          #   @return [Float]
          required :from, Float

          # @!attribute speaker
          #
          #   @return [Moonbase::Models::Call::Transcript::Cue::Speaker]
          required :speaker, -> { Moonbase::Call::Transcript::Cue::Speaker }

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
          #   @param speaker [Moonbase::Models::Call::Transcript::Cue::Speaker]
          #   @param text [String]
          #   @param to [Float]

          # @see Moonbase::Models::Call::Transcript::Cue#speaker
          class Speaker < Moonbase::Internal::Type::BaseModel
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
    end
  end
end
