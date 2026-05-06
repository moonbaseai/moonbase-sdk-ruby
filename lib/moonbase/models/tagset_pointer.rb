# frozen_string_literal: true

module Moonbase
  module Models
    class TagsetPointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :tagset]
      required :type, const: :tagset

      # @!method initialize(id:, type: :tagset)
      #   @param id [String]
      #   @param type [Symbol, :tagset]
    end
  end
end
