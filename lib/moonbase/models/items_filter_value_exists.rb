# frozen_string_literal: true

module Moonbase
  module Models
    class ItemsFilterValueExists < Moonbase::Internal::Type::BaseModel
      # @!attribute field
      #   The id or key of the field for which a value must exist.
      #
      #   @return [String]
      required :field, String

      # @!attribute op
      #
      #   @return [Symbol, :exists]
      required :op, const: :exists

      # @!method initialize(field:, op: :exists)
      #   Include only items that have a value in the given `field`.
      #
      #   @param field [String] The id or key of the field for which a value must exist.
      #
      #   @param op [Symbol, :exists]
    end
  end
end
