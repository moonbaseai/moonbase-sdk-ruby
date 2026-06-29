# frozen_string_literal: true

module Moonbase
  module Models
    # A metric computed over the view's items.
    module ViewAggregate
      extend Moonbase::Internal::Type::Union

      discriminator :type

      # Counts the view's items.
      variant :item_count, -> { Moonbase::ViewAggregateItemCount }

      # Computes a statistic over the values of a field.
      variant :field_statistic, -> { Moonbase::ViewAggregateFieldStatistic }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::ViewAggregateItemCount, Moonbase::Models::ViewAggregateFieldStatistic)]
    end
  end
end
