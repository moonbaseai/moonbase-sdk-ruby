# typed: strong

module Moonbase
  module Models
    class EmailMessageAddress < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::EmailMessageAddress, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The email address.
      sig { returns(String) }
      attr_accessor :email

      # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
      # or `bcc`.
      sig { returns(Moonbase::EmailMessageAddress::Role::TaggedSymbol) }
      attr_accessor :role

      # String representing the object’s type. Always `message_address` for this object.
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

      # The EmailMessageAddress object represents a recipient or sender of a message. It
      # contains an email address and can be linked to a person and an organization in
      # your collections.
      sig do
        params(
          id: String,
          email: String,
          role: Moonbase::EmailMessageAddress::Role::OrSymbol,
          organization: Moonbase::ItemPointer::OrHash,
          person: Moonbase::ItemPointer::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The email address.
        email:,
        # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
        # or `bcc`.
        role:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        organization: nil,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        person: nil,
        # String representing the object’s type. Always `message_address` for this object.
        type: :email_message_address
      )
      end

      sig do
        override.returns(
          {
            id: String,
            email: String,
            role: Moonbase::EmailMessageAddress::Role::TaggedSymbol,
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
          T.type_alias { T.all(Symbol, Moonbase::EmailMessageAddress::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FROM = T.let(:from, Moonbase::EmailMessageAddress::Role::TaggedSymbol)
        REPLY_TO =
          T.let(:reply_to, Moonbase::EmailMessageAddress::Role::TaggedSymbol)
        TO = T.let(:to, Moonbase::EmailMessageAddress::Role::TaggedSymbol)
        CC = T.let(:cc, Moonbase::EmailMessageAddress::Role::TaggedSymbol)
        BCC = T.let(:bcc, Moonbase::EmailMessageAddress::Role::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::EmailMessageAddress::Role::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
