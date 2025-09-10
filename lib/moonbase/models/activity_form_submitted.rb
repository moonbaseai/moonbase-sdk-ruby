# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityFormSubmitted < Moonbase::Internal::Type::BaseModel
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
      #   The type of activity. Always `activity/form_submitted`.
      #
      #   @return [Symbol, :"activity/form_submitted"]
      required :type, const: :"activity/form_submitted"

      # @!method initialize(id:, item:, occurred_at:, type: :"activity/form_submitted")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityFormSubmitted} for more details.
      #
      #   Represents an event that occurs when a `Form` is submitted.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param item [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, :"activity/form_submitted"] The type of activity. Always `activity/form_submitted`.
    end
  end
end
