# typed: strong

module Moonbase
  module Models
    class FunnelCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::FunnelCreateParams, Moonbase::Internal::AnyHash)
        end

      # The name of the funnel.
      sig { returns(String) }
      attr_accessor :name

      # An ordered list of steps to create. Array order determines step order.
      sig { returns(T.nilable(T::Array[Moonbase::FunnelCreateParams::Step])) }
      attr_reader :steps

      sig do
        params(steps: T::Array[Moonbase::FunnelCreateParams::Step::OrHash]).void
      end
      attr_writer :steps

      sig do
        params(
          name: String,
          steps: T::Array[Moonbase::FunnelCreateParams::Step::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the funnel.
        name:,
        # An ordered list of steps to create. Array order determines step order.
        steps: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            steps: T::Array[Moonbase::FunnelCreateParams::Step],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Step < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::FunnelCreateParams::Step,
              Moonbase::Internal::AnyHash
            )
          end

        # The display color of the step.
        sig { returns(Moonbase::FunnelCreateParams::Step::Color::OrSymbol) }
        attr_accessor :color

        # The name of the step.
        sig { returns(String) }
        attr_accessor :name

        # The status of the step in the funnel flow.
        #
        # - `active`: represents an in progress state within the funnel
        # - `success`: completed successfully and exited the funnel
        # - `failure`: exited the funnel without conversion
        sig { returns(Moonbase::FunnelCreateParams::Step::StepType::OrSymbol) }
        attr_accessor :step_type

        # Parameters for creating a funnel step.
        sig do
          params(
            color: Moonbase::FunnelCreateParams::Step::Color::OrSymbol,
            name: String,
            step_type: Moonbase::FunnelCreateParams::Step::StepType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The display color of the step.
          color:,
          # The name of the step.
          name:,
          # The status of the step in the funnel flow.
          #
          # - `active`: represents an in progress state within the funnel
          # - `success`: completed successfully and exited the funnel
          # - `failure`: exited the funnel without conversion
          step_type:
        )
        end

        sig do
          override.returns(
            {
              color: Moonbase::FunnelCreateParams::Step::Color::OrSymbol,
              name: String,
              step_type: Moonbase::FunnelCreateParams::Step::StepType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The display color of the step.
        module Color
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Moonbase::FunnelCreateParams::Step::Color)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMBER =
            T.let(
              :amber,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          BLUE =
            T.let(
              :blue,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          CYAN =
            T.let(
              :cyan,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          EMERALD =
            T.let(
              :emerald,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          FUCHSIA =
            T.let(
              :fuchsia,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          GREEN =
            T.let(
              :green,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          INDIGO =
            T.let(
              :indigo,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          LIME =
            T.let(
              :lime,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          LUNAR =
            T.let(
              :lunar,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          ORANGE =
            T.let(
              :orange,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          PINK =
            T.let(
              :pink,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          PURPLE =
            T.let(
              :purple,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          RED =
            T.let(:red, Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol)
          ROSE =
            T.let(
              :rose,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          SKY =
            T.let(:sky, Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol)
          TEAL =
            T.let(
              :teal,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          VIOLET =
            T.let(
              :violet,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )
          YELLOW =
            T.let(
              :yellow,
              Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Moonbase::FunnelCreateParams::Step::Color::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The status of the step in the funnel flow.
        #
        # - `active`: represents an in progress state within the funnel
        # - `success`: completed successfully and exited the funnel
        # - `failure`: exited the funnel without conversion
        module StepType
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Moonbase::FunnelCreateParams::Step::StepType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Moonbase::FunnelCreateParams::Step::StepType::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :success,
              Moonbase::FunnelCreateParams::Step::StepType::TaggedSymbol
            )
          FAILURE =
            T.let(
              :failure,
              Moonbase::FunnelCreateParams::Step::StepType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::FunnelCreateParams::Step::StepType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
