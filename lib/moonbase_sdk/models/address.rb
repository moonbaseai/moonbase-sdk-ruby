# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class Address < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute email
      #   The email address.
      #
      #   @return [String]
      required :email, String

      # @!attribute links
      #   A hash of related links.
      #
      #   @return [MoonbaseSDK::Models::Address::Links]
      required :links, -> { MoonbaseSDK::Address::Links }

      # @!attribute type
      #   String representing the object’s type. Always `address` for this object.
      #
      #   @return [Symbol, :address]
      required :type, const: :address

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute role
      #   The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
      #   or `bcc`.
      #
      #   @return [Symbol, MoonbaseSDK::Models::Address::Role, nil]
      optional :role, enum: -> { MoonbaseSDK::Address::Role }

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, email:, links:, created_at: nil, role: nil, updated_at: nil, type: :address)
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::Address} for more details.
      #
      #   The Address object represents a recipient or sender of a message. It contains an
      #   email address and can be linked to a person and an organization in your
      #   collections.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param email [String] The email address.
      #
      #   @param links [MoonbaseSDK::Models::Address::Links] A hash of related links.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param role [Symbol, MoonbaseSDK::Models::Address::Role] The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`, o
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :address] String representing the object’s type. Always `address` for this object.

      # @see MoonbaseSDK::Models::Address#links
      class Links < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute organization
        #   A link to the associated `Organization` item.
        #
        #   @return [String, nil]
        optional :organization, String

        # @!attribute person
        #   A link to the associated `Person` item.
        #
        #   @return [String, nil]
        optional :person, String

        # @!method initialize(organization: nil, person: nil)
        #   A hash of related links.
        #
        #   @param organization [String] A link to the associated `Organization` item.
        #
        #   @param person [String] A link to the associated `Person` item.
      end

      # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
      # or `bcc`.
      #
      # @see MoonbaseSDK::Models::Address#role
      module Role
        extend MoonbaseSDK::Internal::Type::Enum

        FROM = :from
        REPLY_TO = :reply_to
        TO = :to
        CC = :cc
        BCC = :bcc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
