# frozen_string_literal: true

module Moonbase
  module Models
    class FunnelStepValueParam < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A specific funnel step, as configured on the Funnel
      #
      #   @return [Moonbase::Models::FunnelStep, Moonbase::Models::Pointer]
      required :data, union: -> { Moonbase::FunnelStepValueParam::Data }

      # @!attribute type
      #
      #   @return [Symbol, :"value/funnel_step"]
      required :type, const: :"value/funnel_step"

      # @!method initialize(data:, type: :"value/funnel_step")
      #   Funnel step value
      #
      #   @param data [Moonbase::Models::FunnelStep, Moonbase::Models::Pointer] A specific funnel step, as configured on the Funnel
      #
      #   @param type [Symbol, :"value/funnel_step"]

      # A specific funnel step, as configured on the Funnel
      #
      # @see Moonbase::Models::FunnelStepValueParam#data
      module Data
        extend Moonbase::Internal::Type::Union

        # Represents a single step within a `Funnel`.
        variant -> { Moonbase::FunnelStep }

        # A lightweight reference to another resource.
        variant -> { Moonbase::Pointer }

        # @!method self.variants
        #   @return [Array(Moonbase::Models::FunnelStep, Moonbase::Models::Pointer)]
      end
    end
  end
end
