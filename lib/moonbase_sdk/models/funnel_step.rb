# frozen_string_literal: true

module MoonbaseSDK
  module Models
    class FunnelStep < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute step
      #
      #   @return [MoonbaseSDK::Models::FunnelStep::Step]
      required :step, -> { MoonbaseSDK::FunnelStep::Step }

      # @!attribute type
      #
      #   @return [Symbol, :"value/funnel_step"]
      required :type, const: :"value/funnel_step"

      # @!method initialize(step:, type: :"value/funnel_step")
      #   Funnel step value
      #
      #   @param step [MoonbaseSDK::Models::FunnelStep::Step]
      #   @param type [Symbol, :"value/funnel_step"]

      # @see MoonbaseSDK::Models::FunnelStep#step
      class Step < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #
        #   @return [Symbol, :funnel_step]
        required :type, const: :funnel_step

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, name: nil, type: :funnel_step)
        #   @param id [String]
        #   @param name [String]
        #   @param type [Symbol, :funnel_step]
      end
    end
  end
end
