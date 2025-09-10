# typed: strong

module Moonbase
  module Models
    class View < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::View, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The name of the view.
      sig { returns(String) }
      attr_accessor :name

      # String representing the object’s type. Always `view` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The type of view, such as `table` or `board`.
      sig { returns(Moonbase::View::ViewType::TaggedSymbol) }
      attr_accessor :view_type

      # The `Collection` this view belongs to.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(Moonbase::Collection)) }
      attr_reader :collection

      sig { params(collection: Moonbase::Collection).void }
      attr_writer :collection

      # A View represents a saved configuration for displaying items in a collection,
      # including filters and sorting rules.
      sig do
        params(
          id: String,
          created_at: Time,
          name: String,
          updated_at: Time,
          view_type: Moonbase::View::ViewType::OrSymbol,
          collection: Moonbase::Collection,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The name of the view.
        name:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # The type of view, such as `table` or `board`.
        view_type:,
        # The `Collection` this view belongs to.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        collection: nil,
        # String representing the object’s type. Always `view` for this object.
        type: :view
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            name: String,
            type: Symbol,
            updated_at: Time,
            view_type: Moonbase::View::ViewType::TaggedSymbol,
            collection: Moonbase::Collection
          }
        )
      end
      def to_hash
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
