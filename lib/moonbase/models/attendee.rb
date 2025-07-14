# frozen_string_literal: true

module Moonbase
  module Models
    class Attendee < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute email
      #   The email address of the attendee.
      #
      #   @return [String]
      required :email, String

      # @!attribute links
      #   A hash of related links.
      #
      #   @return [Moonbase::Models::Attendee::Links]
      required :links, -> { Moonbase::Attendee::Links }

      # @!attribute type
      #   String representing the object’s type. Always `attendee` for this object.
      #
      #   @return [Symbol, :attendee]
      required :type, const: :attendee

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

      # @!method initialize(id:, email:, links:, created_at: nil, updated_at: nil, type: :attendee)
      #   The Attendee object represents a participant in a meeting. It includes their
      #   email address and links to associated `Person` and `Organization` items, if they
      #   exist in your collections.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param email [String] The email address of the attendee.
      #
      #   @param links [Moonbase::Models::Attendee::Links] A hash of related links.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :attendee] String representing the object’s type. Always `attendee` for this object.

      # @see Moonbase::Models::Attendee#links
      class Links < Moonbase::Internal::Type::BaseModel
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
        #   A hash of related links.
        #
        #   @param organization [String] A link to the associated `Organization` item.
        #
        #   @param person [String] A link to the associated `Person` item.
      end
    end
  end
end
