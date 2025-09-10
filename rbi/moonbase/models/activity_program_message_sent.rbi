# typed: strong

module Moonbase
  module Models
    class ActivityProgramMessageSent < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::ActivityProgramMessageSent,
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

      # The type of activity. Always `activity/program_message_sent`.
      sig { returns(Symbol) }
      attr_accessor :type

      # List of email addresses the message was sent to.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :recipient_emails

      sig { params(recipient_emails: T::Array[String]).void }
      attr_writer :recipient_emails

      # Represents an event that occurs when a `ProgramMessage` is successfully sent.
      sig do
        params(
          id: String,
          occurred_at: Time,
          program_message: T.nilable(Moonbase::Pointer::OrHash),
          recipient: T.nilable(Moonbase::ItemPointer::OrHash),
          recipient_emails: T::Array[String],
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
        # List of email addresses the message was sent to.
        recipient_emails: nil,
        # The type of activity. Always `activity/program_message_sent`.
        type: :"activity/program_message_sent"
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
            recipient_emails: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
