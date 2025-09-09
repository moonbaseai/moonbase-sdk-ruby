# frozen_string_literal: true

module Moonbase
  module Models
    class Attendee < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute email
      #   The email address of the attendee.
      #
      #   @return [String]
      required :email, String

      # @!attribute type
      #   String representing the object’s type. Always `meeting_attendee` for this
      #   object.
      #
      #   @return [Symbol, :meeting_attendee]
      required :type, const: :meeting_attendee

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

      # @!method initialize(id:, email:, organization: nil, person: nil, type: :meeting_attendee)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Attendee} for more details.
      #
      #   The Attendee object represents a participant in a meeting. It includes their
      #   email address and links to associated `Person` and `Organization` items, if they
      #   exist in your collections.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param email [String] The email address of the attendee.
      #
      #   @param organization [Moonbase::Models::Pointer] A lightweight reference to another resource.
      #
      #   @param person [Moonbase::Models::Pointer] A lightweight reference to another resource.
      #
      #   @param type [Symbol, :meeting_attendee] String representing the object’s type. Always `meeting_attendee` for this object
    end
  end
end
