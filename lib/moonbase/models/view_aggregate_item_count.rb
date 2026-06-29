# frozen_string_literal: true

module Moonbase
  module Models
    class ViewAggregateItemCount < Moonbase::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, :item_count]
      required :type, const: :item_count

      # @!attribute group
      #   An optional field whose values bucket the counts.
      #
      #   @return [String, nil]
      optional :group, String

      # @!method initialize(group: nil, type: :item_count)
      #   Counts the view's items.
      #
      #   @param group [String] An optional field whose values bucket the counts.
      #
      #   @param type [Symbol, :item_count]
    end
  end
end
