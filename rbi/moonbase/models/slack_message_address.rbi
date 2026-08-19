# typed: strong

module Moonbase
  module Models
    # The SlackMessageChannelAddress object represents a Slack channels address on a
    # message. It contains a Slack Channel ID and can be linked to a person and an
    # organization in your collections.
    module SlackMessageAddress
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::SlackMessageAddress::SlackMessageChannelAddress,
            Moonbase::SlackMessageAddress::SlackMessageUserAddress
          )
        end

      class SlackMessageChannelAddress < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::SlackMessageAddress::SlackMessageChannelAddress,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The Slack Channel ID.
        sig { returns(String) }
        attr_accessor :provider_id

        # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
        # or `bcc`.
        sig do
          returns(
            Moonbase::SlackMessageAddress::SlackMessageChannelAddress::Role::TaggedSymbol
          )
        end
        attr_accessor :role

        # String representing the object’s type. Always `slack_message_channel_address`
        # for this object.
        sig { returns(Symbol) }
        attr_accessor :type

        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        sig { returns(T.nilable(Moonbase::ItemPointer)) }
        attr_reader :organization

        sig { params(organization: Moonbase::ItemPointer::OrHash).void }
        attr_writer :organization

        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        sig { returns(T.nilable(Moonbase::ItemPointer)) }
        attr_reader :person

        sig { params(person: Moonbase::ItemPointer::OrHash).void }
        attr_writer :person

        # The SlackMessageChannelAddress object represents a Slack channels address on a
        # message. It contains a Slack Channel ID and can be linked to a person and an
        # organization in your collections.
        sig do
          params(
            id: String,
            provider_id: String,
            role:
              Moonbase::SlackMessageAddress::SlackMessageChannelAddress::Role::OrSymbol,
            organization: Moonbase::ItemPointer::OrHash,
            person: Moonbase::ItemPointer::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # The Slack Channel ID.
          provider_id:,
          # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
          # or `bcc`.
          role:,
          # A reference to an `Item` within a specific `Collection`, providing the context
          # needed to locate the item.
          organization: nil,
          # A reference to an `Item` within a specific `Collection`, providing the context
          # needed to locate the item.
          person: nil,
          # String representing the object’s type. Always `slack_message_channel_address`
          # for this object.
          type: :slack_message_channel_address
        )
        end

        sig do
          override.returns(
            {
              id: String,
              provider_id: String,
              role:
                Moonbase::SlackMessageAddress::SlackMessageChannelAddress::Role::TaggedSymbol,
              type: Symbol,
              organization: Moonbase::ItemPointer,
              person: Moonbase::ItemPointer
            }
          )
        end
        def to_hash
        end

        # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
        # or `bcc`.
        module Role
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Moonbase::SlackMessageAddress::SlackMessageChannelAddress::Role
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FROM =
            T.let(
              :from,
              Moonbase::SlackMessageAddress::SlackMessageChannelAddress::Role::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              Moonbase::SlackMessageAddress::SlackMessageChannelAddress::Role::TaggedSymbol
            )
          CC =
            T.let(
              :cc,
              Moonbase::SlackMessageAddress::SlackMessageChannelAddress::Role::TaggedSymbol
            )
          BCC =
            T.let(
              :bcc,
              Moonbase::SlackMessageAddress::SlackMessageChannelAddress::Role::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::SlackMessageAddress::SlackMessageChannelAddress::Role::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class SlackMessageUserAddress < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::SlackMessageAddress::SlackMessageUserAddress,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The Slack User ID
        sig { returns(String) }
        attr_accessor :provider_id

        # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
        # or `bcc`.
        sig do
          returns(
            Moonbase::SlackMessageAddress::SlackMessageUserAddress::Role::TaggedSymbol
          )
        end
        attr_accessor :role

        # String representing the object’s type. Always `slack_message_user_address` for
        # this object.
        sig { returns(Symbol) }
        attr_accessor :type

        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        sig { returns(T.nilable(Moonbase::ItemPointer)) }
        attr_reader :organization

        sig { params(organization: Moonbase::ItemPointer::OrHash).void }
        attr_writer :organization

        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        sig { returns(T.nilable(Moonbase::ItemPointer)) }
        attr_reader :person

        sig { params(person: Moonbase::ItemPointer::OrHash).void }
        attr_writer :person

        # The SlackMessageUserAddress object represents a Slack user address on a message.
        # It contains a Slack User ID and can be linked to a person and an organization in
        # your collections.
        sig do
          params(
            id: String,
            provider_id: String,
            role:
              Moonbase::SlackMessageAddress::SlackMessageUserAddress::Role::OrSymbol,
            organization: Moonbase::ItemPointer::OrHash,
            person: Moonbase::ItemPointer::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # The Slack User ID
          provider_id:,
          # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
          # or `bcc`.
          role:,
          # A reference to an `Item` within a specific `Collection`, providing the context
          # needed to locate the item.
          organization: nil,
          # A reference to an `Item` within a specific `Collection`, providing the context
          # needed to locate the item.
          person: nil,
          # String representing the object’s type. Always `slack_message_user_address` for
          # this object.
          type: :slack_message_user_address
        )
        end

        sig do
          override.returns(
            {
              id: String,
              provider_id: String,
              role:
                Moonbase::SlackMessageAddress::SlackMessageUserAddress::Role::TaggedSymbol,
              type: Symbol,
              organization: Moonbase::ItemPointer,
              person: Moonbase::ItemPointer
            }
          )
        end
        def to_hash
        end

        # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
        # or `bcc`.
        module Role
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Moonbase::SlackMessageAddress::SlackMessageUserAddress::Role
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FROM =
            T.let(
              :from,
              Moonbase::SlackMessageAddress::SlackMessageUserAddress::Role::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              Moonbase::SlackMessageAddress::SlackMessageUserAddress::Role::TaggedSymbol
            )
          CC =
            T.let(
              :cc,
              Moonbase::SlackMessageAddress::SlackMessageUserAddress::Role::TaggedSymbol
            )
          BCC =
            T.let(
              :bcc,
              Moonbase::SlackMessageAddress::SlackMessageUserAddress::Role::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::SlackMessageAddress::SlackMessageUserAddress::Role::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(T::Array[Moonbase::SlackMessageAddress::Variants])
      end
      def self.variants
      end
    end
  end
end
