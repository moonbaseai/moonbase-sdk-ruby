# frozen_string_literal: true

module Moonbase
  module Models
    class TelephoneNumber < Moonbase::Internal::Type::BaseModel
      # @!attribute telephone_number
      #
      #   @return [String]
      required :telephone_number, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/telephone_number"]
      required :type, const: :"value/telephone_number"

      # @!method initialize(telephone_number:, type: :"value/telephone_number")
      #   Telephone number value
      #
      #   @param telephone_number [String]
      #   @param type [Symbol, :"value/telephone_number"]
    end
  end
end
