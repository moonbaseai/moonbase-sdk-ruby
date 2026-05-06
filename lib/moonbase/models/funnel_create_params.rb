# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Funnels#create
    class FunnelCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute name
      #   The name of the funnel.
      #
      #   @return [String]
      required :name, String

      # @!attribute steps
      #   An ordered list of steps to create. Array order determines step order.
      #
      #   @return [Array<Moonbase::Models::FunnelCreateParams::Step>, nil]
      optional :steps, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::FunnelCreateParams::Step] }

      # @!method initialize(name:, steps: nil, request_options: {})
      #   @param name [String] The name of the funnel.
      #
      #   @param steps [Array<Moonbase::Models::FunnelCreateParams::Step>] An ordered list of steps to create. Array order determines step order.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Step < Moonbase::Internal::Type::BaseModel
        # @!attribute color
        #   The display color of the step.
        #
        #   @return [Symbol, Moonbase::Models::FunnelCreateParams::Step::Color]
        required :color, enum: -> { Moonbase::FunnelCreateParams::Step::Color }

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
        #   @return [Symbol, Moonbase::Models::FunnelCreateParams::Step::StepType]
        required :step_type, enum: -> { Moonbase::FunnelCreateParams::Step::StepType }

        # @!method initialize(color:, name:, step_type:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::FunnelCreateParams::Step} for more details.
        #
        #   Parameters for creating a funnel step.
        #
        #   @param color [Symbol, Moonbase::Models::FunnelCreateParams::Step::Color] The display color of the step.
        #
        #   @param name [String] The name of the step.
        #
        #   @param step_type [Symbol, Moonbase::Models::FunnelCreateParams::Step::StepType] The status of the step in the funnel flow.

        # The display color of the step.
        #
        # @see Moonbase::Models::FunnelCreateParams::Step#color
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
        # @see Moonbase::Models::FunnelCreateParams::Step#step_type
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
end
