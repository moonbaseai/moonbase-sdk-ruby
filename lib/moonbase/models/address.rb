# frozen_string_literal: true

module Moonbase
  module Models
    class Address < Moonbase::Internal::Type::BaseModel
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

      # @!attribute links
      #   A hash of related links.
      #
      #   @return [Moonbase::Models::Address::Links, nil]
      optional :links, -> { Moonbase::Address::Links }

      # @!attribute role
      #   The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
      #   or `bcc`.
      #
      #   @return [Symbol, Moonbase::Models::Address::Role, nil]
      optional :role, enum: -> { Moonbase::Address::Role }

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, email:, created_at: nil, links: nil, role: nil, updated_at: nil, type: :address)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Address} for more details.
      #
      #   The Address object represents a recipient or sender of a message. It contains an
      #   email address and can be linked to a person and an organization in your
      #   collections.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param email [String] The email address.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param links [Moonbase::Models::Address::Links] A hash of related links.
      #
      #   @param role [Symbol, Moonbase::Models::Address::Role] The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`, o
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :address] String representing the object’s type. Always `address` for this object.

      # @see Moonbase::Models::Address#links
      class Links < Moonbase::Internal::Type::BaseModel
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
      # @see Moonbase::Models::Address#role
      module Role
        extend Moonbase::Internal::Type::Enum

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
