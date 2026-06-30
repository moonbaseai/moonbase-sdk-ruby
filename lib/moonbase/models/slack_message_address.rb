# frozen_string_literal: true

module Moonbase
  module Models
    # The SlackMessageChannelAddress object represents a Slack channels address on a
    # message. It contains a Slack Channel ID and can be linked to a person and an
    # organization in your collections.
    module SlackMessageAddress
      extend Moonbase::Internal::Type::Union

      discriminator :type

      # The SlackMessageChannelAddress object represents a Slack channels address on a message. It contains a Slack Channel ID and can be linked to a person and an organization in your collections.
      variant :slack_message_channel_address, -> { Moonbase::SlackMessageAddress::SlackMessageChannelAddress }

      # The SlackMessageUserAddress object represents a Slack user address on a message. It contains a Slack User ID  and can be linked to a person and an organization in your collections.
      variant :slack_message_user_address, -> { Moonbase::SlackMessageAddress::SlackMessageUserAddress }

      class SlackMessageChannelAddress < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute provider_id
        #   The Slack Channel ID.
        #
        #   @return [String]
        required :provider_id, String

        # @!attribute role
        #   The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
        #   or `bcc`.
        #
        #   @return [Symbol, Moonbase::Models::SlackMessageAddress::SlackMessageChannelAddress::Role]
        required :role, enum: -> { Moonbase::SlackMessageAddress::SlackMessageChannelAddress::Role }

        # @!attribute type
        #   String representing the object’s type. Always `slack_message_channel_address`
        #   for this object.
        #
        #   @return [Symbol, :slack_message_channel_address]
        required :type, const: :slack_message_channel_address

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

        # @!method initialize(id:, provider_id:, role:, organization: nil, person: nil, type: :slack_message_channel_address)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::SlackMessageAddress::SlackMessageChannelAddress} for more
        #   details.
        #
        #   The SlackMessageChannelAddress object represents a Slack channels address on a
        #   message. It contains a Slack Channel ID and can be linked to a person and an
        #   organization in your collections.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param provider_id [String] The Slack Channel ID.
        #
        #   @param role [Symbol, Moonbase::Models::SlackMessageAddress::SlackMessageChannelAddress::Role] The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`, o
        #
        #   @param organization [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
        #
        #   @param person [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
        #
        #   @param type [Symbol, :slack_message_channel_address] String representing the object’s type. Always `slack_message_channel_address` fo

        # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
        # or `bcc`.
        #
        # @see Moonbase::Models::SlackMessageAddress::SlackMessageChannelAddress#role
        module Role
          extend Moonbase::Internal::Type::Enum

          FROM = :from
          TO = :to
          CC = :cc
          BCC = :bcc

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class SlackMessageUserAddress < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute provider_id
        #   The Slack User ID
        #
        #   @return [String]
        required :provider_id, String

        # @!attribute role
        #   The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
        #   or `bcc`.
        #
        #   @return [Symbol, Moonbase::Models::SlackMessageAddress::SlackMessageUserAddress::Role]
        required :role, enum: -> { Moonbase::SlackMessageAddress::SlackMessageUserAddress::Role }

        # @!attribute type
        #   String representing the object’s type. Always `slack_message_user_address` for
        #   this object.
        #
        #   @return [Symbol, :slack_message_user_address]
        required :type, const: :slack_message_user_address

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

        # @!method initialize(id:, provider_id:, role:, organization: nil, person: nil, type: :slack_message_user_address)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::SlackMessageAddress::SlackMessageUserAddress} for more
        #   details.
        #
        #   The SlackMessageUserAddress object represents a Slack user address on a message.
        #   It contains a Slack User ID and can be linked to a person and an organization in
        #   your collections.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param provider_id [String] The Slack User ID
        #
        #   @param role [Symbol, Moonbase::Models::SlackMessageAddress::SlackMessageUserAddress::Role] The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`, o
        #
        #   @param organization [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
        #
        #   @param person [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
        #
        #   @param type [Symbol, :slack_message_user_address] String representing the object’s type. Always `slack_message_user_address` for t

        # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
        # or `bcc`.
        #
        # @see Moonbase::Models::SlackMessageAddress::SlackMessageUserAddress#role
        module Role
          extend Moonbase::Internal::Type::Enum

          FROM = :from
          TO = :to
          CC = :cc
          BCC = :bcc

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Moonbase::Models::SlackMessageAddress::SlackMessageChannelAddress, Moonbase::Models::SlackMessageAddress::SlackMessageUserAddress)]
    end
  end
end
