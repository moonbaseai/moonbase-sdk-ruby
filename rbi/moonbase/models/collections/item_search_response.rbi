# typed: strong

module Moonbase
  module Models
    module Collections
      class ItemSearchResponse < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Models::Collections::ItemSearchResponse,
              Moonbase::Internal::AnyHash
            )
          end

        # An Item represents a single record or row within a Collection. It holds a set of
        # `values` corresponding to the Collection's `fields`.
        sig { returns(Moonbase::Item) }
        attr_reader :data

        sig { params(data: Moonbase::Item::OrHash).void }
        attr_writer :data

        sig { returns(Symbol) }
        attr_accessor :type

        # A collection search result entry containing an item.
        sig do
          params(data: Moonbase::Item::OrHash, type: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # An Item represents a single record or row within a Collection. It holds a set of
          # `values` corresponding to the Collection's `fields`.
          data:,
          type: :search_result
        )
        end

        sig { override.returns({ data: Moonbase::Item, type: Symbol }) }
        def to_hash
        end
      end
    end
  end
end
