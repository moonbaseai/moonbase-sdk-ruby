# frozen_string_literal: true

module Moonbase
  module Models
    class NotePointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :note]
      required :type, const: :note

      # @!method initialize(id:, type: :note)
      #   @param id [String]
      #   @param type [Symbol, :note]
    end
  end
end
