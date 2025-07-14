# frozen_string_literal: true

module MoonbaseSDK
  module Resources
    class Items
      # Creates a new item in a collection.
      #
      # @overload create(collection_id:, values:, request_options: {})
      #
      # @param collection_id [String] The ID of the `Collection` to create the item in.
      #
      # @param values [Hash{Symbol=>MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>, nil}] A hash where keys are the `ref` of a `Field` and values are the data to be set.
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::Item]
      #
      # @see MoonbaseSDK::Models::ItemCreateParams
      def create(params)
        parsed, options = MoonbaseSDK::ItemCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "items",
          body: parsed,
          model: MoonbaseSDK::Item,
          options: options
        )
      end

      # Retrieves the details of an existing item.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the Item to retrieve.
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::Item]
      #
      # @see MoonbaseSDK::Models::ItemRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["items/%1$s", id],
          model: MoonbaseSDK::Item,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::ItemUpdateParams} for more details.
      #
      # Updates an item.
      #
      # @overload update(id, values:, update_many_strategy: nil, update_one_strategy: nil, request_options: {})
      #
      # @param id [String] Path param: The ID of the Item to update.
      #
      # @param values [Hash{Symbol=>MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>, nil}] Body param: A hash where keys are the `ref` of a `Field` and values are the new
      #
      # @param update_many_strategy [Symbol, MoonbaseSDK::Models::ItemUpdateParams::UpdateManyStrategy] Header param: Specifies how to update fields that allow multiple values during a
      #
      # @param update_one_strategy [Symbol, MoonbaseSDK::Models::ItemUpdateParams::UpdateOneStrategy] Header param: Specifies how to update fields with a single (one) value during a
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::Item]
      #
      # @see MoonbaseSDK::Models::ItemUpdateParams
      def update(id, params)
        parsed, options = MoonbaseSDK::ItemUpdateParams.dump_request(params)
        header_params =
          {update_many_strategy: "update-many-strategy", update_one_strategy: "update-one-strategy"}
        @client.request(
          method: :patch,
          path: ["items/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: MoonbaseSDK::Item,
          options: options
        )
      end

      # Permanently deletes an item.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the Item to delete.
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::Item]
      #
      # @see MoonbaseSDK::Models::ItemDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["items/%1$s", id],
          model: MoonbaseSDK::Item,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {MoonbaseSDK::Models::ItemUpsertParams} for more details.
      #
      # Find and update an existing item, or create a new one.
      #
      # @overload upsert(collection_id:, identifiers:, values:, update_many_strategy: nil, update_one_strategy: nil, request_options: {})
      #
      # @param collection_id [String] Body param: The ID of the `Collection` to create the item in.
      #
      # @param identifiers [Hash{Symbol=>MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>, nil}] Body param: A hash where keys are the `ref` of a `Field` and values are used to
      #
      # @param values [Hash{Symbol=>MoonbaseSDK::Models::SingleLineTextValue, MoonbaseSDK::Models::MultiLineTextValue, MoonbaseSDK::Models::IntegerValue, MoonbaseSDK::Models::FloatValue, MoonbaseSDK::Models::MonetaryValue, MoonbaseSDK::Models::PercentageValue, MoonbaseSDK::Models::BooleanValue, MoonbaseSDK::Models::EmailValue, MoonbaseSDK::Models::URLValue, MoonbaseSDK::Models::DomainValue, MoonbaseSDK::Models::SocialXValue, MoonbaseSDK::Models::SocialLinkedInValue, MoonbaseSDK::Models::TelephoneNumber, MoonbaseSDK::Models::GeoValue, MoonbaseSDK::Models::DateValue, MoonbaseSDK::Models::DatetimeValue, MoonbaseSDK::Models::Choice, MoonbaseSDK::Models::FunnelStep, MoonbaseSDK::Models::RelationValue, Array<MoonbaseSDK::Models::Value>, nil}] Body param: A hash where keys are the `ref` of a `Field` and values are the data
      #
      # @param update_many_strategy [Symbol, MoonbaseSDK::Models::ItemUpsertParams::UpdateManyStrategy] Header param: Specifies how to update fields that allow multiple values. Use `re
      #
      # @param update_one_strategy [Symbol, MoonbaseSDK::Models::ItemUpsertParams::UpdateOneStrategy] Header param: Specifies how to update fields that have a single value. Use `repl
      #
      # @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MoonbaseSDK::Models::Item]
      #
      # @see MoonbaseSDK::Models::ItemUpsertParams
      def upsert(params)
        parsed, options = MoonbaseSDK::ItemUpsertParams.dump_request(params)
        header_params =
          {update_many_strategy: "update-many-strategy", update_one_strategy: "update-one-strategy"}
        @client.request(
          method: :post,
          path: "items/upsert",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: MoonbaseSDK::Item,
          options: options
        )
      end

      # @api private
      #
      # @param client [MoonbaseSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
