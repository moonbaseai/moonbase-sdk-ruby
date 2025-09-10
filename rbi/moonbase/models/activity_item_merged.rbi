# typed: strong

module Moonbase
  module Models
    class ActivityItemMerged < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ActivityItemMerged, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig { returns(T.nilable(Moonbase::ItemPointer)) }
      attr_reader :destination

      sig { params(destination: T.nilable(Moonbase::ItemPointer::OrHash)).void }
      attr_writer :destination

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig { returns(T.nilable(Moonbase::ItemPointer)) }
      attr_reader :initiator

      sig { params(initiator: T.nilable(Moonbase::ItemPointer::OrHash)).void }
      attr_writer :initiator

      # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      sig { returns(T.nilable(Moonbase::ItemPointer)) }
      attr_reader :source

      sig { params(source: T.nilable(Moonbase::ItemPointer::OrHash)).void }
      attr_writer :source

      # The type of activity. Always `activity/item_merged`.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents an event that occurs when an `Item` is merged into another item.
      sig do
        params(
          id: String,
          destination: T.nilable(Moonbase::ItemPointer::OrHash),
          initiator: T.nilable(Moonbase::ItemPointer::OrHash),
          occurred_at: Time,
          source: T.nilable(Moonbase::ItemPointer::OrHash),
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        destination:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        initiator:,
        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        occurred_at:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        source:,
        # The type of activity. Always `activity/item_merged`.
        type: :"activity/item_merged"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            destination: T.nilable(Moonbase::ItemPointer),
            initiator: T.nilable(Moonbase::ItemPointer),
            occurred_at: Time,
            source: T.nilable(Moonbase::ItemPointer),
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
