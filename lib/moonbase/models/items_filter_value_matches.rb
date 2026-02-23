# frozen_string_literal: true

module Moonbase
  module Models
    class ItemsFilterValueMatches < Moonbase::Internal::Type::BaseModel
      # @!attribute field
      #   The id or key of the field in which values are matched.
      #
      #   @return [String]
      required :field, String

      # @!attribute op
      #   The matching operator for this filter.
      #
      #   @return [Symbol, Moonbase::Models::ItemsFilterValueMatches::Op]
      required :op, enum: -> { Moonbase::ItemsFilterValueMatches::Op }

      # @!attribute value
      #   The value to match against. Use ISO8601 format for dates and datetime fields.
      #   For date fields, the time portion of the date-time will be ignored. For currency
      #   fields, the amount should be in the smallest unit of currency (eg: cents for
      #   USD).
      #
      #   @return [String, Float, Boolean]
      required :value, union: -> { Moonbase::ItemsFilterValueMatches::Value }

      # @!method initialize(field:, op:, value:)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ItemsFilterValueMatches} for more details.
      #
      #   Include only items with a value in the given `field` that satisfies the `op`
      #   condition.
      #
      #   @param field [String] The id or key of the field in which values are matched.
      #
      #   @param op [Symbol, Moonbase::Models::ItemsFilterValueMatches::Op] The matching operator for this filter.
      #
      #   @param value [String, Float, Boolean] The value to match against. Use ISO8601 format for dates and datetime fields. Fo

      # The matching operator for this filter.
      #
      # @see Moonbase::Models::ItemsFilterValueMatches#op
      module Op
        extend Moonbase::Internal::Type::Enum

        STARTS_WITH = :starts_with
        ENDS_WITH = :ends_with
        CONTAINS = :contains
        NOT_CONTAINS = :not_contains
        EQ = :eq
        NOT_EQ = :not_eq
        GT = :gt
        LT = :lt
        GTE = :gte
        LTE = :lte

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The value to match against. Use ISO8601 format for dates and datetime fields.
      # For date fields, the time portion of the date-time will be ignored. For currency
      # fields, the amount should be in the smallest unit of currency (eg: cents for
      # USD).
      #
      # @see Moonbase::Models::ItemsFilterValueMatches#value
      module Value
        extend Moonbase::Internal::Type::Union

        variant String

        variant Float

        variant Moonbase::Internal::Type::Boolean

        # @!method self.variants
        #   @return [Array(String, Float, Boolean)]
      end
    end
  end
end
