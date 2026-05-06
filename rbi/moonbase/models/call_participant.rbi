# typed: strong

module Moonbase
  module Models
    class CallParticipant < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::CallParticipant, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The E.164 formatted phone number of the participant.
      sig { returns(String) }
      attr_accessor :phone

      # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
      sig { returns(Moonbase::CallParticipant::Role::TaggedSymbol) }
      attr_accessor :role

      # String representing the object’s type. Always `call_participant` for this
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

      # Represents a participant in a call.
      sig do
        params(
          id: String,
          phone: String,
          role: Moonbase::CallParticipant::Role::OrSymbol,
          organization: Moonbase::ItemPointer::OrHash,
          person: Moonbase::ItemPointer::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The E.164 formatted phone number of the participant.
        phone:,
        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        role:,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        organization: nil,
        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        person: nil,
        # String representing the object’s type. Always `call_participant` for this
        # object.
        type: :call_participant
      )
      end

      sig do
        override.returns(
          {
            id: String,
            phone: String,
            role: Moonbase::CallParticipant::Role::TaggedSymbol,
            type: Symbol,
            organization: Moonbase::ItemPointer,
            person: Moonbase::ItemPointer
          }
        )
      end
      def to_hash
      end

      # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
      module Role
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::CallParticipant::Role) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALLER = T.let(:caller, Moonbase::CallParticipant::Role::TaggedSymbol)
        CALLEE = T.let(:callee, Moonbase::CallParticipant::Role::TaggedSymbol)
        OTHER = T.let(:other, Moonbase::CallParticipant::Role::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::CallParticipant::Role::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
