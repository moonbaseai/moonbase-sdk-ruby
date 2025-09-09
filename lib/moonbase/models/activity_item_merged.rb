# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityItemMerged < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute destination
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      required :destination, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute initiator
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      required :initiator, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute occurred_at
      #   The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute source
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      required :source, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute type
      #   The type of activity. Always `activity/item_merged`.
      #
      #   @return [Symbol, :"activity/item_merged"]
      required :type, const: :"activity/item_merged"

      # @!method initialize(id:, destination:, initiator:, occurred_at:, source:, type: :"activity/item_merged")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityItemMerged} for more details.
      #
      #   Represents an event that occurs when an `Item` is merged into another item.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param destination [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param initiator [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param source [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param type [Symbol, :"activity/item_merged"] The type of activity. Always `activity/item_merged`.
    end
  end
end
