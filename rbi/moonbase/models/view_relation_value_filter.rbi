# typed: strong

module Moonbase
  module Models
    class ViewRelationValueFilter < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ViewRelationValueFilter, Moonbase::Internal::AnyHash)
        end

      # The relation column whose related items are filtered.
      sig { returns(String) }
      attr_accessor :field

      # The filter the related items must match. Field paths are relative to the related
      # collection.
      sig do
        returns(
          T.any(
            Moonbase::ItemsFilterValueExists,
            Moonbase::ItemsFilterAndGroup,
            Moonbase::ItemsFilterOrGroup,
            Moonbase::ItemsFilterNotGroup,
            Moonbase::ItemsFilterValueMatches
          )
        )
      end
      attr_accessor :filter

      # Limits which related items a relation column shows: only related items matching
      # `filter` appear.
      sig do
        params(
          field: String,
          filter:
            T.any(
              Moonbase::ItemsFilterValueExists::OrHash,
              Moonbase::ItemsFilterAndGroup,
              Moonbase::ItemsFilterOrGroup,
              Moonbase::ItemsFilterNotGroup,
              Moonbase::ItemsFilterValueMatches::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # The relation column whose related items are filtered.
        field:,
        # The filter the related items must match. Field paths are relative to the related
        # collection.
        filter:
      )
      end

      sig do
        override.returns(
          {
            field: String,
            filter:
              T.any(
                Moonbase::ItemsFilterValueExists,
                Moonbase::ItemsFilterAndGroup,
                Moonbase::ItemsFilterOrGroup,
                Moonbase::ItemsFilterNotGroup,
                Moonbase::ItemsFilterValueMatches
              )
          }
        )
      end
      def to_hash
      end
    end
  end
end
