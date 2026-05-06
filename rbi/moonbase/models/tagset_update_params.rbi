# typed: strong

module Moonbase
  module Models
    class TagsetUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::TagsetUpdateParams, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # An updated description of the tagset.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The new name of the tagset.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Optional full list of tags for this tagset. If provided, tags are ordered by
      # array position.
      sig { returns(T.nilable(T::Array[Moonbase::TagsetUpdateParams::Tag])) }
      attr_reader :tags

      sig do
        params(tags: T::Array[Moonbase::TagsetUpdateParams::Tag::OrHash]).void
      end
      attr_writer :tags

      sig do
        params(
          id: String,
          description: String,
          name: String,
          tags: T::Array[Moonbase::TagsetUpdateParams::Tag::OrHash],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # An updated description of the tagset.
        description: nil,
        # The new name of the tagset.
        name: nil,
        # Optional full list of tags for this tagset. If provided, tags are ordered by
        # array position.
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            description: String,
            name: String,
            tags: T::Array[Moonbase::TagsetUpdateParams::Tag],
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
              Moonbase::TagsetUpdateParams::Tag,
              Moonbase::Internal::AnyHash
            )
          end

        # The color for the tag.
        sig { returns(Moonbase::TagsetUpdateParams::Tag::Color::OrSymbol) }
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
            color: Moonbase::TagsetUpdateParams::Tag::Color::OrSymbol,
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
              color: Moonbase::TagsetUpdateParams::Tag::Color::OrSymbol,
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
              T.all(Symbol, Moonbase::TagsetUpdateParams::Tag::Color)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMBER =
            T.let(
              :amber,
              Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol
            )
          BLUE =
            T.let(:blue, Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol)
          CYAN =
            T.let(:cyan, Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol)
          EMERALD =
            T.let(
              :emerald,
              Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol
            )
          FUCHSIA =
            T.let(
              :fuchsia,
              Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol
            )
          GREEN =
            T.let(
              :green,
              Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol
            )
          INDIGO =
            T.let(
              :indigo,
              Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol
            )
          LIME =
            T.let(:lime, Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol)
          LUNAR =
            T.let(
              :lunar,
              Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol
            )
          ORANGE =
            T.let(
              :orange,
              Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol
            )
          PINK =
            T.let(:pink, Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol)
          PURPLE =
            T.let(
              :purple,
              Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol
            )
          RED =
            T.let(:red, Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol)
          ROSE =
            T.let(:rose, Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol)
          SKY =
            T.let(:sky, Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol)
          TEAL =
            T.let(:teal, Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol)
          VIOLET =
            T.let(
              :violet,
              Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol
            )
          YELLOW =
            T.let(
              :yellow,
              Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Moonbase::TagsetUpdateParams::Tag::Color::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
