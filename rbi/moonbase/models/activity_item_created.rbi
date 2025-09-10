# typed: strong

module Moonbase
  module Models
    class ActivityItemCreated < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ActivityItemCreated, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig { returns(T.nilable(Moonbase::ItemPointer)) }
      attr_reader :item

      sig { params(item: T.nilable(Moonbase::ItemPointer::OrHash)).void }
      attr_writer :item

      # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # The type of activity. Always `activity/item_created`.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents an event that occurs when an `Item` is created.
      sig do
        params(
          id: String,
          item: T.nilable(Moonbase::ItemPointer::OrHash),
          occurred_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        item:,
        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        occurred_at:,
        # The type of activity. Always `activity/item_created`.
        type: :"activity/item_created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            item: T.nilable(Moonbase::ItemPointer),
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
