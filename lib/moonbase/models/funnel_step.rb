# frozen_string_literal: true

module Moonbase
  module Models
    class FunnelStep < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   The name of the step.
      #
      #   @return [String]
      required :name, String

      # @!attribute step_type
      #   The type of step, which can be `active`, `success`, or `failure`.
      #
      #   @return [Symbol, Moonbase::Models::FunnelStep::StepType]
      required :step_type, enum: -> { Moonbase::FunnelStep::StepType }

      # @!attribute type
      #   String representing the object’s type. Always `funnel_step` for this object.
      #
      #   @return [Symbol, :funnel_step]
      required :type, const: :funnel_step

      # @!method initialize(id:, name:, step_type:, type: :funnel_step)
      #   Represents a single step within a `Funnel`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param name [String] The name of the step.
      #
      #   @param step_type [Symbol, Moonbase::Models::FunnelStep::StepType] The type of step, which can be `active`, `success`, or `failure`.
      #
      #   @param type [Symbol, :funnel_step] String representing the object’s type. Always `funnel_step` for this object.

      # The type of step, which can be `active`, `success`, or `failure`.
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
