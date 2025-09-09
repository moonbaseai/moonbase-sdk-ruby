# frozen_string_literal: true

module Moonbase
  module Models
    class RelationValueParam < Moonbase::Internal::Type::BaseModel
      # @!attribute item
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @return [Moonbase::Models::ItemPointer, Moonbase::Models::Pointer]
      required :item, union: -> { Moonbase::RelationValueParam::Item }

      # @!attribute type
      #
      #   @return [Symbol, :"value/relation"]
      required :type, const: :"value/relation"

      # @!method initialize(item:, type: :"value/relation")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::RelationValueParam} for more details.
      #
      #   Related item reference
      #
      #   @param item [Moonbase::Models::ItemPointer, Moonbase::Models::Pointer] A reference to an `Item` within a specific `Collection`, providing the context n
      #
      #   @param type [Symbol, :"value/relation"]

      # A reference to an `Item` within a specific `Collection`, providing the context
      # needed to locate the item.
      #
      # @see Moonbase::Models::RelationValueParam#item
      module Item
        extend Moonbase::Internal::Type::Union

        # A reference to an `Item` within a specific `Collection`, providing the context needed to locate the item.
        variant -> { Moonbase::ItemPointer }

        # A lightweight reference to another resource.
        variant -> { Moonbase::Pointer }

        # @!method self.variants
        #   @return [Array(Moonbase::Models::ItemPointer, Moonbase::Models::Pointer)]
      end
    end
  end
end
