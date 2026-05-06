# frozen_string_literal: true

module Moonbase
  module Models
    class Constituent < Moonbase::Internal::Type::BaseModel
      # @!attribute entity
      #   A lightweight reference to the entity of `Constituent`, containing information
      #   about what type of entity it is as well as the entity's id.
      #
      #   @return [Moonbase::Models::CallPointer, Moonbase::Models::CollectionPointer, Moonbase::Models::ItemPointer, Moonbase::Models::FilePointer, Moonbase::Models::MeetingPointer, Moonbase::Models::EmailMessagePointer, Moonbase::Models::NotePointer, Moonbase::Models::ProgramPointer, Moonbase::Models::ProgramMessagePointer, Moonbase::Models::ProgramTemplatePointer, Moonbase::Models::UnsubscribePointer]
      required :entity, union: -> { Moonbase::ConstituentEntityPointer }

      # @!attribute relation
      #
      #   @return [Symbol, Moonbase::Models::Constituent::Relation]
      required :relation, enum: -> { Moonbase::Constituent::Relation }

      # @!attribute type
      #
      #   @return [Symbol, :constituent]
      required :type, const: :constituent

      # @!method initialize(entity:, relation:, type: :constituent)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Constituent} for more details.
      #
      #   The Constituent object represents information about something that was involved
      #   in a particular activity.
      #
      #   @param entity [Moonbase::Models::CallPointer, Moonbase::Models::CollectionPointer, Moonbase::Models::ItemPointer, Moonbase::Models::FilePointer, Moonbase::Models::MeetingPointer, Moonbase::Models::EmailMessagePointer, Moonbase::Models::NotePointer, Moonbase::Models::ProgramPointer, Moonbase::Models::ProgramMessagePointer, Moonbase::Models::ProgramTemplatePointer, Moonbase::Models::UnsubscribePointer] A lightweight reference to the entity of `Constituent`, containing information a
      #
      #   @param relation [Symbol, Moonbase::Models::Constituent::Relation]
      #
      #   @param type [Symbol, :constituent]

      # @see Moonbase::Models::Constituent#relation
      module Relation
        extend Moonbase::Internal::Type::Enum

        ACTOR = :actor
        OBJECT = :object
        TARGET = :target

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
