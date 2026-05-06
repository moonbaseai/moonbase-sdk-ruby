# frozen_string_literal: true

module Moonbase
  module Models
    class TagPointerParam < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the tag.
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #   String representing the object’s type. Always `tag` for this object.
      #
      #   @return [Symbol, :tag]
      required :type, const: :tag

      # @!method initialize(id:, type: :tag)
      #   A lightweight reference to a `Tag` used in request bodies.
      #
      #   @param id [String] Unique identifier of the tag.
      #
      #   @param type [Symbol, :tag] String representing the object’s type. Always `tag` for this object.
    end
  end
end
