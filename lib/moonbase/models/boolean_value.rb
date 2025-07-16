# frozen_string_literal: true

module Moonbase
  module Models
    class BooleanValue < Moonbase::Internal::Type::BaseModel
      # @!attribute boolean
      #
      #   @return [Boolean]
      required :boolean, Moonbase::Internal::Type::Boolean

      # @!attribute type
      #
      #   @return [Symbol, :"value/boolean"]
      required :type, const: :"value/boolean"

      # @!method initialize(boolean:, type: :"value/boolean")
      #   True or false value
      #
      #   @param boolean [Boolean]
      #   @param type [Symbol, :"value/boolean"]
    end
  end
end
