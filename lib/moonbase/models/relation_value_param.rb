# frozen_string_literal: true

module Moonbase
  module Models
    class RelationValueParam < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A reference to another Moonbase item.
      #
      #   @return [Moonbase::Models::ItemPointer, Moonbase::Models::Pointer]
      required :data, union: -> { Moonbase::RelationValueParam::Data }

      # @!attribute type
      #
      #   @return [Symbol, :"value/relation"]
      required :type, const: :"value/relation"

      # @!method initialize(data:, type: :"value/relation")
      #   Related item reference
      #
      #   @param data [Moonbase::Models::ItemPointer, Moonbase::Models::Pointer] A reference to another Moonbase item.
      #
      #   @param type [Symbol, :"value/relation"]

      # A reference to another Moonbase item.
      #
      # @see Moonbase::Models::RelationValueParam#data
      module Data
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
