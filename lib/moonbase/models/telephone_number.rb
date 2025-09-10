# frozen_string_literal: true

module Moonbase
  module Models
    class TelephoneNumber < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A telephone number in strictly formatted E.164 format. Do not include spaces,
      #   dashes, or parentheses etc.
      #
      #   @return [String]
      required :data, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/telephone_number"]
      required :type, const: :"value/telephone_number"

      # @!method initialize(data:, type: :"value/telephone_number")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::TelephoneNumber} for more details.
      #
      #   Telephone number value
      #
      #   @param data [String] A telephone number in strictly formatted E.164 format. Do not include spaces, da
      #
      #   @param type [Symbol, :"value/telephone_number"]
    end
  end
end
