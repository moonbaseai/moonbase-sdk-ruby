# typed: strong

module Moonbase
  module Models
    class SearchResponse < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::Models::SearchResponse, Moonbase::Internal::AnyHash)
        end

      sig { returns(T::Array[Moonbase::Models::SearchResponse::Data]) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # A list of search results.
      sig do
        params(
          data: T::Array[Moonbase::Models::SearchResponse::Data::OrHash],
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(data:, type: :list)
      end

      sig do
        override.returns(
          {
            data: T::Array[Moonbase::Models::SearchResponse::Data],
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Data < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Models::SearchResponse::Data,
              Moonbase::Internal::AnyHash
            )
          end

        # An Item represents a single record or row within a Collection. It holds a set of
        # `values` corresponding to the Collection's `fields`.
        sig { returns(Moonbase::Item) }
        attr_reader :data

        sig { params(data: Moonbase::Item::OrHash).void }
        attr_writer :data

        # A search result entry
        sig { params(data: Moonbase::Item::OrHash).returns(T.attached_class) }
        def self.new(
          # An Item represents a single record or row within a Collection. It holds a set of
          # `values` corresponding to the Collection's `fields`.
          data:
        )
        end

        sig { override.returns({ data: Moonbase::Item }) }
        def to_hash
        end
      end
    end
  end
end
