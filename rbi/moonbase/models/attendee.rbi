# typed: strong

module Moonbase
  module Models
    class Attendee < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Attendee, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The email address of the attendee.
      sig { returns(String) }
      attr_accessor :email

      # A hash of related links.
      sig { returns(Moonbase::Attendee::Links) }
      attr_reader :links

      sig { params(links: Moonbase::Attendee::Links::OrHash).void }
      attr_writer :links

      # String representing the object’s type. Always `attendee` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The Attendee object represents a participant in a meeting. It includes their
      # email address and links to associated `Person` and `Organization` items, if they
      # exist in your collections.
      sig do
        params(
          id: String,
          email: String,
          links: Moonbase::Attendee::Links::OrHash,
          created_at: Time,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The email address of the attendee.
        email:,
        # A hash of related links.
        links:,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `attendee` for this object.
        type: :attendee
      )
      end

      sig do
        override.returns(
          {
            id: String,
            email: String,
            links: Moonbase::Attendee::Links,
            type: Symbol,
            created_at: Time,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Attendee::Links, Moonbase::Internal::AnyHash)
          end

        # A link to the associated `Organization` item.
        sig { returns(String) }
        attr_accessor :organization

        # A link to the associated `Person` item.
        sig { returns(String) }
        attr_accessor :person

        # A hash of related links.
        sig do
          params(organization: String, person: String).returns(T.attached_class)
        end
        def self.new(
          # A link to the associated `Organization` item.
          organization:,
          # A link to the associated `Person` item.
          person:
        )
        end

        sig { override.returns({ organization: String, person: String }) }
        def to_hash
        end
      end
    end
  end
end
