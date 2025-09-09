# frozen_string_literal: true

module Moonbase
  module Models
    class ActivityProgramMessageClicked < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute occurred_at
      #   The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute program_message
      #   A lightweight reference to another resource.
      #
      #   @return [Moonbase::Models::Pointer, nil]
      required :program_message, -> { Moonbase::Pointer }, nil?: true

      # @!attribute recipient
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      required :recipient, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute type
      #   The type of activity. Always `activity/program_message_clicked`.
      #
      #   @return [Symbol, :"activity/program_message_clicked"]
      required :type, const: :"activity/program_message_clicked"

      # @!attribute link_text
      #   The text of the link that was clicked.
      #
      #   @return [String, nil]
      optional :link_text, String

      # @!attribute link_url_unsafe
      #   The URL of the link that was clicked.
      #
      #   @return [String, nil]
      optional :link_url_unsafe, String

      # @!method initialize(id:, occurred_at:, program_message:, recipient:, link_text: nil, link_url_unsafe: nil, type: :"activity/program_message_clicked")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ActivityProgramMessageClicked} for more details.
      #
      #   Represents an event that occurs when a recipient clicks a tracked link in a
      #   `ProgramMessage`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param occurred_at [Time] The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      #
      #   @param program_message [Moonbase::Models::Pointer, nil] A lightweight reference to another resource.
      #
      #   @param recipient [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param link_text [String] The text of the link that was clicked.
      #
      #   @param link_url_unsafe [String] The URL of the link that was clicked.
      #
      #   @param type [Symbol, :"activity/program_message_clicked"] The type of activity. Always `activity/program_message_clicked`.
    end
  end
end
