# frozen_string_literal: true

module Moonbase
  module Models
    # Return only items that match the filter conditions. Complex filters can be
    # created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
    module ItemsFilter
      extend Moonbase::Internal::Type::Union

      discriminator :op

      # Include only items that have a value in the given `field`.
      variant :exists, -> { Moonbase::ItemsFilterValueExists }

      # Include only items that match ALL of the filters in `filters`.
      variant :and, -> { Moonbase::ItemsFilterAndGroup }

      # Include only items that match ANY of the filters in `filters`.
      variant :or, -> { Moonbase::ItemsFilterOrGroup }

      # Include only items that do NOT match the nested `filter`.
      variant :not, -> { Moonbase::ItemsFilterNotGroup }

      # Include only items with a value in the given `field` that satisfies the `op` condition.
      variant -> { Moonbase::ItemsFilterValueMatches }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches)]
    end
  end
end
