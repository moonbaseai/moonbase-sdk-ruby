# frozen_string_literal: true

module Moonbase
  module Models
    class FunnelStepPointer < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, :funnel_step]
      required :type, const: :funnel_step

      # @!method initialize(id:, type: :funnel_step)
      #   @param id [String]
      #   @param type [Symbol, :funnel_step]
    end
  end
end
