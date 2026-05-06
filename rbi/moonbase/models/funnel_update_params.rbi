# typed: strong

module Moonbase
  module Models
    class FunnelUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::FunnelUpdateParams, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The name of the funnel.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # An ordered list of steps. Providing this replaces all existing steps. Omitting
      # preserves existing steps.
      sig { returns(T.nilable(T::Array[Moonbase::FunnelUpdateParams::Step])) }
      attr_reader :steps

      sig do
        params(steps: T::Array[Moonbase::FunnelUpdateParams::Step::OrHash]).void
      end
      attr_writer :steps

      sig do
        params(
          id: String,
          name: String,
          steps: T::Array[Moonbase::FunnelUpdateParams::Step::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The name of the funnel.
        name: nil,
        # An ordered list of steps. Providing this replaces all existing steps. Omitting
        # preserves existing steps.
        steps: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            name: String,
            steps: T::Array[Moonbase::FunnelUpdateParams::Step],
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
              Moonbase::FunnelUpdateParams::Step,
              Moonbase::Internal::AnyHash
            )
          end

        # The display color of the step.
        sig { returns(Moonbase::FunnelUpdateParams::Step::Color::OrSymbol) }
        attr_accessor :color

        # The name of the step.
        sig { returns(String) }
        attr_accessor :name

        # The status of the step in the funnel flow.
        #
        # - `active`: represents an in progress state within the funnel
        # - `success`: completed successfully and exited the funnel
        # - `failure`: exited the funnel without conversion
        sig { returns(Moonbase::FunnelUpdateParams::Step::StepType::OrSymbol) }
        attr_accessor :step_type

        # The ID of an existing step to update. Omit to create a new step.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Parameters for updating a funnel step. Include `id` to update an existing step,
        # or omit `id` to create a new one. Steps not included are removed.
        sig do
          params(
            color: Moonbase::FunnelUpdateParams::Step::Color::OrSymbol,
            name: String,
            step_type: Moonbase::FunnelUpdateParams::Step::StepType::OrSymbol,
            id: String
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
          step_type:,
          # The ID of an existing step to update. Omit to create a new step.
          id: nil
        )
        end

        sig do
          override.returns(
            {
              color: Moonbase::FunnelUpdateParams::Step::Color::OrSymbol,
              name: String,
              step_type: Moonbase::FunnelUpdateParams::Step::StepType::OrSymbol,
              id: String
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
              T.all(Symbol, Moonbase::FunnelUpdateParams::Step::Color)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMBER =
            T.let(
              :amber,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          BLUE =
            T.let(
              :blue,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          CYAN =
            T.let(
              :cyan,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          EMERALD =
            T.let(
              :emerald,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          FUCHSIA =
            T.let(
              :fuchsia,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          GREEN =
            T.let(
              :green,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          INDIGO =
            T.let(
              :indigo,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          LIME =
            T.let(
              :lime,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          LUNAR =
            T.let(
              :lunar,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          ORANGE =
            T.let(
              :orange,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          PINK =
            T.let(
              :pink,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          PURPLE =
            T.let(
              :purple,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          RED =
            T.let(:red, Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol)
          ROSE =
            T.let(
              :rose,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          SKY =
            T.let(:sky, Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol)
          TEAL =
            T.let(
              :teal,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          VIOLET =
            T.let(
              :violet,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )
          YELLOW =
            T.let(
              :yellow,
              Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Moonbase::FunnelUpdateParams::Step::Color::TaggedSymbol]
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
              T.all(Symbol, Moonbase::FunnelUpdateParams::Step::StepType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Moonbase::FunnelUpdateParams::Step::StepType::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :success,
              Moonbase::FunnelUpdateParams::Step::StepType::TaggedSymbol
            )
          FAILURE =
            T.let(
              :failure,
              Moonbase::FunnelUpdateParams::Step::StepType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::FunnelUpdateParams::Step::StepType::TaggedSymbol
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
