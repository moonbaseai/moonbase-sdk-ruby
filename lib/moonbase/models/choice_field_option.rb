# frozen_string_literal: true

module Moonbase
  module Models
    class ChoiceFieldOption < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the option.
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   The human-readable text displayed for this option.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   String representing the object’s type. Always `choice_field_option` for this
      #   object.
      #
      #   @return [Symbol, :choice_field_option]
      required :type, const: :choice_field_option

      # @!method initialize(id:, name:, type: :choice_field_option)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ChoiceFieldOption} for more details.
      #
      #   Represents a single selectable option within a choice field.
      #
      #   @param id [String] Unique identifier for the option.
      #
      #   @param name [String] The human-readable text displayed for this option.
      #
      #   @param type [Symbol, :choice_field_option] String representing the object’s type. Always `choice_field_option` for this obj
    end
  end
end
