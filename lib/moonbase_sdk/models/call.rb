# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class Call < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute direction
      #   The direction of the call, either `incoming` or `outgoing`.
      #
      #   @return [Symbol, MoonbaseSDK::Models::Call::Direction]
      required :direction, enum: -> { MoonbaseSDK::Call::Direction }

      # @!attribute participants
      #   The participants involved in the call.
      #
      #   @return [Array<MoonbaseSDK::Models::Call::Participant>]
      required :participants, -> { MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Call::Participant] }

      # @!attribute provider
      #   The name of the phone provider that handled the call.
      #
      #   @return [String]
      required :provider, String

      # @!attribute provider_id
      #   The unique identifier for the call from the provider's system.
      #
      #   @return [String]
      required :provider_id, String

      # @!attribute start_at
      #   The time the call started, as an RFC 3339 timestamp.
      #
      #   @return [Time]
      required :start_at, Time

      # @!attribute status
      #   The current status of the call.
      #
      #   @return [Symbol, MoonbaseSDK::Models::Call::Status]
      required :status, enum: -> { MoonbaseSDK::Call::Status }

      # @!attribute type
      #   String representing the object’s type. Always `call` for this object.
      #
      #   @return [Symbol, :call]
      required :type, const: :call

      # @!attribute answered_at
      #   The time the call was answered, if available, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :answered_at, Time

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute end_at
      #   The time the call ended, if available, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :end_at, Time

      # @!attribute provider_metadata
      #   A hash of additional metadata from the provider.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :provider_metadata, MoonbaseSDK::Internal::Type::HashOf[MoonbaseSDK::Internal::Type::Unknown]

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, direction:, participants:, provider:, provider_id:, start_at:, status:, answered_at: nil, created_at: nil, end_at: nil, provider_metadata: nil, updated_at: nil, type: :call)
      #   The Call object represents a phone call that has been logged in the system. It
      #   contains details about the participants, timing, and outcome of the call.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param direction [Symbol, MoonbaseSDK::Models::Call::Direction] The direction of the call, either `incoming` or `outgoing`.
      #
      #   @param participants [Array<MoonbaseSDK::Models::Call::Participant>] The participants involved in the call.
      #
      #   @param provider [String] The name of the phone provider that handled the call.
      #
      #   @param provider_id [String] The unique identifier for the call from the provider's system.
      #
      #   @param start_at [Time] The time the call started, as an RFC 3339 timestamp.
      #
      #   @param status [Symbol, MoonbaseSDK::Models::Call::Status] The current status of the call.
      #
      #   @param answered_at [Time] The time the call was answered, if available, as an RFC 3339 timestamp.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param end_at [Time] The time the call ended, if available, as an RFC 3339 timestamp.
      #
      #   @param provider_metadata [Hash{Symbol=>Object}] A hash of additional metadata from the provider.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :call] String representing the object’s type. Always `call` for this object.

      # The direction of the call, either `incoming` or `outgoing`.
      #
      # @see MoonbaseSDK::Models::Call#direction
      module Direction
        extend MoonbaseSDK::Internal::Type::Enum

        INCOMING = :incoming
        OUTGOING = :outgoing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Participant < MoonbaseSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, MoonbaseSDK::Models::Call::Participant::Role]
        required :role, enum: -> { MoonbaseSDK::Call::Participant::Role }

        # @!attribute type
        #   String representing the object’s type. Always `participant` for this object.
        #
        #   @return [Symbol, :participant]
        required :type, const: :participant

        # @!attribute created_at
        #   Time at which the object was created, as an RFC 3339 timestamp.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute updated_at
        #   Time at which the object was last updated, as an RFC 3339 timestamp.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id:, phone:, role:, created_at: nil, updated_at: nil, type: :participant)
        #   Represents a participant in a call.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param phone [String] The E.164 formatted phone number of the participant.
        #
        #   @param role [Symbol, MoonbaseSDK::Models::Call::Participant::Role] The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        #
        #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
        #
        #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
        #
        #   @param type [Symbol, :participant] String representing the object’s type. Always `participant` for this object.

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        #
        # @see MoonbaseSDK::Models::Call::Participant#role
        module Role
          extend MoonbaseSDK::Internal::Type::Enum

          CALLER = :caller
          CALLEE = :callee
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The current status of the call.
      #
      # @see MoonbaseSDK::Models::Call#status
      module Status
        extend MoonbaseSDK::Internal::Type::Enum

        QUEUED = :queued
        INITIATED = :initiated
        RINGING = :ringing
        IN_PROGRESS = :in_progress
        COMPLETED = :completed
        BUSY = :busy
        FAILED = :failed
        NO_ANSWER = :no_answer
        CANCELED = :canceled
        MISSED = :missed
        ANSWERED = :answered
        FORWARDED = :forwarded
        ABANDONED = :abandoned

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
