# typed: strong

module Moonbase
  module Models
    class FunnelStep < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::FunnelStep, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The name of the step.
      sig { returns(String) }
      attr_accessor :name

      # The status of the step in the funnel flow.
      #
      # - `active`: represents an in progress state within the funnel
      # - `success`: completed successfully and exited the funnel
      # - `failure`: exited the funnel without conversion
      sig { returns(Moonbase::FunnelStep::StepType::OrSymbol) }
      attr_accessor :step_type

      # String representing the object’s type. Always `funnel_step` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents a single step within a `Funnel`.
      sig do
        params(
          id: String,
          name: String,
          step_type: Moonbase::FunnelStep::StepType::OrSymbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The name of the step.
        name:,
        # The status of the step in the funnel flow.
        #
        # - `active`: represents an in progress state within the funnel
        # - `success`: completed successfully and exited the funnel
        # - `failure`: exited the funnel without conversion
        step_type:,
        # String representing the object’s type. Always `funnel_step` for this object.
        type: :funnel_step
      )
      end

      sig do
        override.returns(
          {
            id: String,
            name: String,
            step_type: Moonbase::FunnelStep::StepType::OrSymbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      # The status of the step in the funnel flow.
      #
      # - `active`: represents an in progress state within the funnel
      # - `success`: completed successfully and exited the funnel
      # - `failure`: exited the funnel without conversion
      module StepType
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::FunnelStep::StepType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, Moonbase::FunnelStep::StepType::TaggedSymbol)
        SUCCESS = T.let(:success, Moonbase::FunnelStep::StepType::TaggedSymbol)
        FAILURE = T.let(:failure, Moonbase::FunnelStep::StepType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::FunnelStep::StepType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
