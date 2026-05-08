# typed: strong

module Moonbase
  module Models
    class Constituent < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::Constituent, Moonbase::Internal::AnyHash)
        end

      # A lightweight reference to the entity of `Constituent`, containing information
      # about what type of entity it is as well as the entity's id.
      sig { returns(Moonbase::ConstituentEntityPointer::Variants) }
      attr_accessor :entity

      sig { returns(Moonbase::Constituent::Relation::TaggedSymbol) }
      attr_accessor :relation

      sig { returns(Symbol) }
      attr_accessor :type

      # The Constituent object represents information about something that was involved
      # in a particular activity.
      sig do
        params(
          entity:
            T.any(
              Moonbase::CallPointer::OrHash,
              Moonbase::CollectionPointer::OrHash,
              Moonbase::ItemPointer::OrHash,
              Moonbase::FilePointer::OrHash,
              Moonbase::MeetingPointer::OrHash,
              Moonbase::EmailMessagePointer::OrHash,
              Moonbase::NotePointer::OrHash,
              Moonbase::ProgramPointer::OrHash,
              Moonbase::ProgramMessagePointer::OrHash,
              Moonbase::ProgramTemplatePointer::OrHash,
              Moonbase::UnsubscribePointer::OrHash
            ),
          relation: Moonbase::Constituent::Relation::OrSymbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A lightweight reference to the entity of `Constituent`, containing information
        # about what type of entity it is as well as the entity's id.
        entity:,
        relation:,
        type: :constituent
      )
      end

      sig do
        override.returns(
          {
            entity: Moonbase::ConstituentEntityPointer::Variants,
            relation: Moonbase::Constituent::Relation::TaggedSymbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      module Relation
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::Constituent::Relation) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTOR = T.let(:actor, Moonbase::Constituent::Relation::TaggedSymbol)
        OBJECT = T.let(:object, Moonbase::Constituent::Relation::TaggedSymbol)
        TARGET = T.let(:target, Moonbase::Constituent::Relation::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::Constituent::Relation::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
