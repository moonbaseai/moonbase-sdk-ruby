# frozen_string_literal: true

module Moonbase
  module Models
    class IdentifierValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   An external identifier as text, uo to 255 characters in length.
      #
      #   @return [String]
      required :data, String

      # @!attribute type
      #
      #   @return [Symbol, :"value/identifier"]
      required :type, const: :"value/identifier"

      # @!method initialize(data:, type: :"value/identifier")
      #   Identifier string
      #
      #   @param data [String] An external identifier as text, uo to 255 characters in length.
      #
      #   @param type [Symbol, :"value/identifier"]
    end
  end
end
