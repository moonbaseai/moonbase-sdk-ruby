# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityItemCreated < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute item
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      required :item, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute occurred_at
      #   The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute type
      #   The type of activity. Always `activity/item_created`.
      #
      #   @return [Symbol, :"activity/item_created"]
      required :type, const: :"activity/item_created"

      # @!method initialize(id:, item:, occurred_at:, type: :"activity/item_created")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityItemCreated} for more details.
      #
      #   Represents an event that occurs when an `Item` is created.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param item [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, :"activity/item_created"] The type of activity. Always `activity/item_created`.
    end
  end
end
