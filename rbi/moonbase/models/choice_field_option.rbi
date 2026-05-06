# typed: strong

module Moonbase
  module Models
    class ChoiceFieldOption < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ChoiceFieldOption, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the option.
      sig { returns(String) }
      attr_accessor :id

      # The color of the option.
      sig { returns(Moonbase::ChoiceFieldOption::Color::TaggedSymbol) }
      attr_accessor :color

      # The human-readable text displayed for this option.
      sig { returns(String) }
      attr_accessor :name

      # String representing the object’s type. Always `choice_field_option` for this
      # object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Represents a single selectable option within a choice field.
      sig do
        params(
          id: String,
          color: Moonbase::ChoiceFieldOption::Color::OrSymbol,
          name: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the option.
        id:,
        # The color of the option.
        color:,
        # The human-readable text displayed for this option.
        name:,
        # String representing the object’s type. Always `choice_field_option` for this
        # object.
        type: :choice_field_option
      )
      end

      sig do
        override.returns(
          {
            id: String,
            color: Moonbase::ChoiceFieldOption::Color::TaggedSymbol,
            name: String,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      # The color of the option.
      module Color
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::ChoiceFieldOption::Color) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMBER = T.let(:amber, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        BLUE = T.let(:blue, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        CYAN = T.let(:cyan, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        EMERALD =
          T.let(:emerald, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        FUCHSIA =
          T.let(:fuchsia, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        GREEN = T.let(:green, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        INDIGO =
          T.let(:indigo, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        LIME = T.let(:lime, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        LUNAR = T.let(:lunar, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        ORANGE =
          T.let(:orange, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        PINK = T.let(:pink, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        PURPLE =
          T.let(:purple, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        RED = T.let(:red, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        ROSE = T.let(:rose, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        SKY = T.let(:sky, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        TEAL = T.let(:teal, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        VIOLET =
          T.let(:violet, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)
        YELLOW =
          T.let(:yellow, Moonbase::ChoiceFieldOption::Color::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::ChoiceFieldOption::Color::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
