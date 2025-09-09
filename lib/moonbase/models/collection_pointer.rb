# frozen_string_literal: true

module Moonbase
  module Models
    class CollectionPointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the collection.
      #
      #   @return [String]
      required :id, String

      # @!attribute ref
      #   The stable, machine-readable reference identifier of the collection.
      #
      #   @return [String]
      required :ref, String

      # @!attribute type
      #   String representing the object’s type. Always `collection` for this object.
      #
      #   @return [Symbol, :collection]
      required :type, const: :collection

      # @!method initialize(id:, ref:, type: :collection)
      #   A lightweight reference to a `Collection`, containing the minimal information
      #   needed to identify it.
      #
      #   @param id [String] Unique identifier of the collection.
      #
      #   @param ref [String] The stable, machine-readable reference identifier of the collection.
      #
      #   @param type [Symbol, :collection] String representing the object’s type. Always `collection` for this object.
    end
  end
end
