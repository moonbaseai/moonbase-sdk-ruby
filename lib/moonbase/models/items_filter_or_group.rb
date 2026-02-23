# frozen_string_literal: true

module Moonbase
  module Models
    class ItemsFilterOrGroup < Moonbase::Internal::Type::BaseModel
      # @!attribute filters
      #   An array of filters, ANY of which must be satisfied for this `or` filter to
      #   match.
      #
      #   @return [Array<Moonbase::Models::ItemsFilter>]
      required :filters, -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::ItemsFilter] }

      # @!attribute op
      #
      #   @return [Symbol, :or]
      required :op, const: :or

      # @!method initialize(filters:, op: :or)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ItemsFilterOrGroup} for more details.
      #
      #   Include only items that match ANY of the filters in `filters`.
      #
      #   @param filters [Array<Moonbase::Models::ItemsFilter>] An array of filters, ANY of which must be satisfied for this `or` filter to matc
      #
      #   @param op [Symbol, :or]
    end
  end
end
