# typed: strong

module Moonbase
  module Models
    class ActivityProgramMessageUnsubscribed < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::ActivityProgramMessageUnsubscribed,
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

      # The type of activity. Always `activity/program_message_unsubscribed`.
      sig { returns(Symbol) }
      attr_accessor :type

      # The email address of the person who unsubscribed.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Represents an event that occurs when a recipient unsubscribes after receiving a
      # `ProgramMessage`.
      sig do
        params(
          id: String,
          occurred_at: Time,
          program_message: T.nilable(Moonbase::Pointer::OrHash),
          recipient: T.nilable(Moonbase::ItemPointer::OrHash),
          email: String,
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
        # The email address of the person who unsubscribed.
        email: nil,
        # The type of activity. Always `activity/program_message_unsubscribed`.
        type: :"activity/program_message_unsubscribed"
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
            email: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
