# typed: strong

module Moonbase
  module Models
    class ActivityInboxMessageSent < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ActivityInboxMessageSent, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # A lightweight reference to another resource.
      sig { returns(T.nilable(Moonbase::Pointer)) }
      attr_reader :message

      sig { params(message: T.nilable(Moonbase::Pointer::OrHash)).void }
      attr_writer :message

      # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # The type of activity. Always `activity/inbox_message_sent`.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents an event that occurs when a message is sent from an `Inbox`.
      sig do
        params(
          id: String,
          message: T.nilable(Moonbase::Pointer::OrHash),
          occurred_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # A lightweight reference to another resource.
        message:,
        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        occurred_at:,
        # The type of activity. Always `activity/inbox_message_sent`.
        type: :"activity/inbox_message_sent"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            message: T.nilable(Moonbase::Pointer),
            occurred_at: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
