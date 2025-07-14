# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class GeoValue < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute geo
      #
      #   @return [String]
      required :geo, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/geo"]
      required :type, const: :"value/geo"

      # @!method initialize(geo:, type: :"value/geo")
      #   Geographic coordinate value
      #
      #   @param geo [String]
      #   @param type [Symbol, :"value/geo"]
    end
  end
end
