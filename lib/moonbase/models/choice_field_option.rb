# frozen_string_literal: true

module Moonbase
  module Models
    class ChoiceFieldOption < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the option.
      #
      #   @return [String]
      required :id, String

      # @!attribute color
      #   The color of the option.
      #
      #   @return [Symbol, Moonbase::Models::ChoiceFieldOption::Color]
      required :color, enum: -> { Moonbase::ChoiceFieldOption::Color }

      # @!attribute name
      #   The human-readable text displayed for this option.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   String representing the object’s type. Always `choice_field_option` for this
      #   object.
      #
      #   @return [Symbol, :choice_field_option]
      required :type, const: :choice_field_option

      # @!method initialize(id:, color:, name:, type: :choice_field_option)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::ChoiceFieldOption} for more details.
      #
      #   Represents a single selectable option within a choice field.
      #
      #   @param id [String] Unique identifier for the option.
      #
      #   @param color [Symbol, Moonbase::Models::ChoiceFieldOption::Color] The color of the option.
      #
      #   @param name [String] The human-readable text displayed for this option.
      #
      #   @param type [Symbol, :choice_field_option] String representing the object’s type. Always `choice_field_option` for this obj

      # The color of the option.
      #
      # @see Moonbase::Models::ChoiceFieldOption#color
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
