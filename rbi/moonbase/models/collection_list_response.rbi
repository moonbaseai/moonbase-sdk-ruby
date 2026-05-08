# typed: strong

module Moonbase
  module Models
    class CollectionListResponse < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::Models::CollectionListResponse,
            Moonbase::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig do
        returns(Moonbase::Models::CollectionListResponse::Kind::TaggedSymbol)
      end
      attr_accessor :kind

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :ref

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Information about the most essential attributes of a Collection (does not
      # include the collection's field definitions).
      sig do
        params(
          id: String,
          created_at: Time,
          kind: Moonbase::Models::CollectionListResponse::Kind::OrSymbol,
          name: String,
          ref: String,
          updated_at: Time,
          description: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        kind:,
        name:,
        ref:,
        updated_at:,
        description: nil,
        type: :collection
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            kind: Moonbase::Models::CollectionListResponse::Kind::TaggedSymbol,
            name: String,
            ref: String,
            type: Symbol,
            updated_at: Time,
            description: String
          }
        )
      end
      def to_hash
      end

      module Kind
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Moonbase::Models::CollectionListResponse::Kind)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SYSTEM =
          T.let(
            :system,
            Moonbase::Models::CollectionListResponse::Kind::TaggedSymbol
          )
        FORM =
          T.let(
            :form,
            Moonbase::Models::CollectionListResponse::Kind::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Moonbase::Models::CollectionListResponse::Kind::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::Models::CollectionListResponse::Kind::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
