# frozen_string_literal: true

module Moonbase
  module Models
    class FloatValue < Moonbase::Internal::Type::BaseModel
      # @!attribute number
      #
      #   @return [Float]
      required :number, Float

      # @!attribute type
      #
      #   @return [Symbol, :"value/number/unitless_float"]
      required :type, const: :"value/number/unitless_float"

      # @!method initialize(number:, type: :"value/number/unitless_float")
      #   Floating point number
      #
      #   @param number [Float]
      #   @param type [Symbol, :"value/number/unitless_float"]
    end
  end
end
