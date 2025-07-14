# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class Organizer < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute email
      #   The email address of the organizer.
      #
      #   @return [String]
      required :email, String

      # @!attribute links
      #
      #   @return [MoonbaseSDK::Models::Organizer::Links]
      required :links, -> { MoonbaseSDK::Organizer::Links }

      # @!attribute type
      #   String representing the object’s type. Always `organizer` for this object.
      #
      #   @return [Symbol, :organizer]
      required :type, const: :organizer

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, email:, links:, created_at: nil, updated_at: nil, type: :organizer)
      #   Represents the organizer of a meeting.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param email [String] The email address of the organizer.
      #
      #   @param links [MoonbaseSDK::Models::Organizer::Links]
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :organizer] String representing the object’s type. Always `organizer` for this object.

      # @see MoonbaseSDK::Models::Organizer#links
      class Links < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute organization
        #   A link to the associated `Organization` item.
        #
        #   @return [String]
        required :organization, String

        # @!attribute person
        #   A link to the associated `Person` item.
        #
        #   @return [String]
        required :person, String

        # @!method initialize(organization:, person:)
        #   @param organization [String] A link to the associated `Organization` item.
        #
        #   @param person [String] A link to the associated `Person` item.
      end
    end
  end
end
