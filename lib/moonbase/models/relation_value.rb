# frozen_string_literal: true

module Moonbase
  module Models
    class RelationValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A reference to another Moonbase item.
      #
      #   @return [Moonbase::Models::ItemPointer]
      required :data, -> { Moonbase::ItemPointer }

      # @!attribute type
      #
      #   @return [Symbol, :"value/relation"]
      required :type, const: :"value/relation"

      # @!method initialize(data:, type: :"value/relation")
      #   Related item reference
      #
      #   @param data [Moonbase::Models::ItemPointer] A reference to another Moonbase item.
      #
      #   @param type [Symbol, :"value/relation"]
    end
  end
end
