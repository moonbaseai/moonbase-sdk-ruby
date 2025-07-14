# typed: strong

module MoonbaseSDK
  module Models
    class Call < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Call, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The direction of the call, either `incoming` or `outgoing`.
      sig { returns(MoonbaseSDK::Call::Direction::TaggedSymbol) }
      attr_accessor :direction

      # The participants involved in the call.
      sig { returns(T::Array[MoonbaseSDK::Call::Participant]) }
      attr_accessor :participants

      # The name of the phone provider that handled the call.
      sig { returns(String) }
      attr_accessor :provider

      # The unique identifier for the call from the provider's system.
      sig { returns(String) }
      attr_accessor :provider_id

      # The time the call started, as an RFC 3339 timestamp.
      sig { returns(Time) }
      attr_accessor :start_at

      # The current status of the call.
      sig { returns(MoonbaseSDK::Call::Status::TaggedSymbol) }
      attr_accessor :status

      # String representing the object’s type. Always `call` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # The time the call was answered, if available, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :answered_at

      sig { params(answered_at: Time).void }
      attr_writer :answered_at

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The time the call ended, if available, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :end_at

      sig { params(end_at: Time).void }
      attr_writer :end_at

      # A hash of additional metadata from the provider.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :provider_metadata

      sig { params(provider_metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :provider_metadata

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The Call object represents a phone call that has been logged in the system. It
      # contains details about the participants, timing, and outcome of the call.
      sig do
        params(
          id: String,
          direction: MoonbaseSDK::Call::Direction::OrSymbol,
          participants: T::Array[MoonbaseSDK::Call::Participant::OrHash],
          provider: String,
          provider_id: String,
          start_at: Time,
          status: MoonbaseSDK::Call::Status::OrSymbol,
          answered_at: Time,
          created_at: Time,
          end_at: Time,
          provider_metadata: T::Hash[Symbol, T.anything],
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The direction of the call, either `incoming` or `outgoing`.
        direction:,
        # The participants involved in the call.
        participants:,
        # The name of the phone provider that handled the call.
        provider:,
        # The unique identifier for the call from the provider's system.
        provider_id:,
        # The time the call started, as an RFC 3339 timestamp.
        start_at:,
        # The current status of the call.
        status:,
        # The time the call was answered, if available, as an RFC 3339 timestamp.
        answered_at: nil,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # The time the call ended, if available, as an RFC 3339 timestamp.
        end_at: nil,
        # A hash of additional metadata from the provider.
        provider_metadata: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `call` for this object.
        type: :call
      )
      end

      sig do
        override.returns(
          {
            id: String,
            direction: MoonbaseSDK::Call::Direction::TaggedSymbol,
            participants: T::Array[MoonbaseSDK::Call::Participant],
            provider: String,
            provider_id: String,
            start_at: Time,
            status: MoonbaseSDK::Call::Status::TaggedSymbol,
            type: Symbol,
            answered_at: Time,
            created_at: Time,
            end_at: Time,
            provider_metadata: T::Hash[Symbol, T.anything],
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The direction of the call, either `incoming` or `outgoing`.
      module Direction
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MoonbaseSDK::Call::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCOMING = T.let(:incoming, MoonbaseSDK::Call::Direction::TaggedSymbol)
        OUTGOING = T.let(:outgoing, MoonbaseSDK::Call::Direction::TaggedSymbol)

        sig do
          override.returns(T::Array[MoonbaseSDK::Call::Direction::TaggedSymbol])
        end
        def self.values
        end
      end

      class Participant < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Call::Participant,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The E.164 formatted phone number of the participant.
        sig { returns(String) }
        attr_accessor :phone

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        sig { returns(MoonbaseSDK::Call::Participant::Role::TaggedSymbol) }
        attr_accessor :role

        # String representing the object’s type. Always `participant` for this object.
        sig { returns(Symbol) }
        attr_accessor :type

        # Time at which the object was created, as an RFC 3339 timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Time at which the object was last updated, as an RFC 3339 timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Represents a participant in a call.
        sig do
          params(
            id: String,
            phone: String,
            role: MoonbaseSDK::Call::Participant::Role::OrSymbol,
            created_at: Time,
            updated_at: Time,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # The E.164 formatted phone number of the participant.
          phone:,
          # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
          role:,
          # Time at which the object was created, as an RFC 3339 timestamp.
          created_at: nil,
          # Time at which the object was last updated, as an RFC 3339 timestamp.
          updated_at: nil,
          # String representing the object’s type. Always `participant` for this object.
          type: :participant
        )
        end

        sig do
          override.returns(
            {
              id: String,
              phone: String,
              role: MoonbaseSDK::Call::Participant::Role::TaggedSymbol,
              type: Symbol,
              created_at: Time,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        module Role
          extend MoonbaseSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MoonbaseSDK::Call::Participant::Role) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALLER =
            T.let(:caller, MoonbaseSDK::Call::Participant::Role::TaggedSymbol)
          CALLEE =
            T.let(:callee, MoonbaseSDK::Call::Participant::Role::TaggedSymbol)
          OTHER =
            T.let(:other, MoonbaseSDK::Call::Participant::Role::TaggedSymbol)

          sig do
            override.returns(
              T::Array[MoonbaseSDK::Call::Participant::Role::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # The current status of the call.
      module Status
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, MoonbaseSDK::Call::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED = T.let(:queued, MoonbaseSDK::Call::Status::TaggedSymbol)
        INITIATED = T.let(:initiated, MoonbaseSDK::Call::Status::TaggedSymbol)
        RINGING = T.let(:ringing, MoonbaseSDK::Call::Status::TaggedSymbol)
        IN_PROGRESS =
          T.let(:in_progress, MoonbaseSDK::Call::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, MoonbaseSDK::Call::Status::TaggedSymbol)
        BUSY = T.let(:busy, MoonbaseSDK::Call::Status::TaggedSymbol)
        FAILED = T.let(:failed, MoonbaseSDK::Call::Status::TaggedSymbol)
        NO_ANSWER = T.let(:no_answer, MoonbaseSDK::Call::Status::TaggedSymbol)
        CANCELED = T.let(:canceled, MoonbaseSDK::Call::Status::TaggedSymbol)
        MISSED = T.let(:missed, MoonbaseSDK::Call::Status::TaggedSymbol)
        ANSWERED = T.let(:answered, MoonbaseSDK::Call::Status::TaggedSymbol)
        FORWARDED = T.let(:forwarded, MoonbaseSDK::Call::Status::TaggedSymbol)
        ABANDONED = T.let(:abandoned, MoonbaseSDK::Call::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[MoonbaseSDK::Call::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
