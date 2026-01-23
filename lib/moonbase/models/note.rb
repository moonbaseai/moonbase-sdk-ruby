# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Notes#create
    class Note < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute body
      #   The main content of the note.
      #
      #   @return [Moonbase::Models::FormattedText]
      required :body, -> { Moonbase::FormattedText }

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute lock_version
      #   The current lock version of the note for optimistic concurrency control.
      #
      #   @return [Integer]
      required :lock_version, Integer

      # @!attribute type
      #   String representing the object’s type. Always `note` for this object.
      #
      #   @return [Symbol, :note]
      required :type, const: :note

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute creator
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      optional :creator, -> { Moonbase::ItemPointer }, nil?: true

      # @!attribute summary
      #   A short, system-generated summary of the note's content.
      #
      #   @return [String, nil]
      optional :summary, String

      # @!attribute title
      #   An optional title for the note.
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(id:, body:, created_at:, lock_version:, updated_at:, creator: nil, summary: nil, title: nil, type: :note)
      #   Some parameter documentations has been truncated, see {Moonbase::Models::Note}
      #   for more details.
      #
      #   The Note object represents a block of text content, often used for meeting notes
      #   or summaries.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param body [Moonbase::Models::FormattedText] The main content of the note.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param lock_version [Integer] The current lock version of the note for optimistic concurrency control.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param creator [Moonbase::Models::ItemPointer, nil] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param summary [String] A short, system-generated summary of the note's content.
      #
      #   @param title [String] An optional title for the note.
      #
      #   @param type [Symbol, :note] String representing the object’s type. Always `note` for this object.
    end
  end
end
