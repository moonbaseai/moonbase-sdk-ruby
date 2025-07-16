# frozen_string_literal: true

module Moonbase
  module Models
    class RelationValue < Moonbase::Internal::Type::BaseModel
      # @!attribute item
      #   An Item represents a single record or row within a Collection. It holds a set of
      #   `values` corresponding to the Collection's `fields`.
      #
      #   @return [Moonbase::Models::Item]
      required :item, -> { Moonbase::Item }

      # @!attribute type
      #
      #   @return [Symbol, :"value/relation"]
      required :type, const: :"value/relation"

      # @!method initialize(item:, type: :"value/relation")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::RelationValue} for more details.
      #
      #   Related item reference
      #
      #   @param item [Moonbase::Models::Item] An Item represents a single record or row within a Collection. It holds a set of
      #
      #   @param type [Symbol, :"value/relation"]
    end
  end
end
