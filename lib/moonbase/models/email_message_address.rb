# frozen_string_literal: true

module Moonbase
  module Models
    class EmailMessageAddress < Moonbase::Internal::Type::BaseModel
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
      #   @return [Symbol, Moonbase::Models::EmailMessageAddress::Role]
      required :role, enum: -> { Moonbase::EmailMessageAddress::Role }

      # @!attribute type
      #   String representing the object’s type. Always `message_address` for this object.
      #
      #   @return [Symbol, :email_message_address]
      required :type, const: :email_message_address

      # @!attribute organization
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      optional :organization, -> { Moonbase::ItemPointer }

      # @!attribute person
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      optional :person, -> { Moonbase::ItemPointer }

      # @!method initialize(id:, email:, role:, organization: nil, person: nil, type: :email_message_address)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::EmailMessageAddress} for more details.
      #
      #   The EmailMessageAddress object represents a recipient or sender of a message. It
      #   contains an email address and can be linked to a person and an organization in
      #   your collections.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param email [String] The email address.
      #
      #   @param role [Symbol, Moonbase::Models::EmailMessageAddress::Role] The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`, o
      #
      #   @param organization [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param person [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param type [Symbol, :email_message_address] String representing the object’s type. Always `message_address` for this object.

      # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
      # or `bcc`.
      #
      # @see Moonbase::Models::EmailMessageAddress#role
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
