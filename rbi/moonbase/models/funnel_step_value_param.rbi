# typed: strong

module Moonbase
  module Models
    class FunnelStepValueParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::FunnelStepValueParam, Moonbase::Internal::AnyHash)
        end

      # A specific funnel step, as configured on the Funnel.
      sig { returns(Moonbase::FunnelStepPointer) }
      attr_reader :data

      sig { params(data: Moonbase::FunnelStepPointer::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Funnel step value
      sig do
        params(data: Moonbase::FunnelStepPointer::OrHash, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # A specific funnel step, as configured on the Funnel.
        data:,
        type: :"value/funnel_step"
      )
      end

      sig do
        override.returns({ data: Moonbase::FunnelStepPointer, type: Symbol })
      end
      def to_hash
      end
    end
  end
end
