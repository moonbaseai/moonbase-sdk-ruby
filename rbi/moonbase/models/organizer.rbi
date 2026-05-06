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

      # Represents the organizer of a meeting.
      sig do
        params(
          id: String,
          email: String,
          organization: Moonbase::ItemPointer::OrHash,
          person: Moonbase::ItemPointer::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The email address of the organizer.
        email:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        organization: nil,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
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
            organization: Moonbase::ItemPointer,
            person: Moonbase::ItemPointer
          }
        )
      end
      def to_hash
      end
    end
  end
end
