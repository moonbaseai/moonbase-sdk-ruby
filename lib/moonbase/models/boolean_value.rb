# frozen_string_literal: true

module Moonbase
  module Models
    class BooleanValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Boolean]
      required :data, Moonbase::Internal::Type::Boolean

      # @!attribute type
      #
      #   @return [Symbol, :"value/boolean"]
      required :type, const: :"value/boolean"

      # @!method initialize(data:, type: :"value/boolean")
      #   True or false value
      #
      #   @param data [Boolean]
      #   @param type [Symbol, :"value/boolean"]
    end
  end
end
