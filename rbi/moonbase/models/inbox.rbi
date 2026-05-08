# typed: strong

module Moonbase
  module Models
    class Inbox < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Inbox, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The display name of the inbox.
      sig { returns(String) }
      attr_accessor :name

      # A list of `TagsetPointer` objects referring to the Tagsets associated with this
      # inbox, which defines the tags available for its conversations.
      sig { returns(T::Array[Moonbase::TagsetPointer]) }
      attr_accessor :tagsets

      # String representing the object’s type. Always `inbox` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :can_read

      sig { params(can_read: T::Boolean).void }
      attr_writer :can_read

      # The Inbox object represents a shared inbox for receiving and sending messages.
      sig do
        params(
          id: String,
          created_at: Time,
          name: String,
          tagsets: T::Array[Moonbase::TagsetPointer::OrHash],
          updated_at: Time,
          can_read: T::Boolean,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The display name of the inbox.
        name:,
        # A list of `TagsetPointer` objects referring to the Tagsets associated with this
        # inbox, which defines the tags available for its conversations.
        tagsets:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        can_read: nil,
        # String representing the object’s type. Always `inbox` for this object.
        type: :inbox
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            name: String,
            tagsets: T::Array[Moonbase::TagsetPointer],
            type: Symbol,
            updated_at: Time,
            can_read: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
