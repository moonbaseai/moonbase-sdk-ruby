# typed: strong

module Moonbase
  module Models
    class Tagset < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Tagset, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The name of the tagset.
      sig { returns(String) }
      attr_accessor :name

      # A list of `Tag` objects belonging to this tagset.
      sig { returns(T::Array[Moonbase::Tag]) }
      attr_accessor :tags

      # String representing the object’s type. Always `tagset` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An optional description of the tagset's purpose.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # A Tagset is a collection of `Tag` objects whose tags can be applied to
      # conversations, calls, and meetings.
      sig do
        params(
          id: String,
          created_at: Time,
          name: String,
          tags: T::Array[Moonbase::Tag::OrHash],
          updated_at: Time,
          description: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The name of the tagset.
        name:,
        # A list of `Tag` objects belonging to this tagset.
        tags:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # An optional description of the tagset's purpose.
        description: nil,
        # String representing the object’s type. Always `tagset` for this object.
        type: :tagset
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            name: String,
            tags: T::Array[Moonbase::Tag],
            type: Symbol,
            updated_at: Time,
            description: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
