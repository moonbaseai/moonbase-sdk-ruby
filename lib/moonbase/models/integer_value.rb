# frozen_string_literal: true

module Moonbase
  module Models
    class IntegerValue < Moonbase::Internal::Type::BaseModel
      # @!attribute number
      #
      #   @return [Integer]
      required :number, Integer

      # @!attribute type
      #
      #   @return [Symbol, :"value/number/unitless_integer"]
      required :type, const: :"value/number/unitless_integer"

      # @!method initialize(number:, type: :"value/number/unitless_integer")
      #   Integer value without units
      #
      #   @param number [Integer]
      #   @param type [Symbol, :"value/number/unitless_integer"]
    end
  end
end
