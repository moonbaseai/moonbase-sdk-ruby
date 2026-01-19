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

      # The list of `Tagset` objects associated with this inbox, which defines the tags
      # available for its conversations.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(T::Array[Moonbase::Tagset])) }
      attr_reader :tagsets

      sig { params(tagsets: T::Array[Moonbase::Tagset::OrHash]).void }
      attr_writer :tagsets

      # The Inbox object represents a shared inbox for receiving and sending messages.
      sig do
        params(
          id: String,
          created_at: Time,
          name: String,
          updated_at: Time,
          can_read: T::Boolean,
          tagsets: T::Array[Moonbase::Tagset::OrHash],
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
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        can_read: nil,
        # The list of `Tagset` objects associated with this inbox, which defines the tags
        # available for its conversations.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        tagsets: nil,
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
            type: Symbol,
            updated_at: Time,
            can_read: T::Boolean,
            tagsets: T::Array[Moonbase::Tagset]
          }
        )
      end
      def to_hash
      end
    end
  end
end
