# frozen_string_literal: true

module Moonbase
  module Models
    class RelationValue < Moonbase::Internal::Type::BaseModel
      # @!attribute item
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer]
      required :item, -> { Moonbase::ItemPointer }

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
      #   @param item [Moonbase::Models::ItemPointer] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param type [Symbol, :"value/relation"]
    end
  end
end
