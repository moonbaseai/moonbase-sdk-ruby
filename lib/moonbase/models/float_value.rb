# frozen_string_literal: true

module Moonbase
  module Models
    class FloatValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Float]
      required :data, Float

      # @!attribute type
      #
      #   @return [Symbol, :"value/number/unitless_float"]
      required :type, const: :"value/number/unitless_float"

      # @!method initialize(data:, type: :"value/number/unitless_float")
      #   Floating point number
      #
      #   @param data [Float]
      #   @param type [Symbol, :"value/number/unitless_float"]
    end
  end
end
