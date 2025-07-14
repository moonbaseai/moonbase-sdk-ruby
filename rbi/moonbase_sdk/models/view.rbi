# typed: strong

module MoonbaseSDK
  module Models
    class View < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::View, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(MoonbaseSDK::View::Links) }
      attr_reader :links

      sig { params(links: MoonbaseSDK::View::Links::OrHash).void }
      attr_writer :links

      # The name of the view.
      sig { returns(String) }
      attr_accessor :name

      # String representing the object’s type. Always `view` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # The `Collection` this view belongs to.
      sig { returns(T.nilable(MoonbaseSDK::Collection)) }
      attr_reader :collection

      sig { params(collection: MoonbaseSDK::Collection).void }
      attr_writer :collection

      # The type of view, such as `table` or `board`.
      sig { returns(T.nilable(MoonbaseSDK::View::ViewType::TaggedSymbol)) }
      attr_reader :view_type

      sig { params(view_type: MoonbaseSDK::View::ViewType::OrSymbol).void }
      attr_writer :view_type

      # A View represents a saved configuration for displaying items in a collection,
      # including filters and sorting rules.
      sig do
        params(
          id: String,
          links: MoonbaseSDK::View::Links::OrHash,
          name: String,
          collection: MoonbaseSDK::Collection,
          view_type: MoonbaseSDK::View::ViewType::OrSymbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        links:,
        # The name of the view.
        name:,
        # The `Collection` this view belongs to.
        collection: nil,
        # The type of view, such as `table` or `board`.
        view_type: nil,
        # String representing the object’s type. Always `view` for this object.
        type: :view
      )
      end

      sig do
        override.returns(
          {
            id: String,
            links: MoonbaseSDK::View::Links,
            name: String,
            type: Symbol,
            collection: MoonbaseSDK::Collection,
            view_type: MoonbaseSDK::View::ViewType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::View::Links, MoonbaseSDK::Internal::AnyHash)
          end

        # A link to the `Collection` this view belongs to.
        sig { returns(String) }
        attr_accessor :collection

        # A link to the list of `Item` objects that are visible in this view.
        sig { returns(String) }
        attr_accessor :items

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        sig do
          params(collection: String, items: String, self_: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # A link to the `Collection` this view belongs to.
          collection:,
          # A link to the list of `Item` objects that are visible in this view.
          items:,
          # The canonical URL for this object.
          self_:
        )
        end

        sig do
          override.returns({ collection: String, items: String, self_: String })
        end
        def to_hash
        end
      end

      # The type of view, such as `table` or `board`.
      module ViewType
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MoonbaseSDK::View::ViewType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TABLE = T.let(:table, MoonbaseSDK::View::ViewType::TaggedSymbol)
        BOARD = T.let(:board, MoonbaseSDK::View::ViewType::TaggedSymbol)

        sig do
          override.returns(T::Array[MoonbaseSDK::View::ViewType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
