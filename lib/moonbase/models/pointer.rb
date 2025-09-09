# frozen_string_literal: true

module Moonbase
  module Models
    class Pointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the referenced object.
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #   String indicating the type of the referenced object.
      #
      #   @return [String]
      required :type, String

      # @!method initialize(id:, type:)
      #   A lightweight reference to another resource.
      #
      #   @param id [String] Unique identifier for the referenced object.
      #
      #   @param type [String] String indicating the type of the referenced object.
    end
  end
end
