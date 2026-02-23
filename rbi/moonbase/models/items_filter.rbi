# typed: strong

module Moonbase
  module Models
    # Return only items that match the filter conditions. Complex filters can be
    # created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
    module ItemsFilter
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::ItemsFilterValueMatches,
            Moonbase::ItemsFilterValueExists,
            Moonbase::ItemsFilterAndGroup,
            Moonbase::ItemsFilterOrGroup,
            Moonbase::ItemsFilterNotGroup
          )
        end

      sig { override.returns(T::Array[Moonbase::ItemsFilter::Variants]) }
      def self.variants
      end
    end
  end
end
