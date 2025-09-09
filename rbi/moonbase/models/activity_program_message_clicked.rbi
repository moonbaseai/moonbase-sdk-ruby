# typed: strong

module Moonbase
  module Models
    class ActivityProgramMessageClicked < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::ActivityProgramMessageClicked,
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

      # The type of activity. Always `activity/program_message_clicked`.
      sig { returns(Symbol) }
      attr_accessor :type

      # The text of the link that was clicked.
      sig { returns(T.nilable(String)) }
      attr_reader :link_text

      sig { params(link_text: String).void }
      attr_writer :link_text

      # The URL of the link that was clicked.
      sig { returns(T.nilable(String)) }
      attr_reader :link_url_unsafe

      sig { params(link_url_unsafe: String).void }
      attr_writer :link_url_unsafe

      # Represents an event that occurs when a recipient clicks a tracked link in a
      # `ProgramMessage`.
      sig do
        params(
          id: String,
          occurred_at: Time,
          program_message: T.nilable(Moonbase::Pointer::OrHash),
          recipient: T.nilable(Moonbase::ItemPointer::OrHash),
          link_text: String,
          link_url_unsafe: String,
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
        # The text of the link that was clicked.
        link_text: nil,
        # The URL of the link that was clicked.
        link_url_unsafe: nil,
        # The type of activity. Always `activity/program_message_clicked`.
        type: :"activity/program_message_clicked"
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
            link_text: String,
            link_url_unsafe: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
