# frozen_string_literal: true

module Moonbase
  module Models
    class FunnelStep < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute color
      #   The display color of the step.
      #
      #   @return [Symbol, Moonbase::Models::FunnelStep::Color]
      required :color, enum: -> { Moonbase::FunnelStep::Color }

      # @!attribute name
      #   The name of the step.
      #
      #   @return [String]
      required :name, String

      # @!attribute step_type
      #   The status of the step in the funnel flow.
      #
      #   - `active`: represents an in progress state within the funnel
      #   - `success`: completed successfully and exited the funnel
      #   - `failure`: exited the funnel without conversion
      #
      #   @return [Symbol, Moonbase::Models::FunnelStep::StepType]
      required :step_type, enum: -> { Moonbase::FunnelStep::StepType }

      # @!attribute type
      #   String representing the object’s type. Always `funnel_step` for this object.
      #
      #   @return [Symbol, :funnel_step]
      required :type, const: :funnel_step

      # @!method initialize(id:, color:, name:, step_type:, type: :funnel_step)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::FunnelStep} for more details.
      #
      #   Represents a single step within a `Funnel`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param color [Symbol, Moonbase::Models::FunnelStep::Color] The display color of the step.
      #
      #   @param name [String] The name of the step.
      #
      #   @param step_type [Symbol, Moonbase::Models::FunnelStep::StepType] The status of the step in the funnel flow.
      #
      #   @param type [Symbol, :funnel_step] String representing the object’s type. Always `funnel_step` for this object.

      # The display color of the step.
      #
      # @see Moonbase::Models::FunnelStep#color
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

      # The status of the step in the funnel flow.
      #
      # - `active`: represents an in progress state within the funnel
      # - `success`: completed successfully and exited the funnel
      # - `failure`: exited the funnel without conversion
      #
      # @see Moonbase::Models::FunnelStep#step_type
      module StepType
        extend Moonbase::Internal::Type::Enum

        ACTIVE = :active
        SUCCESS = :success
        FAILURE = :failure

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
