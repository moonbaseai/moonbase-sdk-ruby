# typed: strong

module Moonbase
  module Resources
    class Collections
      class Items
        # Creates a new item in a collection.
        sig do
          params(
            collection_id: String,
            values:
              T::Hash[
                Symbol,
                T.nilable(
                  T.any(
                    Moonbase::SingleLineTextValue::OrHash,
                    Moonbase::MultiLineTextValue::OrHash,
                    Moonbase::IntegerValue::OrHash,
                    Moonbase::FloatValue::OrHash,
                    Moonbase::MonetaryValue::OrHash,
                    Moonbase::PercentageValue::OrHash,
                    Moonbase::BooleanValue::OrHash,
                    Moonbase::EmailValue::OrHash,
                    Moonbase::URLValue::OrHash,
                    Moonbase::DomainValue::OrHash,
                    Moonbase::FieldValueParam::SocialXValueParam::OrHash,
                    Moonbase::FieldValueParam::SocialLinkedInValueParam::OrHash,
                    Moonbase::TelephoneNumber::OrHash,
                    Moonbase::GeoValue::OrHash,
                    Moonbase::DateValue::OrHash,
                    Moonbase::DatetimeValue::OrHash,
                    Moonbase::ChoiceValueParam::OrHash,
                    Moonbase::FunnelStepValueParam::OrHash,
                    Moonbase::RelationValueParam::OrHash,
                    T::Array[
                      T.any(
                        Moonbase::SingleLineTextValue::OrHash,
                        Moonbase::MultiLineTextValue::OrHash,
                        Moonbase::IntegerValue::OrHash,
                        Moonbase::FloatValue::OrHash,
                        Moonbase::MonetaryValue::OrHash,
                        Moonbase::PercentageValue::OrHash,
                        Moonbase::BooleanValue::OrHash,
                        Moonbase::EmailValue::OrHash,
                        Moonbase::URLValue::OrHash,
                        Moonbase::DomainValue::OrHash,
                        Moonbase::ValueParam::ValueUriSocialX::OrHash,
                        Moonbase::ValueParam::ValueUriSocialLinkedIn::OrHash,
                        Moonbase::TelephoneNumber::OrHash,
                        Moonbase::GeoValue::OrHash,
                        Moonbase::DateValue::OrHash,
                        Moonbase::DatetimeValue::OrHash,
                        Moonbase::ChoiceValueParam::OrHash,
                        Moonbase::FunnelStepValueParam::OrHash,
                        Moonbase::RelationValueParam::OrHash
                      )
                    ]
                  )
                )
              ],
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(Moonbase::Item)
        end
        def create(
          collection_id,
          # A hash where keys are the `ref` of a `Field` and values are the data to be set.
          values:,
          request_options: {}
        )
        end

        # Retrieves the details of an existing item.
        sig do
          params(
            id: String,
            collection_id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(Moonbase::Item)
        end
        def retrieve(
          # The ID of the Item to retrieve.
          id,
          collection_id:,
          request_options: {}
        )
        end

        # Updates an item.
        sig do
          params(
            id: String,
            collection_id: String,
            values:
              T::Hash[
                Symbol,
                T.nilable(
                  T.any(
                    Moonbase::SingleLineTextValue::OrHash,
                    Moonbase::MultiLineTextValue::OrHash,
                    Moonbase::IntegerValue::OrHash,
                    Moonbase::FloatValue::OrHash,
                    Moonbase::MonetaryValue::OrHash,
                    Moonbase::PercentageValue::OrHash,
                    Moonbase::BooleanValue::OrHash,
                    Moonbase::EmailValue::OrHash,
                    Moonbase::URLValue::OrHash,
                    Moonbase::DomainValue::OrHash,
                    Moonbase::FieldValueParam::SocialXValueParam::OrHash,
                    Moonbase::FieldValueParam::SocialLinkedInValueParam::OrHash,
                    Moonbase::TelephoneNumber::OrHash,
                    Moonbase::GeoValue::OrHash,
                    Moonbase::DateValue::OrHash,
                    Moonbase::DatetimeValue::OrHash,
                    Moonbase::ChoiceValueParam::OrHash,
                    Moonbase::FunnelStepValueParam::OrHash,
                    Moonbase::RelationValueParam::OrHash,
                    T::Array[
                      T.any(
                        Moonbase::SingleLineTextValue::OrHash,
                        Moonbase::MultiLineTextValue::OrHash,
                        Moonbase::IntegerValue::OrHash,
                        Moonbase::FloatValue::OrHash,
                        Moonbase::MonetaryValue::OrHash,
                        Moonbase::PercentageValue::OrHash,
                        Moonbase::BooleanValue::OrHash,
                        Moonbase::EmailValue::OrHash,
                        Moonbase::URLValue::OrHash,
                        Moonbase::DomainValue::OrHash,
                        Moonbase::ValueParam::ValueUriSocialX::OrHash,
                        Moonbase::ValueParam::ValueUriSocialLinkedIn::OrHash,
                        Moonbase::TelephoneNumber::OrHash,
                        Moonbase::GeoValue::OrHash,
                        Moonbase::DateValue::OrHash,
                        Moonbase::DatetimeValue::OrHash,
                        Moonbase::ChoiceValueParam::OrHash,
                        Moonbase::FunnelStepValueParam::OrHash,
                        Moonbase::RelationValueParam::OrHash
                      )
                    ]
                  )
                )
              ],
            update_many_strategy:
              Moonbase::Collections::ItemUpdateParams::UpdateManyStrategy::OrSymbol,
            update_one_strategy:
              Moonbase::Collections::ItemUpdateParams::UpdateOneStrategy::OrSymbol,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(Moonbase::Item)
        end
        def update(
          # Path param: The ID of the Item to update.
          id,
          # Path param
          collection_id:,
          # Body param: A hash where keys are the `ref` of a `Field` and values are the new
          # data to be set.
          values:,
          # Header param: Specifies how to update fields that allow multiple values during a
          # PATCH or update request. Use `replace` (default) to overwrite all existing
          # values with the new values. Use `preserve` to leave the existing values
          # unchanged when already present. Use `merge` to merge the new values with
          # existing values.
          update_many_strategy: nil,
          # Header param: Specifies how to update fields with a single (one) value during a
          # PATCH or update request. Use `replace` (default) to overwrite the existing value
          # with the new value. Use `preserve` to leave the existing value unchanged if one
          # is already present.
          update_one_strategy: nil,
          request_options: {}
        )
        end

        # Returns a list of items that are part of the collection.
        sig do
          params(
            collection_id: String,
            after: String,
            before: String,
            include: T::Array[String],
            limit: Integer,
            sort: T::Array[String],
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(Moonbase::Internal::CursorPage[Moonbase::Item])
        end
        def list(
          # The ID of the collection.
          collection_id,
          # When specified, returns results starting immediately after the item identified
          # by this cursor. Use the cursor value from the previous response's metadata to
          # fetch the next page of results.
          after: nil,
          # When specified, returns results starting immediately before the item identified
          # by this cursor. Use the cursor value from the response's metadata to fetch the
          # previous page of results.
          before: nil,
          # Include only specific fields in the returned items. Specify fields by id or key.
          include: nil,
          # Maximum number of items to return per page. Must be between 1 and 100. Defaults
          # to 20 if not specified.
          limit: nil,
          # Sort items by the specified field ids or keys. Prefix a field with a
          # hyphen/minus (`-`) to sort in descending order by that field.
          sort: nil,
          request_options: {}
        )
        end

        # Permanently deletes an item.
        sig do
          params(
            id: String,
            collection_id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The ID of the Item to delete.
          id,
          collection_id:,
          request_options: {}
        )
        end

        # Returns a list of items in the collection that match the given filters.
        sig do
          params(
            collection_id: String,
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
          ).returns(
            Moonbase::Internal::CursorPage[
              Moonbase::Models::Collections::ItemSearchResponse
            ]
          )
        end
        def search(
          # Path param
          collection_id,
          # Query param: When specified, returns results starting immediately after the item
          # identified by this cursor. Use the cursor value from the previous response's
          # metadata to fetch the next page of results.
          after: nil,
          # Query param: When specified, returns results starting immediately before the
          # item identified by this cursor. Use the cursor value from the response's
          # metadata to fetch the previous page of results.
          before: nil,
          # Query param: Maximum number of items to return per page. Must be between 1
          # and 100. Defaults to 20 if not specified.
          limit: nil,
          # Body param: Return only items that match the filter conditions. Complex filters
          # can be created by nesting filters inside of `AND`, `OR`, and `NOT` filters.
          filter: nil,
          # Body param: Include only specific fields in the returned items. Specify fields
          # by id or key.
          include: nil,
          # Body param: Sort items by the specified field ids or keys. Prefix a field with a
          # hyphen/minus (`-`) to sort in descending order by that field.
          sort: nil,
          request_options: {}
        )
        end

        # Find and update an existing item, or create a new one.
        sig do
          params(
            collection_id: String,
            identifiers:
              T::Hash[
                Symbol,
                T.nilable(
                  T.any(
                    Moonbase::SingleLineTextValue::OrHash,
                    Moonbase::MultiLineTextValue::OrHash,
                    Moonbase::IntegerValue::OrHash,
                    Moonbase::FloatValue::OrHash,
                    Moonbase::MonetaryValue::OrHash,
                    Moonbase::PercentageValue::OrHash,
                    Moonbase::BooleanValue::OrHash,
                    Moonbase::EmailValue::OrHash,
                    Moonbase::URLValue::OrHash,
                    Moonbase::DomainValue::OrHash,
                    Moonbase::FieldValueParam::SocialXValueParam::OrHash,
                    Moonbase::FieldValueParam::SocialLinkedInValueParam::OrHash,
                    Moonbase::TelephoneNumber::OrHash,
                    Moonbase::GeoValue::OrHash,
                    Moonbase::DateValue::OrHash,
                    Moonbase::DatetimeValue::OrHash,
                    Moonbase::ChoiceValueParam::OrHash,
                    Moonbase::FunnelStepValueParam::OrHash,
                    Moonbase::RelationValueParam::OrHash,
                    T::Array[
                      T.any(
                        Moonbase::SingleLineTextValue::OrHash,
                        Moonbase::MultiLineTextValue::OrHash,
                        Moonbase::IntegerValue::OrHash,
                        Moonbase::FloatValue::OrHash,
                        Moonbase::MonetaryValue::OrHash,
                        Moonbase::PercentageValue::OrHash,
                        Moonbase::BooleanValue::OrHash,
                        Moonbase::EmailValue::OrHash,
                        Moonbase::URLValue::OrHash,
                        Moonbase::DomainValue::OrHash,
                        Moonbase::ValueParam::ValueUriSocialX::OrHash,
                        Moonbase::ValueParam::ValueUriSocialLinkedIn::OrHash,
                        Moonbase::TelephoneNumber::OrHash,
                        Moonbase::GeoValue::OrHash,
                        Moonbase::DateValue::OrHash,
                        Moonbase::DatetimeValue::OrHash,
                        Moonbase::ChoiceValueParam::OrHash,
                        Moonbase::FunnelStepValueParam::OrHash,
                        Moonbase::RelationValueParam::OrHash
                      )
                    ]
                  )
                )
              ],
            values:
              T::Hash[
                Symbol,
                T.nilable(
                  T.any(
                    Moonbase::SingleLineTextValue::OrHash,
                    Moonbase::MultiLineTextValue::OrHash,
                    Moonbase::IntegerValue::OrHash,
                    Moonbase::FloatValue::OrHash,
                    Moonbase::MonetaryValue::OrHash,
                    Moonbase::PercentageValue::OrHash,
                    Moonbase::BooleanValue::OrHash,
                    Moonbase::EmailValue::OrHash,
                    Moonbase::URLValue::OrHash,
                    Moonbase::DomainValue::OrHash,
                    Moonbase::FieldValueParam::SocialXValueParam::OrHash,
                    Moonbase::FieldValueParam::SocialLinkedInValueParam::OrHash,
                    Moonbase::TelephoneNumber::OrHash,
                    Moonbase::GeoValue::OrHash,
                    Moonbase::DateValue::OrHash,
                    Moonbase::DatetimeValue::OrHash,
                    Moonbase::ChoiceValueParam::OrHash,
                    Moonbase::FunnelStepValueParam::OrHash,
                    Moonbase::RelationValueParam::OrHash,
                    T::Array[
                      T.any(
                        Moonbase::SingleLineTextValue::OrHash,
                        Moonbase::MultiLineTextValue::OrHash,
                        Moonbase::IntegerValue::OrHash,
                        Moonbase::FloatValue::OrHash,
                        Moonbase::MonetaryValue::OrHash,
                        Moonbase::PercentageValue::OrHash,
                        Moonbase::BooleanValue::OrHash,
                        Moonbase::EmailValue::OrHash,
                        Moonbase::URLValue::OrHash,
                        Moonbase::DomainValue::OrHash,
                        Moonbase::ValueParam::ValueUriSocialX::OrHash,
                        Moonbase::ValueParam::ValueUriSocialLinkedIn::OrHash,
                        Moonbase::TelephoneNumber::OrHash,
                        Moonbase::GeoValue::OrHash,
                        Moonbase::DateValue::OrHash,
                        Moonbase::DatetimeValue::OrHash,
                        Moonbase::ChoiceValueParam::OrHash,
                        Moonbase::FunnelStepValueParam::OrHash,
                        Moonbase::RelationValueParam::OrHash
                      )
                    ]
                  )
                )
              ],
            update_many_strategy:
              Moonbase::Collections::ItemUpsertParams::UpdateManyStrategy::OrSymbol,
            update_one_strategy:
              Moonbase::Collections::ItemUpsertParams::UpdateOneStrategy::OrSymbol,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(Moonbase::Item)
        end
        def upsert(
          # Path param
          collection_id,
          # Body param: A hash where keys are the `ref` of a `Field` and values are used to
          # identify the item to update. When multiple identifiers are provided, the update
          # will find items that match any of the identifiers.
          identifiers:,
          # Body param: A hash where keys are the `ref` of a `Field` and values are the data
          # to be set.
          values:,
          # Header param: Specifies how to update fields that allow multiple values. Use
          # `replace` (default) to overwrite all existing values with the new values. Use
          # `preserve` to leave the existing values unchanged when already present. Use
          # `merge` to merge the new values with existing values.
          update_many_strategy: nil,
          # Header param: Specifies how to update fields that have a single value. Use
          # `replace` (default) to overwrite the existing value with the new value. Use
          # `preserve` to leave the existing value unchanged if one is already present.
          update_one_strategy: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Moonbase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
