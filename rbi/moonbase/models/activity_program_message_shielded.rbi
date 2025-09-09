# typed: strong

module Moonbase
  module Models
    class ActivityProgramMessageShielded < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::ActivityProgramMessageShielded,
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

      # The type of activity. Always `activity/program_message_shielded`.
      sig { returns(Symbol) }
      attr_accessor :type

      # A code indicating why the message was shielded (e.g.,
      # `person_previously_unsubscribed`).
      sig { returns(T.nilable(String)) }
      attr_reader :reason_code

      sig { params(reason_code: String).void }
      attr_writer :reason_code

      # Represents an event that occurs when a `ProgramMessage` is prevented from being
      # sent by a delivery protection rule.
      sig do
        params(
          id: String,
          occurred_at: Time,
          program_message: T.nilable(Moonbase::Pointer::OrHash),
          recipient: T.nilable(Moonbase::ItemPointer::OrHash),
          reason_code: String,
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
        # A code indicating why the message was shielded (e.g.,
        # `person_previously_unsubscribed`).
        reason_code: nil,
        # The type of activity. Always `activity/program_message_shielded`.
        type: :"activity/program_message_shielded"
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
            reason_code: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
