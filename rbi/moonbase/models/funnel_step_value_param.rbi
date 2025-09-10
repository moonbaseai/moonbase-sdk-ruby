# typed: strong

module Moonbase
  module Models
    class FunnelStepValueParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::FunnelStepValueParam, Moonbase::Internal::AnyHash)
        end

      # A specific funnel step, as configured on the Funnel
      sig { returns(T.any(Moonbase::FunnelStep, Moonbase::Pointer)) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Funnel step value
      sig do
        params(
          data: T.any(Moonbase::FunnelStep::OrHash, Moonbase::Pointer::OrHash),
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A specific funnel step, as configured on the Funnel
        data:,
        type: :"value/funnel_step"
      )
      end

      sig do
        override.returns(
          { data: T.any(Moonbase::FunnelStep, Moonbase::Pointer), type: Symbol }
        )
      end
      def to_hash
      end

      # A specific funnel step, as configured on the Funnel
      module Data
        extend Moonbase::Internal::Type::Union

        Variants =
          T.type_alias { T.any(Moonbase::FunnelStep, Moonbase::Pointer) }

        sig do
          override.returns(
            T::Array[Moonbase::FunnelStepValueParam::Data::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
