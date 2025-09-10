# frozen_string_literal: true

module Moonbase
  module Models
    class ChoiceValueParam < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   An option that must match one of the predefined options for the field.
      #
      #   @return [Moonbase::Models::ChoiceFieldOption, Moonbase::Models::Pointer]
      required :data, union: -> { Moonbase::ChoiceValueParam::Data }

      # @!attribute type
      #
      #   @return [Symbol, :"value/choice"]
      required :type, const: :"value/choice"

      # @!method initialize(data:, type: :"value/choice")
      #   Selected choice option
      #
      #   @param data [Moonbase::Models::ChoiceFieldOption, Moonbase::Models::Pointer] An option that must match one of the predefined options for the field.
      #
      #   @param type [Symbol, :"value/choice"]

      # An option that must match one of the predefined options for the field.
      #
      # @see Moonbase::Models::ChoiceValueParam#data
      module Data
        extend Moonbase::Internal::Type::Union

        # Represents a single selectable option within a choice field.
        variant -> { Moonbase::ChoiceFieldOption }

        # A lightweight reference to another resource.
        variant -> { Moonbase::Pointer }

        # @!method self.variants
        #   @return [Array(Moonbase::Models::ChoiceFieldOption, Moonbase::Models::Pointer)]
      end
    end
  end
end
