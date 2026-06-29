# typed: strong

module Moonbase
  module Models
    class ViewListResponse < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::Models::ViewListResponse, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # A lightweight reference to a `Collection`, containing the minimal information
      # needed to identify it.
      sig { returns(Moonbase::CollectionPointer) }
      attr_reader :collection

      sig { params(collection: Moonbase::CollectionPointer::OrHash).void }
      attr_writer :collection

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        returns(Moonbase::Models::ViewListResponse::ViewType::TaggedSymbol)
      end
      attr_accessor :view_type

      sig do
        params(
          id: String,
          collection: Moonbase::CollectionPointer::OrHash,
          created_at: Time,
          name: String,
          updated_at: Time,
          view_type: Moonbase::Models::ViewListResponse::ViewType::OrSymbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # A lightweight reference to a `Collection`, containing the minimal information
        # needed to identify it.
        collection:,
        created_at:,
        name:,
        updated_at:,
        view_type:,
        type: :view
      )
      end

      sig do
        override.returns(
          {
            id: String,
            collection: Moonbase::CollectionPointer,
            created_at: Time,
            name: String,
            type: Symbol,
            updated_at: Time,
            view_type:
              Moonbase::Models::ViewListResponse::ViewType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module ViewType
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Moonbase::Models::ViewListResponse::ViewType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TABLE =
          T.let(
            :table,
            Moonbase::Models::ViewListResponse::ViewType::TaggedSymbol
          )
        BOARD =
          T.let(
            :board,
            Moonbase::Models::ViewListResponse::ViewType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Moonbase::Models::ViewListResponse::ViewType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
