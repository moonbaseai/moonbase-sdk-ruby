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

      # A hash of related links.
      sig { returns(Moonbase::Address::Links) }
      attr_reader :links

      sig { params(links: Moonbase::Address::Links::OrHash).void }
      attr_writer :links

      # String representing the object’s type. Always `address` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
      # or `bcc`.
      sig { returns(T.nilable(Moonbase::Address::Role::TaggedSymbol)) }
      attr_reader :role

      sig { params(role: Moonbase::Address::Role::OrSymbol).void }
      attr_writer :role

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The Address object represents a recipient or sender of a message. It contains an
      # email address and can be linked to a person and an organization in your
      # collections.
      sig do
        params(
          id: String,
          email: String,
          links: Moonbase::Address::Links::OrHash,
          created_at: Time,
          role: Moonbase::Address::Role::OrSymbol,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The email address.
        email:,
        # A hash of related links.
        links:,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # The role of the address in the message. Can be `from`, `reply_to`, `to`, `cc`,
        # or `bcc`.
        role: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `address` for this object.
        type: :address
      )
      end

      sig do
        override.returns(
          {
            id: String,
            email: String,
            links: Moonbase::Address::Links,
            type: Symbol,
            created_at: Time,
            role: Moonbase::Address::Role::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Address::Links, Moonbase::Internal::AnyHash)
          end

        # A link to the associated `Organization` item.
        sig { returns(T.nilable(String)) }
        attr_reader :organization

        sig { params(organization: String).void }
        attr_writer :organization

        # A link to the associated `Person` item.
        sig { returns(T.nilable(String)) }
        attr_reader :person

        sig { params(person: String).void }
        attr_writer :person

        # A hash of related links.
        sig do
          params(organization: String, person: String).returns(T.attached_class)
        end
        def self.new(
          # A link to the associated `Organization` item.
          organization: nil,
          # A link to the associated `Person` item.
          person: nil
        )
        end

        sig { override.returns({ organization: String, person: String }) }
        def to_hash
        end
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
