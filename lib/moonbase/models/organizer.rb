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
      #   A lightweight reference to another resource.
      #
      #   @return [Moonbase::Models::Pointer, nil]
      optional :organization, -> { Moonbase::Pointer }

      # @!attribute person
      #   A lightweight reference to another resource.
      #
      #   @return [Moonbase::Models::Pointer, nil]
      optional :person, -> { Moonbase::Pointer }

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
      #   @param organization [Moonbase::Models::Pointer] A lightweight reference to another resource.
      #
      #   @param person [Moonbase::Models::Pointer] A lightweight reference to another resource.
      #
      #   @param type [Symbol, :meeting_organizer] String representing the object’s type. Always `meeting_organizer` for this objec
    end
  end
end
