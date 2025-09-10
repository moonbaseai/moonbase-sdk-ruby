# typed: strong

module Moonbase
  module Models
    class FunnelStepValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::FunnelStepValue, Moonbase::Internal::AnyHash)
        end

      # A specific funnel step, as configured on the Funnel
      sig { returns(Moonbase::FunnelStep) }
      attr_reader :data

      sig { params(data: Moonbase::FunnelStep::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Funnel step value
      sig do
        params(data: Moonbase::FunnelStep::OrHash, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # A specific funnel step, as configured on the Funnel
        data:,
        type: :"value/funnel_step"
      )
      end

      sig { override.returns({ data: Moonbase::FunnelStep, type: Symbol }) }
      def to_hash
      end
    end
  end
end
