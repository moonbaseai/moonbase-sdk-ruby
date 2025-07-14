# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Calls#create
    class CallCreateParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute direction
      #   The direction of the call, either `incoming` or `outgoing`.
      #
      #   @return [Symbol, MoonbaseSDK::Models::CallCreateParams::Direction]
      required :direction, enum: -> { MoonbaseSDK::CallCreateParams::Direction }

      # @!attribute participants
      #   An array of participants involved in the call.
      #
      #   @return [Array<MoonbaseSDK::Models::CallCreateParams::Participant>]
      required :participants,
               -> { MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::CallCreateParams::Participant] }

      # @!attribute provider
      #   The name of the phone provider that handled the call (e.g., `openphone`).
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
      #   The status of the call.
      #
      #   @return [Symbol, MoonbaseSDK::Models::CallCreateParams::Status]
      required :status, enum: -> { MoonbaseSDK::CallCreateParams::Status }

      # @!attribute answered_at
      #   The time the call was answered, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :answered_at, Time

      # @!attribute end_at
      #   The time the call ended, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :end_at, Time

      # @!attribute provider_metadata
      #   A hash of additional metadata from the provider.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :provider_metadata, MoonbaseSDK::Internal::Type::HashOf[MoonbaseSDK::Internal::Type::Unknown]

      # @!method initialize(direction:, participants:, provider:, provider_id:, start_at:, status:, answered_at: nil, end_at: nil, provider_metadata: nil, request_options: {})
      #   @param direction [Symbol, MoonbaseSDK::Models::CallCreateParams::Direction] The direction of the call, either `incoming` or `outgoing`.
      #
      #   @param participants [Array<MoonbaseSDK::Models::CallCreateParams::Participant>] An array of participants involved in the call.
      #
      #   @param provider [String] The name of the phone provider that handled the call (e.g., `openphone`).
      #
      #   @param provider_id [String] The unique identifier for the call from the provider's system.
      #
      #   @param start_at [Time] The time the call started, as an RFC 3339 timestamp.
      #
      #   @param status [Symbol, MoonbaseSDK::Models::CallCreateParams::Status] The status of the call.
      #
      #   @param answered_at [Time] The time the call was answered, as an RFC 3339 timestamp.
      #
      #   @param end_at [Time] The time the call ended, as an RFC 3339 timestamp.
      #
      #   @param provider_metadata [Hash{Symbol=>Object}] A hash of additional metadata from the provider.
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      # The direction of the call, either `incoming` or `outgoing`.
      module Direction
        extend MoonbaseSDK::Internal::Type::Enum

        INCOMING = :incoming
        OUTGOING = :outgoing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Participant < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute phone
        #   The E.164 formatted phone number of the participant.
        #
        #   @return [String]
        required :phone, String

        # @!attribute role
        #   The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        #
        #   @return [Symbol, MoonbaseSDK::Models::CallCreateParams::Participant::Role]
        required :role, enum: -> { MoonbaseSDK::CallCreateParams::Participant::Role }

        # @!method initialize(phone:, role:)
        #   Parameters for creating a `Participant` object.
        #
        #   @param phone [String] The E.164 formatted phone number of the participant.
        #
        #   @param role [Symbol, MoonbaseSDK::Models::CallCreateParams::Participant::Role] The role of the participant in the call. Can be `caller`, `callee`, or `other`.

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        #
        # @see MoonbaseSDK::Models::CallCreateParams::Participant#role
        module Role
          extend MoonbaseSDK::Internal::Type::Enum

          CALLER = :caller
          CALLEE = :callee
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The status of the call.
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
