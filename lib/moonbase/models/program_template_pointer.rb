# frozen_string_literal: true

module Moonbase
  module Models
    class ProgramTemplatePointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :program_template]
      required :type, const: :program_template

      # @!method initialize(id:, type: :program_template)
      #   @param id [String]
      #   @param type [Symbol, :program_template]
    end
  end
end
