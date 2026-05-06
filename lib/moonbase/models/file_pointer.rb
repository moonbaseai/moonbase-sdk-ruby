# frozen_string_literal: true

module Moonbase
  module Models
    class FilePointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :file]
      required :type, const: :file

      # @!method initialize(id:, type: :file)
      #   @param id [String]
      #   @param type [Symbol, :file]
    end
  end
end
