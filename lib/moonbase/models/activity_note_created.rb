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
      #   The `Note` object that was created.
      #
      #   @return [Moonbase::Models::NotePointer, nil]
      required :note, -> { Moonbase::NotePointer }, nil?: true

      # @!attribute occurred_at
      #   The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute related_items
      #   An array of `Item` this note is related to, if any.
      #
      #   @return [Array<Moonbase::Models::ItemPointer>]
      required :related_items, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::ItemPointer] }

      # @!attribute related_meeting
      #   The `Meeting` this note is related to, if any.
      #
      #   @return [Moonbase::Models::MeetingPointer, nil]
      required :related_meeting, -> { Moonbase::MeetingPointer }, nil?: true

      # @!attribute type
      #   The type of activity. Always `activity/note_created`.
      #
      #   @return [Symbol, :"activity/note_created"]
      required :type, const: :"activity/note_created"

      # @!method initialize(id:, note:, occurred_at:, related_items:, related_meeting:, type: :"activity/note_created")
      #   Represents an event that occurs when a `Note` is created.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param note [Moonbase::Models::NotePointer, nil] The `Note` object that was created.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param related_items [Array<Moonbase::Models::ItemPointer>] An array of `Item` this note is related to, if any.
      #
      #   @param related_meeting [Moonbase::Models::MeetingPointer, nil] The `Meeting` this note is related to, if any.
      #
      #   @param type [Symbol, :"activity/note_created"] The type of activity. Always `activity/note_created`.
    end
  end
end
