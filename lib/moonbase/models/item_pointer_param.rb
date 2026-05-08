# frozen_string_literal: true

module Moonbase
  module Models
    class ItemPointerParam < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the item.
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #   String representing the object’s type. Always `item` for this object.
      #
      #   @return [Symbol, :item]
      required :type, const: :item

      # @!method initialize(id:, type: :item)
      #   A lightweight reference to an `Item` used in request bodies.
      #
      #   @param id [String] Unique identifier of the item.
      #
      #   @param type [Symbol, :item] String representing the object’s type. Always `item` for this object.
    end
  end
end
