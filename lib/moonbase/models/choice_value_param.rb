# frozen_string_literal: true

module Moonbase
  module Models
    class ChoiceValueParam < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   An option that must match one of the predefined options for the field.
      #
      #   @return [Moonbase::Models::ChoiceFieldOptionPointer]
      required :data, -> { Moonbase::ChoiceFieldOptionPointer }

      # @!attribute type
      #
      #   @return [Symbol, :"value/choice"]
      required :type, const: :"value/choice"

      # @!method initialize(data:, type: :"value/choice")
      #   Selected choice option
      #
      #   @param data [Moonbase::Models::ChoiceFieldOptionPointer] An option that must match one of the predefined options for the field.
      #
      #   @param type [Symbol, :"value/choice"]
    end
  end
end
