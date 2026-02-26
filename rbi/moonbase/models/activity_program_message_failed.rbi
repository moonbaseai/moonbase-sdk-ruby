# typed: strong

module Moonbase
  module Models
    class ActivityProgramMessageFailed < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::ActivityProgramMessageFailed,
            Moonbase::Internal::AnyHash
          )
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # A lightweight reference to another resource.
      sig { returns(T.nilable(Moonbase::Pointer)) }
      attr_reader :program_message

      sig { params(program_message: T.nilable(Moonbase::Pointer::OrHash)).void }
      attr_writer :program_message

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig { returns(T.nilable(Moonbase::ItemPointer)) }
      attr_reader :recipient

      sig { params(recipient: T.nilable(Moonbase::ItemPointer::OrHash)).void }
      attr_writer :recipient

      # The type of activity. Always `activity/program_message_failed`.
      sig { returns(Symbol) }
      attr_accessor :type

      # A code indicating the reason for the failure (e.g., `message_contained_virus`).
      sig do
        returns(
          T.nilable(
            Moonbase::ActivityProgramMessageFailed::ReasonCode::TaggedSymbol
          )
        )
      end
      attr_reader :reason_code

      sig do
        params(
          reason_code:
            Moonbase::ActivityProgramMessageFailed::ReasonCode::OrSymbol
        ).void
      end
      attr_writer :reason_code

      # Represents an event that occurs when a `ProgramMessage` fails to be delivered
      # for a technical reason.
      sig do
        params(
          id: String,
          occurred_at: Time,
          program_message: T.nilable(Moonbase::Pointer::OrHash),
          recipient: T.nilable(Moonbase::ItemPointer::OrHash),
          reason_code:
            Moonbase::ActivityProgramMessageFailed::ReasonCode::OrSymbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        occurred_at:,
        # A lightweight reference to another resource.
        program_message:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        recipient:,
        # A code indicating the reason for the failure (e.g., `message_contained_virus`).
        reason_code: nil,
        # The type of activity. Always `activity/program_message_failed`.
        type: :"activity/program_message_failed"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            occurred_at: Time,
            program_message: T.nilable(Moonbase::Pointer),
            recipient: T.nilable(Moonbase::ItemPointer),
            type: Symbol,
            reason_code:
              Moonbase::ActivityProgramMessageFailed::ReasonCode::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # A code indicating the reason for the failure (e.g., `message_contained_virus`).
      module ReasonCode
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Moonbase::ActivityProgramMessageFailed::ReasonCode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIQUID_ERROR =
          T.let(
            :liquid_error,
            Moonbase::ActivityProgramMessageFailed::ReasonCode::TaggedSymbol
          )
        PERSON_MISSING_EMAIL =
          T.let(
            :person_missing_email,
            Moonbase::ActivityProgramMessageFailed::ReasonCode::TaggedSymbol
          )
        MESSAGE_CONTAINED_VIRUS =
          T.let(
            :message_contained_virus,
            Moonbase::ActivityProgramMessageFailed::ReasonCode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::ActivityProgramMessageFailed::ReasonCode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
