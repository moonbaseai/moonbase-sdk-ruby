# typed: strong

module MoonbaseSDK
  module Resources
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
                  MoonbaseSDK::SingleLineTextValue::OrHash,
                  MoonbaseSDK::MultiLineTextValue::OrHash,
                  MoonbaseSDK::IntegerValue::OrHash,
                  MoonbaseSDK::FloatValue::OrHash,
                  MoonbaseSDK::MonetaryValue::OrHash,
                  MoonbaseSDK::PercentageValue::OrHash,
                  MoonbaseSDK::BooleanValue::OrHash,
                  MoonbaseSDK::EmailValue::OrHash,
                  MoonbaseSDK::URLValue::OrHash,
                  MoonbaseSDK::DomainValue::OrHash,
                  MoonbaseSDK::SocialXValue::OrHash,
                  MoonbaseSDK::SocialLinkedInValue::OrHash,
                  MoonbaseSDK::TelephoneNumber::OrHash,
                  MoonbaseSDK::GeoValue::OrHash,
                  MoonbaseSDK::DateValue::OrHash,
                  MoonbaseSDK::DatetimeValue::OrHash,
                  MoonbaseSDK::Choice::OrHash,
                  MoonbaseSDK::FunnelStep::OrHash,
                  MoonbaseSDK::RelationValue,
                  T::Array[MoonbaseSDK::Value]
                )
              )
            ],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Item)
      end
      def create(
        # The ID of the `Collection` to create the item in.
        collection_id:,
        # A hash where keys are the `ref` of a `Field` and values are the data to be set.
        values:,
        request_options: {}
      )
      end

      # Retrieves the details of an existing item.
      sig do
        params(
          id: String,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Item)
      end
      def retrieve(
        # The ID of the Item to retrieve.
        id,
        request_options: {}
      )
      end

      # Updates an item.
      sig do
        params(
          id: String,
          values:
            T::Hash[
              Symbol,
              T.nilable(
                T.any(
                  MoonbaseSDK::SingleLineTextValue::OrHash,
                  MoonbaseSDK::MultiLineTextValue::OrHash,
                  MoonbaseSDK::IntegerValue::OrHash,
                  MoonbaseSDK::FloatValue::OrHash,
                  MoonbaseSDK::MonetaryValue::OrHash,
                  MoonbaseSDK::PercentageValue::OrHash,
                  MoonbaseSDK::BooleanValue::OrHash,
                  MoonbaseSDK::EmailValue::OrHash,
                  MoonbaseSDK::URLValue::OrHash,
                  MoonbaseSDK::DomainValue::OrHash,
                  MoonbaseSDK::SocialXValue::OrHash,
                  MoonbaseSDK::SocialLinkedInValue::OrHash,
                  MoonbaseSDK::TelephoneNumber::OrHash,
                  MoonbaseSDK::GeoValue::OrHash,
                  MoonbaseSDK::DateValue::OrHash,
                  MoonbaseSDK::DatetimeValue::OrHash,
                  MoonbaseSDK::Choice::OrHash,
                  MoonbaseSDK::FunnelStep::OrHash,
                  MoonbaseSDK::RelationValue,
                  T::Array[MoonbaseSDK::Value]
                )
              )
            ],
          update_many_strategy:
            MoonbaseSDK::ItemUpdateParams::UpdateManyStrategy::OrSymbol,
          update_one_strategy:
            MoonbaseSDK::ItemUpdateParams::UpdateOneStrategy::OrSymbol,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Item)
      end
      def update(
        # Path param: The ID of the Item to update.
        id,
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

      # Permanently deletes an item.
      sig do
        params(
          id: String,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Item)
      end
      def delete(
        # The ID of the Item to delete.
        id,
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
                  MoonbaseSDK::SingleLineTextValue::OrHash,
                  MoonbaseSDK::MultiLineTextValue::OrHash,
                  MoonbaseSDK::IntegerValue::OrHash,
                  MoonbaseSDK::FloatValue::OrHash,
                  MoonbaseSDK::MonetaryValue::OrHash,
                  MoonbaseSDK::PercentageValue::OrHash,
                  MoonbaseSDK::BooleanValue::OrHash,
                  MoonbaseSDK::EmailValue::OrHash,
                  MoonbaseSDK::URLValue::OrHash,
                  MoonbaseSDK::DomainValue::OrHash,
                  MoonbaseSDK::SocialXValue::OrHash,
                  MoonbaseSDK::SocialLinkedInValue::OrHash,
                  MoonbaseSDK::TelephoneNumber::OrHash,
                  MoonbaseSDK::GeoValue::OrHash,
                  MoonbaseSDK::DateValue::OrHash,
                  MoonbaseSDK::DatetimeValue::OrHash,
                  MoonbaseSDK::Choice::OrHash,
                  MoonbaseSDK::FunnelStep::OrHash,
                  MoonbaseSDK::RelationValue,
                  T::Array[MoonbaseSDK::Value]
                )
              )
            ],
          values:
            T::Hash[
              Symbol,
              T.nilable(
                T.any(
                  MoonbaseSDK::SingleLineTextValue::OrHash,
                  MoonbaseSDK::MultiLineTextValue::OrHash,
                  MoonbaseSDK::IntegerValue::OrHash,
                  MoonbaseSDK::FloatValue::OrHash,
                  MoonbaseSDK::MonetaryValue::OrHash,
                  MoonbaseSDK::PercentageValue::OrHash,
                  MoonbaseSDK::BooleanValue::OrHash,
                  MoonbaseSDK::EmailValue::OrHash,
                  MoonbaseSDK::URLValue::OrHash,
                  MoonbaseSDK::DomainValue::OrHash,
                  MoonbaseSDK::SocialXValue::OrHash,
                  MoonbaseSDK::SocialLinkedInValue::OrHash,
                  MoonbaseSDK::TelephoneNumber::OrHash,
                  MoonbaseSDK::GeoValue::OrHash,
                  MoonbaseSDK::DateValue::OrHash,
                  MoonbaseSDK::DatetimeValue::OrHash,
                  MoonbaseSDK::Choice::OrHash,
                  MoonbaseSDK::FunnelStep::OrHash,
                  MoonbaseSDK::RelationValue,
                  T::Array[MoonbaseSDK::Value]
                )
              )
            ],
          update_many_strategy:
            MoonbaseSDK::ItemUpsertParams::UpdateManyStrategy::OrSymbol,
          update_one_strategy:
            MoonbaseSDK::ItemUpsertParams::UpdateOneStrategy::OrSymbol,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::Item)
      end
      def upsert(
        # Body param: The ID of the `Collection` to create the item in.
        collection_id:,
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
      sig { params(client: MoonbaseSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
