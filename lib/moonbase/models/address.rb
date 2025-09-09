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

      # @!attribute role
      #   The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
      #   or `bcc`.
      #
      #   @return [Symbol, Moonbase::Models::Address::Role]
      required :role, enum: -> { Moonbase::Address::Role }

      # @!attribute type
      #   String representing the object’s type. Always `message_address` for this object.
      #
      #   @return [Symbol, :message_address]
      required :type, const: :message_address

      # @!attribute organization
      #   A lightweight reference to another resource.
      #
      #   @return [Moonbase::Models::Pointer, nil]
      optional :organization, -> { Moonbase::Pointer }

      # @!attribute person
      #   A lightweight reference to another resource.
      #
      #   @return [Moonbase::Models::Pointer, nil]
      optional :person, -> { Moonbase::Pointer }

      # @!method initialize(id:, email:, role:, organization: nil, person: nil, type: :message_address)
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
      #   @param role [Symbol, Moonbase::Models::Address::Role] The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`, o
      #
      #   @param organization [Moonbase::Models::Pointer] A lightweight reference to another resource.
      #
      #   @param person [Moonbase::Models::Pointer] A lightweight reference to another resource.
      #
      #   @param type [Symbol, :message_address] String representing the object’s type. Always `message_address` for this object.

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
