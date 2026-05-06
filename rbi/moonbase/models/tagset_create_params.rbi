# typed: strong

module Moonbase
  module Models
    class TagsetCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::TagsetCreateParams, Moonbase::Internal::AnyHash)
        end

      # The name of the tagset.
      sig { returns(String) }
      attr_accessor :name

      # An optional description of the tagset's purpose.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Optional list of tags to create with this tagset. Tags are ordered by their
      # position in the list.
      sig { returns(T.nilable(T::Array[Moonbase::TagsetCreateParams::Tag])) }
      attr_reader :tags

      sig do
        params(tags: T::Array[Moonbase::TagsetCreateParams::Tag::OrHash]).void
      end
      attr_writer :tags

      sig do
        params(
          name: String,
          description: String,
          tags: T::Array[Moonbase::TagsetCreateParams::Tag::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the tagset.
        name:,
        # An optional description of the tagset's purpose.
        description: nil,
        # Optional list of tags to create with this tagset. Tags are ordered by their
        # position in the list.
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            description: String,
            tags: T::Array[Moonbase::TagsetCreateParams::Tag],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Tag < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::TagsetCreateParams::Tag,
              Moonbase::Internal::AnyHash
            )
          end

        # The color for the tag.
        sig { returns(Moonbase::TagsetCreateParams::Tag::Color::OrSymbol) }
        attr_accessor :color

        # The name of the tag.
        sig { returns(String) }
        attr_accessor :name

        # Existing tag identifier. Include to update an existing tag, omit to create a new
        # tag.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Parameters for creating or updating a tag within a tagset.
        sig do
          params(
            color: Moonbase::TagsetCreateParams::Tag::Color::OrSymbol,
            name: String,
            id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The color for the tag.
          color:,
          # The name of the tag.
          name:,
          # Existing tag identifier. Include to update an existing tag, omit to create a new
          # tag.
          id: nil
        )
        end

        sig do
          override.returns(
            {
              color: Moonbase::TagsetCreateParams::Tag::Color::OrSymbol,
              name: String,
              id: String
            }
          )
        end
        def to_hash
        end

        # The color for the tag.
        module Color
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Moonbase::TagsetCreateParams::Tag::Color)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMBER =
            T.let(
              :amber,
              Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol
            )
          BLUE =
            T.let(:blue, Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol)
          CYAN =
            T.let(:cyan, Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol)
          EMERALD =
            T.let(
              :emerald,
              Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol
            )
          FUCHSIA =
            T.let(
              :fuchsia,
              Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol
            )
          GREEN =
            T.let(
              :green,
              Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol
            )
          INDIGO =
            T.let(
              :indigo,
              Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol
            )
          LIME =
            T.let(:lime, Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol)
          LUNAR =
            T.let(
              :lunar,
              Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol
            )
          ORANGE =
            T.let(
              :orange,
              Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol
            )
          PINK =
            T.let(:pink, Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol)
          PURPLE =
            T.let(
              :purple,
              Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol
            )
          RED =
            T.let(:red, Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol)
          ROSE =
            T.let(:rose, Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol)
          SKY =
            T.let(:sky, Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol)
          TEAL =
            T.let(:teal, Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol)
          VIOLET =
            T.let(
              :violet,
              Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol
            )
          YELLOW =
            T.let(
              :yellow,
              Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Moonbase::TagsetCreateParams::Tag::Color::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
