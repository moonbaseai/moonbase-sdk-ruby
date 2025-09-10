# typed: strong

module Moonbase
  module Models
    class Address < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Address, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The email address.
      sig { returns(String) }
      attr_accessor :email

      # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
      # or `bcc`.
      sig { returns(Moonbase::Address::Role::TaggedSymbol) }
      attr_accessor :role

      # String representing the object’s type. Always `message_address` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A lightweight reference to another resource.
      sig { returns(T.nilable(Moonbase::Pointer)) }
      attr_reader :organization

      sig { params(organization: Moonbase::Pointer::OrHash).void }
      attr_writer :organization

      # A lightweight reference to another resource.
      sig { returns(T.nilable(Moonbase::Pointer)) }
      attr_reader :person

      sig { params(person: Moonbase::Pointer::OrHash).void }
      attr_writer :person

      # The Address object represents a recipient or sender of a message. It contains an
      # email address and can be linked to a person and an organization in your
      # collections.
      sig do
        params(
          id: String,
          email: String,
          role: Moonbase::Address::Role::OrSymbol,
          organization: Moonbase::Pointer::OrHash,
          person: Moonbase::Pointer::OrHash,
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
        # A lightweight reference to another resource.
        organization: nil,
        # A lightweight reference to another resource.
        person: nil,
        # String representing the object’s type. Always `message_address` for this object.
        type: :message_address
      )
      end

      sig do
        override.returns(
          {
            id: String,
            email: String,
            role: Moonbase::Address::Role::TaggedSymbol,
            type: Symbol,
            organization: Moonbase::Pointer,
            person: Moonbase::Pointer
          }
        )
      end
      def to_hash
      end

      # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
      # or `bcc`.
      module Role
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::Address::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FROM = T.let(:from, Moonbase::Address::Role::TaggedSymbol)
        REPLY_TO = T.let(:reply_to, Moonbase::Address::Role::TaggedSymbol)
        TO = T.let(:to, Moonbase::Address::Role::TaggedSymbol)
        CC = T.let(:cc, Moonbase::Address::Role::TaggedSymbol)
        BCC = T.let(:bcc, Moonbase::Address::Role::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::Address::Role::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
