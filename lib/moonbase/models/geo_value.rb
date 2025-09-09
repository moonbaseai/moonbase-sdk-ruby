# frozen_string_literal: true

module Moonbase
  module Models
    class GeoValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A string that represents some geographic location. The exact format may vary
      #   based on context.
      #
      #   @return [String]
      required :data, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/geo"]
      required :type, const: :"value/geo"

      # @!method initialize(data:, type: :"value/geo")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::GeoValue} for more details.
      #
      #   Geographic coordinate value
      #
      #   @param data [String] A string that represents some geographic location. The exact format may vary bas
      #
      #   @param type [Symbol, :"value/geo"]
    end
  end
end
