# frozen_string_literal: true

module Moonbase
  module Models
    class RelationValueParam < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A reference to another Moonbase item.
      #
      #   @return [Moonbase::Models::ItemPointerParam]
      required :data, -> { Moonbase::ItemPointerParam }

      # @!attribute type
      #
      #   @return [Symbol, :"value/relation"]
      required :type, const: :"value/relation"

      # @!method initialize(data:, type: :"value/relation")
      #   Related item reference
      #
      #   @param data [Moonbase::Models::ItemPointerParam] A reference to another Moonbase item.
      #
      #   @param type [Symbol, :"value/relation"]
    end
  end
end
