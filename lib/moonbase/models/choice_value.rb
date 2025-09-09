# frozen_string_literal: true

module Moonbase
  module Models
    class ChoiceValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   An option that must match one of the predefined options for the field.
      #
      #   @return [Moonbase::Models::ChoiceFieldOption]
      required :data, -> { Moonbase::ChoiceFieldOption }

      # @!attribute type
      #
      #   @return [Symbol, :"value/choice"]
      required :type, const: :"value/choice"

      # @!method initialize(data:, type: :"value/choice")
      #   Selected choice option
      #
      #   @param data [Moonbase::Models::ChoiceFieldOption] An option that must match one of the predefined options for the field.
      #
      #   @param type [Symbol, :"value/choice"]
    end
  end
end
