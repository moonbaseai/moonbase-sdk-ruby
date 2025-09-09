# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Notes#retrieve
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

      # @!method initialize(id:, body:, created_at:, updated_at:, summary: nil, title: nil, type: :note)
      #   The Note object represents a block of text content, often used for meeting notes
      #   or summaries.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param body [Moonbase::Models::FormattedText] The main content of the note.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param summary [String] A short, system-generated summary of the note's content.
      #
      #   @param title [String] An optional title for the note.
      #
      #   @param type [Symbol, :note] String representing the object’s type. Always `note` for this object.
    end
  end
end
