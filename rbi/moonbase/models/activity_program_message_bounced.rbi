# typed: strong

module Moonbase
  module Models
    class ActivityProgramMessageBounced < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::ActivityProgramMessageBounced,
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

      # The type of activity. Always `activity/program_message_bounced`.
      sig { returns(Symbol) }
      attr_accessor :type

      # The type of bounce (e.g., `Permanent` for hard bounces, `Temporary` for soft
      # bounces).
      sig { returns(T.nilable(String)) }
      attr_reader :bounce_type

      sig { params(bounce_type: String).void }
      attr_writer :bounce_type

      # List of email addresses that bounced.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :bounced_recipient_emails

      sig { params(bounced_recipient_emails: T::Array[String]).void }
      attr_writer :bounced_recipient_emails

      # Represents an event that occurs when a `ProgramMessage` bounces.
      sig do
        params(
          id: String,
          occurred_at: Time,
          program_message: T.nilable(Moonbase::Pointer::OrHash),
          recipient: T.nilable(Moonbase::ItemPointer::OrHash),
          bounce_type: String,
          bounced_recipient_emails: T::Array[String],
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
        # The type of bounce (e.g., `Permanent` for hard bounces, `Temporary` for soft
        # bounces).
        bounce_type: nil,
        # List of email addresses that bounced.
        bounced_recipient_emails: nil,
        # The type of activity. Always `activity/program_message_bounced`.
        type: :"activity/program_message_bounced"
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
            bounce_type: String,
            bounced_recipient_emails: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
