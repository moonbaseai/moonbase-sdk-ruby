# typed: strong

module Moonbase
  module Models
    class Call < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Call, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The direction of the call, either `incoming` or `outgoing`.
      sig { returns(Moonbase::Call::Direction::TaggedSymbol) }
      attr_accessor :direction

      # The participants involved in the call.
      sig { returns(T::Array[Moonbase::Call::Participant]) }
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
      sig { returns(Moonbase::Call::Status::TaggedSymbol) }
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
          direction: Moonbase::Call::Direction::OrSymbol,
          participants: T::Array[Moonbase::Call::Participant::OrHash],
          provider: String,
          provider_id: String,
          start_at: Time,
          status: Moonbase::Call::Status::OrSymbol,
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
            direction: Moonbase::Call::Direction::TaggedSymbol,
            participants: T::Array[Moonbase::Call::Participant],
            provider: String,
            provider_id: String,
            start_at: Time,
            status: Moonbase::Call::Status::TaggedSymbol,
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
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::Call::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCOMING = T.let(:incoming, Moonbase::Call::Direction::TaggedSymbol)
        OUTGOING = T.let(:outgoing, Moonbase::Call::Direction::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::Call::Direction::TaggedSymbol])
        end
        def self.values
        end
      end

      class Participant < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Call::Participant, Moonbase::Internal::AnyHash)
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The E.164 formatted phone number of the participant.
        sig { returns(String) }
        attr_accessor :phone

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        sig { returns(Moonbase::Call::Participant::Role::TaggedSymbol) }
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
            role: Moonbase::Call::Participant::Role::OrSymbol,
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
              role: Moonbase::Call::Participant::Role::TaggedSymbol,
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
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Moonbase::Call::Participant::Role) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALLER =
            T.let(:caller, Moonbase::Call::Participant::Role::TaggedSymbol)
          CALLEE =
            T.let(:callee, Moonbase::Call::Participant::Role::TaggedSymbol)
          OTHER = T.let(:other, Moonbase::Call::Participant::Role::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Moonbase::Call::Participant::Role::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # The current status of the call.
      module Status
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::Call::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED = T.let(:queued, Moonbase::Call::Status::TaggedSymbol)
        INITIATED = T.let(:initiated, Moonbase::Call::Status::TaggedSymbol)
        RINGING = T.let(:ringing, Moonbase::Call::Status::TaggedSymbol)
        IN_PROGRESS = T.let(:in_progress, Moonbase::Call::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, Moonbase::Call::Status::TaggedSymbol)
        BUSY = T.let(:busy, Moonbase::Call::Status::TaggedSymbol)
        FAILED = T.let(:failed, Moonbase::Call::Status::TaggedSymbol)
        NO_ANSWER = T.let(:no_answer, Moonbase::Call::Status::TaggedSymbol)
        CANCELED = T.let(:canceled, Moonbase::Call::Status::TaggedSymbol)
        MISSED = T.let(:missed, Moonbase::Call::Status::TaggedSymbol)
        ANSWERED = T.let(:answered, Moonbase::Call::Status::TaggedSymbol)
        FORWARDED = T.let(:forwarded, Moonbase::Call::Status::TaggedSymbol)
        ABANDONED = T.let(:abandoned, Moonbase::Call::Status::TaggedSymbol)

        sig { override.returns(T::Array[Moonbase::Call::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
