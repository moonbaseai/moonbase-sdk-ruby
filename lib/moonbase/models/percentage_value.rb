# frozen_string_literal: true

module Moonbase
  module Models
    class PercentageValue < Moonbase::Internal::Type::BaseModel
      # @!attribute percentage
      #
      #   @return [Float]
      required :percentage, Float

      # @!attribute type
      #
      #   @return [Symbol, :"value/number/percentage"]
      required :type, const: :"value/number/percentage"

      # @!method initialize(percentage:, type: :"value/number/percentage")
      #   Percentage numeric value
      #
      #   @param percentage [Float]
      #   @param type [Symbol, :"value/number/percentage"]
    end
  end
end
