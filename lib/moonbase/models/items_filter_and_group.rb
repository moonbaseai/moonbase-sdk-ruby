# frozen_string_literal: true

module Moonbase
  module Models
    class ItemsFilterAndGroup < Moonbase::Internal::Type::BaseModel
      # @!attribute filters
      #   An array of filters, ALL of which must be satisfied for this `and` filter to
      #   match.
      #
      #   @return [Array<Moonbase::Models::ItemsFilter>]
      required :filters, -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::ItemsFilter] }

      # @!attribute op
      #
      #   @return [Symbol, :and]
      required :op, const: :and

      # @!method initialize(filters:, op: :and)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ItemsFilterAndGroup} for more details.
      #
      #   Include only items that match ALL of the filters in `filters`.
      #
      #   @param filters [Array<Moonbase::Models::ItemsFilter>] An array of filters, ALL of which must be satisfied for this `and` filter to mat
      #
      #   @param op [Symbol, :and]
    end
  end
end
