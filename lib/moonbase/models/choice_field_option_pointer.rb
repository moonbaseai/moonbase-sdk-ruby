# frozen_string_literal: true

module Moonbase
  module Models
    class ChoiceFieldOptionPointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :choice_field_option]
      required :type, const: :choice_field_option

      # @!method initialize(id:, type: :choice_field_option)
      #   @param id [String]
      #   @param type [Symbol, :choice_field_option]
    end
  end
end
