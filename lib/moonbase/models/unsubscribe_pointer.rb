# frozen_string_literal: true

module Moonbase
  module Models
    class UnsubscribePointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :unsubscribe]
      required :type, const: :unsubscribe

      # @!method initialize(id:, type: :unsubscribe)
      #   @param id [String]
      #   @param type [Symbol, :unsubscribe]
    end
  end
end
