# frozen_string_literal: true

module Moonbase
  module Models
    # Return only items that match the filter conditions. Complex filters can be
    # created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
    module ItemsFilter
      extend Moonbase::Internal::Type::Union

      discriminator :op

      # Include only items with a value in the given `field` that satisfies the `op` condition.
      variant -> { Moonbase::ItemsFilterValueMatches }

      # Include only items that have a value in the given `field`.
      variant -> { Moonbase::ItemsFilterValueExists }

      # Include only items that match ALL of the filters in `filters`.
      variant -> { Moonbase::ItemsFilterAndGroup }

      # Include only items that match ANY of the filters in `filters`.
      variant -> { Moonbase::ItemsFilterOrGroup }

      variant -> { Moonbase::ItemsFilterNotGroup }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::ItemsFilterValueMatches, Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup)]
    end
  end
end
