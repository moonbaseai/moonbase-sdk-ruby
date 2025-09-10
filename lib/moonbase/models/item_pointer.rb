# frozen_string_literal: true

module Moonbase
  module Models
    class ItemPointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the item.
      #
      #   @return [String]
      required :id, String

      # @!attribute collection
      #   A reference to the `Collection` containing this item.
      #
      #   @return [Moonbase::Models::CollectionPointer]
      required :collection, -> { Moonbase::CollectionPointer }

      # @!attribute type
      #   String representing the object’s type. Always `item` for this object.
      #
      #   @return [Symbol, :item]
      required :type, const: :item

      # @!method initialize(id:, collection:, type: :item)
      #   A reference to an `Item` within a specific `Collection`, providing the context
      #   needed to locate the item.
      #
      #   @param id [String] Unique identifier of the item.
      #
      #   @param collection [Moonbase::Models::CollectionPointer] A reference to the `Collection` containing this item.
      #
      #   @param type [Symbol, :item] String representing the object’s type. Always `item` for this object.
    end
  end
end
