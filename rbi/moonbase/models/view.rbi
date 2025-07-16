# typed: strong

module Moonbase
  module Models
    class View < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::View, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Moonbase::View::Links) }
      attr_reader :links

      sig { params(links: Moonbase::View::Links::OrHash).void }
      attr_writer :links

      # The name of the view.
      sig { returns(String) }
      attr_accessor :name

      # String representing the object’s type. Always `view` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # The `Collection` this view belongs to.
      sig { returns(T.nilable(Moonbase::Collection)) }
      attr_reader :collection

      sig { params(collection: Moonbase::Collection).void }
      attr_writer :collection

      # The type of view, such as `table` or `board`.
      sig { returns(T.nilable(Moonbase::View::ViewType::TaggedSymbol)) }
      attr_reader :view_type

      sig { params(view_type: Moonbase::View::ViewType::OrSymbol).void }
      attr_writer :view_type

      # A View represents a saved configuration for displaying items in a collection,
      # including filters and sorting rules.
      sig do
        params(
          id: String,
          links: Moonbase::View::Links::OrHash,
          name: String,
          collection: Moonbase::Collection,
          view_type: Moonbase::View::ViewType::OrSymbol,
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
            links: Moonbase::View::Links,
            name: String,
            type: Symbol,
            collection: Moonbase::Collection,
            view_type: Moonbase::View::ViewType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::View::Links, Moonbase::Internal::AnyHash)
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
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::View::ViewType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TABLE = T.let(:table, Moonbase::View::ViewType::TaggedSymbol)
        BOARD = T.let(:board, Moonbase::View::ViewType::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::View::ViewType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
