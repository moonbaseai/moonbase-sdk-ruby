# frozen_string_literal: true

module Moonbase
  module Models
    class FieldPointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the field.
      #
      #   @return [String]
      required :id, String

      # @!attribute collection
      #   A reference to the `Collection` containing this field.
      #
      #   @return [Moonbase::Models::CollectionPointer]
      required :collection, -> { Moonbase::CollectionPointer }

      # @!attribute ref
      #   The stable, machine-readable reference identifier of the field.
      #
      #   @return [String]
      required :ref, String

      # @!attribute type
      #   String representing the object’s type. Always `field` for this object.
      #
      #   @return [Symbol, :field]
      required :type, const: :field

      # @!method initialize(id:, collection:, ref:, type: :field)
      #   A lightweight reference to a `Field`, containing the minimal information needed
      #   to identify it.
      #
      #   @param id [String] Unique identifier of the field.
      #
      #   @param collection [Moonbase::Models::CollectionPointer] A reference to the `Collection` containing this field.
      #
      #   @param ref [String] The stable, machine-readable reference identifier of the field.
      #
      #   @param type [Symbol, :field] String representing the object’s type. Always `field` for this object.
    end
  end
end
