# frozen_string_literal: true

module Moonbase
  module Models
    class ProgramMessagePointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :program_message]
      required :type, const: :program_message

      # @!method initialize(id:, type: :program_message)
      #   @param id [String]
      #   @param type [Symbol, :program_message]
    end
  end
end
