# frozen_string_literal: true

module Moonbase
  module Models
    class Organizer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute email
      #   The email address of the organizer.
      #
      #   @return [String]
      required :email, String

      # @!attribute type
      #   String representing the object’s type. Always `meeting_organizer` for this
      #   object.
      #
      #   @return [Symbol, :meeting_organizer]
      required :type, const: :meeting_organizer

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

      # @!method initialize(id:, email:, organization: nil, person: nil, type: :meeting_organizer)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Organizer} for more details.
      #
      #   Represents the organizer of a meeting.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param email [String] The email address of the organizer.
      #
      #   @param organization [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param person [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param type [Symbol, :meeting_organizer] String representing the object’s type. Always `meeting_organizer` for this objec
    end
  end
end
