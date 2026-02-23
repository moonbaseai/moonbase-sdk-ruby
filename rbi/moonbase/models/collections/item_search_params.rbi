# typed: strong

module Moonbase
  module Models
    module Collections
      class ItemSearchParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Collections::ItemSearchParams,
              Moonbase::Internal::AnyHash
            )
          end

        # When specified, returns results starting immediately after the item identified
        # by this cursor. Use the cursor value from the previous response's metadata to
        # fetch the next page of results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # When specified, returns results starting immediately before the item identified
        # by this cursor. Use the cursor value from the response's metadata to fetch the
        # previous page of results.
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Return only items that match the filter conditions. Complex filters can be
        # created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
        sig do
          returns(
            T.nilable(
              T.any(
                Moonbase::ItemsFilterValueMatches,
                Moonbase::ItemsFilterValueExists,
                Moonbase::ItemsFilterAndGroup,
                Moonbase::ItemsFilterOrGroup,
                Moonbase::ItemsFilterNotGroup
              )
            )
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              T.any(
                Moonbase::ItemsFilterValueMatches::OrHash,
                Moonbase::ItemsFilterValueExists::OrHash,
                Moonbase::ItemsFilterAndGroup,
                Moonbase::ItemsFilterOrGroup,
                Moonbase::ItemsFilterNotGroup
              )
          ).void
        end
        attr_writer :filter

        # Include only specific fields in the returned items. Specify fields by id or key.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :include

        sig { params(include: T::Array[String]).void }
        attr_writer :include

        # Sort items by the specified field ids or keys. Prefix a field with a
        # hyphen/minus (`-`) to sort in descending order by that field.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        sig do
          params(
            after: String,
            before: String,
            limit: Integer,
            filter:
              T.any(
                Moonbase::ItemsFilterValueMatches::OrHash,
                Moonbase::ItemsFilterValueExists::OrHash,
                Moonbase::ItemsFilterAndGroup,
                Moonbase::ItemsFilterOrGroup,
                Moonbase::ItemsFilterNotGroup
              ),
            include: T::Array[String],
            sort: T::Array[String],
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # When specified, returns results starting immediately after the item identified
          # by this cursor. Use the cursor value from the previous response's metadata to
          # fetch the next page of results.
          after: nil,
          # When specified, returns results starting immediately before the item identified
          # by this cursor. Use the cursor value from the response's metadata to fetch the
          # previous page of results.
          before: nil,
          # Maximum number of items to return per page. Must be between 1 and 100. Defaults
          # to 20 if not specified.
          limit: nil,
          # Return only items that match the filter conditions. Complex filters can be
          # created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
          filter: nil,
          # Include only specific fields in the returned items. Specify fields by id or key.
          include: nil,
          # Sort items by the specified field ids or keys. Prefix a field with a
          # hyphen/minus (`-`) to sort in descending order by that field.
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              before: String,
              limit: Integer,
              filter:
                T.any(
                  Moonbase::ItemsFilterValueMatches,
                  Moonbase::ItemsFilterValueExists,
                  Moonbase::ItemsFilterAndGroup,
                  Moonbase::ItemsFilterOrGroup,
                  Moonbase::ItemsFilterNotGroup
                ),
              include: T::Array[String],
              sort: T::Array[String],
              request_options: Moonbase::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
