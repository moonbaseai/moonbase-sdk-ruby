# frozen_string_literal: true

module Moonbase
  module Models
    class CallParticipant < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute phone
      #   The E.164 formatted phone number of the participant.
      #
      #   @return [String]
      required :phone, String

      # @!attribute role
      #   The role of the participant in the call. Can be `caller`, `callee`, or `other`.
      #
      #   @return [Symbol, Moonbase::Models::CallParticipant::Role]
      required :role, enum: -> { Moonbase::CallParticipant::Role }

      # @!attribute type
      #   String representing the object’s type. Always `call_participant` for this
      #   object.
      #
      #   @return [Symbol, :call_participant]
      required :type, const: :call_participant

      # @!attribute organization
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      optional :organization, -> { Moonbase::ItemPointer }

      # @!attribute person
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, nil]
      optional :person, -> { Moonbase::ItemPointer }

      # @!method initialize(id:, phone:, role:, organization: nil, person: nil, type: :call_participant)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::CallParticipant} for more details.
      #
      #   Represents a participant in a call.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param phone [String] The E.164 formatted phone number of the participant.
      #
      #   @param role [Symbol, Moonbase::Models::CallParticipant::Role] The role of the participant in the call. Can be `caller`, `callee`, or `other`.
      #
      #   @param organization [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param person [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param type [Symbol, :call_participant] String representing the object’s type. Always `call_participant` for this object

      # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
      #
      # @see Moonbase::Models::CallParticipant#role
      module Role
        extend Moonbase::Internal::Type::Enum

        CALLER = :caller
        CALLEE = :callee
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
