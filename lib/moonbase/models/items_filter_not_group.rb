# frozen_string_literal: true

module Moonbase
  module Models
    class ItemsFilterNotGroup < Moonbase::Internal::Type::BaseModel
      # @!attribute filter
      #   A nested filter which must NOT match in order for this `not` filter to match.
      #
      #   @return [Moonbase::Models::ItemsFilter]
      required :filter, union: -> { Moonbase::ItemsFilter }

      # @!attribute op
      #
      #   @return [Symbol, :not]
      required :op, const: :not

      # @!method initialize(filter:, op: :not)
      #   @param filter [Moonbase::Models::ItemsFilter] A nested filter which must NOT match in order for this `not` filter to match.
      #
      #   @param op [Symbol, :not]
    end
  end
end
