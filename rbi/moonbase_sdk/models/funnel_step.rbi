# typed: strong

module MoonbaseSDK
  module Models
    class FunnelStep < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::FunnelStep, MoonbaseSDK::Internal::AnyHash)
        end

      sig { returns(MoonbaseSDK::FunnelStep::Step) }
      attr_reader :step

      sig { params(step: MoonbaseSDK::FunnelStep::Step::OrHash).void }
      attr_writer :step

      sig { returns(Symbol) }
      attr_accessor :type

      # Funnel step value
      sig do
        params(
          step: MoonbaseSDK::FunnelStep::Step::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(step:, type: :"value/funnel_step")
      end

      sig do
        override.returns({ step: MoonbaseSDK::FunnelStep::Step, type: Symbol })
      end
      def to_hash
      end

      class Step < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::FunnelStep::Step, MoonbaseSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(id: String, name: String, type: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(id:, name: nil, type: :funnel_step)
        end

        sig { override.returns({ id: String, type: Symbol, name: String }) }
        def to_hash
        end
      end
    end
  end
end
