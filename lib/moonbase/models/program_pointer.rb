# frozen_string_literal: true

module Moonbase
  module Models
    class ProgramPointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :program]
      required :type, const: :program

      # @!method initialize(id:, type: :program)
      #   @param id [String]
      #   @param type [Symbol, :program]
    end
  end
end
