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

      # String representing the object’s type. Always `meeting_organizer` for this
      # object.
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

      # Represents the organizer of a meeting.
      sig do
        params(
          id: String,
          email: String,
          organization: Moonbase::Pointer::OrHash,
          person: Moonbase::Pointer::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The email address of the organizer.
        email:,
        # A lightweight reference to another resource.
        organization: nil,
        # A lightweight reference to another resource.
        person: nil,
        # String representing the object’s type. Always `meeting_organizer` for this
        # object.
        type: :meeting_organizer
      )
      end

      sig do
        override.returns(
          {
            id: String,
            email: String,
            type: Symbol,
            organization: Moonbase::Pointer,
            person: Moonbase::Pointer
          }
        )
      end
      def to_hash
      end
    end
  end
end
