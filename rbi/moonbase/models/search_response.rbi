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
        sig { returns(Moonbase::Models::SearchResponse::Data::Data::Variants) }
        attr_accessor :data

        sig { returns(Symbol) }
        attr_accessor :type

        # A search result entry.
        sig do
          params(
            data: T.any(Moonbase::Item::OrHash, Moonbase::MoonbaseFile::OrHash),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # An Item represents a single record or row within a Collection. It holds a set of
          # `values` corresponding to the Collection's `fields`.
          data:,
          type: :search_result
        )
        end

        sig do
          override.returns(
            {
              data: Moonbase::Models::SearchResponse::Data::Data::Variants,
              type: Symbol
            }
          )
        end
        def to_hash
        end

        # An Item represents a single record or row within a Collection. It holds a set of
        # `values` corresponding to the Collection's `fields`.
        module Data
          extend Moonbase::Internal::Type::Union

          Variants =
            T.type_alias { T.any(Moonbase::Item, Moonbase::MoonbaseFile) }

          sig do
            override.returns(
              T::Array[Moonbase::Models::SearchResponse::Data::Data::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
