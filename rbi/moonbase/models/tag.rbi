# typed: strong

module Moonbase
  module Models
    class Tag < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Tag, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The color for the tag.
      sig { returns(Moonbase::Tag::Color::TaggedSymbol) }
      attr_accessor :color

      # The name of the tag.
      sig { returns(String) }
      attr_accessor :name

      # String representing the object’s type. Always `tag` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A Tag is a label that can be applied to supported resources (such as
      # conversations, calls, and meetings) for organization and filtering.
      sig do
        params(
          id: String,
          color: Moonbase::Tag::Color::OrSymbol,
          name: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The color for the tag.
        color:,
        # The name of the tag.
        name:,
        # String representing the object’s type. Always `tag` for this object.
        type: :tag
      )
      end

      sig do
        override.returns(
          {
            id: String,
            color: Moonbase::Tag::Color::TaggedSymbol,
            name: String,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      # The color for the tag.
      module Color
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::Tag::Color) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMBER = T.let(:amber, Moonbase::Tag::Color::TaggedSymbol)
        BLUE = T.let(:blue, Moonbase::Tag::Color::TaggedSymbol)
        CYAN = T.let(:cyan, Moonbase::Tag::Color::TaggedSymbol)
        EMERALD = T.let(:emerald, Moonbase::Tag::Color::TaggedSymbol)
        FUCHSIA = T.let(:fuchsia, Moonbase::Tag::Color::TaggedSymbol)
        GREEN = T.let(:green, Moonbase::Tag::Color::TaggedSymbol)
        INDIGO = T.let(:indigo, Moonbase::Tag::Color::TaggedSymbol)
        LIME = T.let(:lime, Moonbase::Tag::Color::TaggedSymbol)
        LUNAR = T.let(:lunar, Moonbase::Tag::Color::TaggedSymbol)
        ORANGE = T.let(:orange, Moonbase::Tag::Color::TaggedSymbol)
        PINK = T.let(:pink, Moonbase::Tag::Color::TaggedSymbol)
        PURPLE = T.let(:purple, Moonbase::Tag::Color::TaggedSymbol)
        RED = T.let(:red, Moonbase::Tag::Color::TaggedSymbol)
        ROSE = T.let(:rose, Moonbase::Tag::Color::TaggedSymbol)
        SKY = T.let(:sky, Moonbase::Tag::Color::TaggedSymbol)
        TEAL = T.let(:teal, Moonbase::Tag::Color::TaggedSymbol)
        VIOLET = T.let(:violet, Moonbase::Tag::Color::TaggedSymbol)
        YELLOW = T.let(:yellow, Moonbase::Tag::Color::TaggedSymbol)

        sig { override.returns(T::Array[Moonbase::Tag::Color::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
