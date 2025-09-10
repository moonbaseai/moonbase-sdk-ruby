# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityNoteCreated < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

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

      # @!attribute related_item
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      required :related_item, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute related_meeting
      #   A lightweight reference to another resource.
      #
      #   @return [Moonbase::Models::Pointer, nil]
      required :related_meeting, -> { Moonbase::Pointer }, nil?: true

      # @!attribute type
      #   The type of activity. Always `activity/note_created`.
      #
      #   @return [Symbol, :"activity/note_created"]
      required :type, const: :"activity/note_created"

      # @!method initialize(id:, note:, occurred_at:, related_item:, related_meeting:, type: :"activity/note_created")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityNoteCreated} for more details.
      #
      #   Represents an event that occurs when a `Note` is created.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param note [Moonbase::Models::Pointer, nil] A lightweight reference to another resource.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param related_item [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param related_meeting [Moonbase::Models::Pointer, nil] A lightweight reference to another resource.
      #
      #   @param type [Symbol, :"activity/note_created"] The type of activity. Always `activity/note_created`.
    end
  end
end
