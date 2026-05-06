# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Funnels#update
    class FunnelUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   The name of the funnel.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute steps
      #   An ordered list of steps. Providing this replaces all existing steps. Omitting
      #   preserves existing steps.
      #
      #   @return [Array<Moonbase::Models::FunnelUpdateParams::Step>, nil]
      optional :steps, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::FunnelUpdateParams::Step] }

      # @!method initialize(id:, name: nil, steps: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::FunnelUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param name [String] The name of the funnel.
      #
      #   @param steps [Array<Moonbase::Models::FunnelUpdateParams::Step>] An ordered list of steps. Providing this replaces all existing steps. Omitting p
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Step < Moonbase::Internal::Type::BaseModel
        # @!attribute color
        #   The display color of the step.
        #
        #   @return [Symbol, Moonbase::Models::FunnelUpdateParams::Step::Color]
        required :color, enum: -> { Moonbase::FunnelUpdateParams::Step::Color }

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
        #   @return [Symbol, Moonbase::Models::FunnelUpdateParams::Step::StepType]
        required :step_type, enum: -> { Moonbase::FunnelUpdateParams::Step::StepType }

        # @!attribute id
        #   The ID of an existing step to update. Omit to create a new step.
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(color:, name:, step_type:, id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::FunnelUpdateParams::Step} for more details.
        #
        #   Parameters for updating a funnel step. Include `id` to update an existing step,
        #   or omit `id` to create a new one. Steps not included are removed.
        #
        #   @param color [Symbol, Moonbase::Models::FunnelUpdateParams::Step::Color] The display color of the step.
        #
        #   @param name [String] The name of the step.
        #
        #   @param step_type [Symbol, Moonbase::Models::FunnelUpdateParams::Step::StepType] The status of the step in the funnel flow.
        #
        #   @param id [String] The ID of an existing step to update. Omit to create a new step.

        # The display color of the step.
        #
        # @see Moonbase::Models::FunnelUpdateParams::Step#color
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
        # @see Moonbase::Models::FunnelUpdateParams::Step#step_type
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
