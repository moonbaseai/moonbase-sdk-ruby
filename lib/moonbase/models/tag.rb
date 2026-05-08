# frozen_string_literal: true

module Moonbase
  module Models
    class Tag < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute color
      #   The color for the tag.
      #
      #   @return [Symbol, Moonbase::Models::Tag::Color]
      required :color, enum: -> { Moonbase::Tag::Color }

      # @!attribute name
      #   The name of the tag.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   String representing the object’s type. Always `tag` for this object.
      #
      #   @return [Symbol, :tag]
      required :type, const: :tag

      # @!method initialize(id:, color:, name:, type: :tag)
      #   A Tag is a label that can be applied to supported resources (such as
      #   conversations, calls, and meetings) for organization and filtering.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param color [Symbol, Moonbase::Models::Tag::Color] The color for the tag.
      #
      #   @param name [String] The name of the tag.
      #
      #   @param type [Symbol, :tag] String representing the object’s type. Always `tag` for this object.

      # The color for the tag.
      #
      # @see Moonbase::Models::Tag#color
      module Color
        extend Moonbase::Internal::Type::Enum

        AMBER = :amber
        BLUE = :blue
        CYAN = :cyan
        EMERALD = :emerald
        FUCHSIA = :fuchsia
        GREEN = :green
        INDIGO = :indigo
        LIME = :lime
        LUNAR = :lunar
        ORANGE = :orange
        PINK = :pink
        PURPLE = :purple
        RED = :red
        ROSE = :rose
        SKY = :sky
        TEAL = :teal
        VIOLET = :violet
        YELLOW = :yellow

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
