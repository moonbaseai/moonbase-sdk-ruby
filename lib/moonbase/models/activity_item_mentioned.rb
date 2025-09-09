# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityItemMentioned < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute author
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      required :author, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute item
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      required :item, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute note
      #   A lightweight reference to another resource.
      #
      #   @return [Moonbase::Models::Pointer, nil]
      required :note, -> { Moonbase::Pointer }, nil?: true

      # @!attribute occurred_at
      #   The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute type
      #   The type of activity. Always `activity/item_mentioned`.
      #
      #   @return [Symbol, :"activity/item_mentioned"]
      required :type, const: :"activity/item_mentioned"

      # @!method initialize(id:, author:, item:, note:, occurred_at:, type: :"activity/item_mentioned")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityItemMentioned} for more details.
      #
      #   Represents an event that occurs when an `Item` is mentioned.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param author [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param item [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param note [Moonbase::Models::Pointer, nil] A lightweight reference to another resource.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, :"activity/item_mentioned"] The type of activity. Always `activity/item_mentioned`.
    end
  end
end
