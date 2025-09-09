# frozen_string_literal: true

module Moonbase
  module Models
    class FunnelStepValue < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #   A specific funnel step, as configured on the Funnel
      #
      #   @return [Moonbase::Models::FunnelStep]
      required :data, -> { Moonbase::FunnelStep }

      # @!attribute type
      #
      #   @return [Symbol, :"value/funnel_step"]
      required :type, const: :"value/funnel_step"

      # @!method initialize(data:, type: :"value/funnel_step")
      #   Funnel step value
      #
      #   @param data [Moonbase::Models::FunnelStep] A specific funnel step, as configured on the Funnel
      #
      #   @param type [Symbol, :"value/funnel_step"]
    end
  end
end
