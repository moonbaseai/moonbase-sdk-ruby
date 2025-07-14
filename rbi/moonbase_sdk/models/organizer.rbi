# typed: strong

module MoonbaseSDK
  module Models
    class Organizer < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Organizer, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The email address of the organizer.
      sig { returns(String) }
      attr_accessor :email

      sig { returns(MoonbaseSDK::Organizer::Links) }
      attr_reader :links

      sig { params(links: MoonbaseSDK::Organizer::Links::OrHash).void }
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
          links: MoonbaseSDK::Organizer::Links::OrHash,
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
            links: MoonbaseSDK::Organizer::Links,
            type: Symbol,
            created_at: Time,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Organizer::Links, MoonbaseSDK::Internal::AnyHash)
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
