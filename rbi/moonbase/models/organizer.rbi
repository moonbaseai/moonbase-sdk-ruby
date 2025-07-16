# typed: strong

module Moonbase
  module Models
    class Organizer < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Organizer, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The email address of the organizer.
      sig { returns(String) }
      attr_accessor :email

      sig { returns(Moonbase::Organizer::Links) }
      attr_reader :links

      sig { params(links: Moonbase::Organizer::Links::OrHash).void }
      attr_writer :links

      # String representing the object’s type. Always `organizer` for this object.
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

      # Represents the organizer of a meeting.
      sig do
        params(
          id: String,
          email: String,
          links: Moonbase::Organizer::Links::OrHash,
          created_at: Time,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The email address of the organizer.
        email:,
        links:,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `organizer` for this object.
        type: :organizer
      )
      end

      sig do
        override.returns(
          {
            id: String,
            email: String,
            links: Moonbase::Organizer::Links,
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
            T.any(Moonbase::Organizer::Links, Moonbase::Internal::AnyHash)
          end

        # A link to the associated `Organization` item.
        sig { returns(String) }
        attr_accessor :organization

        # A link to the associated `Person` item.
        sig { returns(String) }
        attr_accessor :person

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
