# frozen_string_literal: true

module Moonbase
  module Models
    class CallPointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :call]
      required :type, const: :call

      # @!method initialize(id:, type: :call)
      #   @param id [String]
      #   @param type [Symbol, :call]
    end
  end
end
