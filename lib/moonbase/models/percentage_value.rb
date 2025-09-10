# frozen_string_literal: true

module Moonbase
  module Models
    class PercentageValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A floating-point number representing a percentage value, for example 50.21 for
      #   50.21% or -1000 for -1000% etc.
      #
      #   @return [Float]
      required :data, Float

      # @!attribute type
      #
      #   @return [Symbol, :"value/number/percentage"]
      required :type, const: :"value/number/percentage"

      # @!method initialize(data:, type: :"value/number/percentage")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::PercentageValue} for more details.
      #
      #   Percentage numeric value
      #
      #   @param data [Float] A floating-point number representing a percentage value, for example 50.21 for 5
      #
      #   @param type [Symbol, :"value/number/percentage"]
    end
  end
end
