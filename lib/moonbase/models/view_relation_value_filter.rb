# frozen_string_literal: true

module Moonbase
  module Models
    class ViewRelationValueFilter < Moonbase::Internal::Type::BaseModel
      # @!attribute field
      #   The relation column whose related items are filtered.
      #
      #   @return [String]
      required :field, String

      # @!attribute filter
      #   The filter the related items must match. Field paths are relative to the related
      #   collection.
      #
      #   @return [Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches]
      required :filter, union: -> { Moonbase::ItemsFilter }

      # @!method initialize(field:, filter:)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ViewRelationValueFilter} for more details.
      #
      #   Limits which related items a relation column shows: only related items matching
      #   `filter` appear.
      #
      #   @param field [String] The relation column whose related items are filtered.
      #
      #   @param filter [Moonbase::Models::ItemsFilterValueExists, Moonbase::Models::ItemsFilterAndGroup, Moonbase::Models::ItemsFilterOrGroup, Moonbase::Models::ItemsFilterNotGroup, Moonbase::Models::ItemsFilterValueMatches] The filter the related items must match. Field paths are relative to the related
    end
  end
end
