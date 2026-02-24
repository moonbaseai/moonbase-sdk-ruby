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
