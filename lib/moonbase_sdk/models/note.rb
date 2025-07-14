# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Notes#retrieve
    class Note < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute links
      #
      #   @return [MoonbaseSDK::Models::Note::Links]
      required :links, -> { MoonbaseSDK::Note::Links }

      # @!attribute type
      #   String representing the object’s type. Always `note` for this object.
      #
      #   @return [Symbol, :note]
      required :type, const: :note

      # @!attribute body
      #   The main content of the note.
      #
      #   @return [String, nil]
      optional :body, String

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

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

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, links:, body: nil, created_at: nil, summary: nil, title: nil, updated_at: nil, type: :note)
      #   The Note object represents a block of text content, often used for meeting notes
      #   or summaries.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param links [MoonbaseSDK::Models::Note::Links]
      #
      #   @param body [String] The main content of the note.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param summary [String] A short, system-generated summary of the note's content.
      #
      #   @param title [String] An optional title for the note.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :note] String representing the object’s type. Always `note` for this object.

      # @see MoonbaseSDK::Models::Note#links
      class Links < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!method initialize(self_:)
        #   @param self_ [String] The canonical URL for this object.
      end
    end
  end
end
