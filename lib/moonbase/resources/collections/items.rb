# frozen_string_literal: true

module Moonbase
  module Resources
    class Collections
      class Items
        # Creates a new item in a collection.
        #
        # @overload create(collection_id, values:, request_options: {})
        #
        # @param collection_id [String]
        #
        # @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::FieldValueParam::SocialXValueParam, Moonbase::Models::FieldValueParam::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam, Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::ValueParam::ValueUriSocialX, Moonbase::Models::ValueParam::ValueUriSocialLinkedIn, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam>, nil}] A hash where keys are the `ref` of a `Field` and values are the data to be set.
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Models::Item]
        #
        # @see Moonbase::Models::Collections::ItemCreateParams
        def create(collection_id, params)
          parsed, options = Moonbase::Collections::ItemCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["collections/%1$s/items", collection_id],
            body: parsed,
            model: Moonbase::Item,
            options: options
          )
        end

        # Retrieves the details of an existing item.
        #
        # @overload retrieve(id, collection_id:, request_options: {})
        #
        # @param id [String] The ID of the Item to retrieve.
        #
        # @param collection_id [String]
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Models::Item]
        #
        # @see Moonbase::Models::Collections::ItemRetrieveParams
        def retrieve(id, params)
          parsed, options = Moonbase::Collections::ItemRetrieveParams.dump_request(params)
          collection_id =
            parsed.delete(:collection_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["collections/%1$s/items/%2$s", collection_id, id],
            model: Moonbase::Item,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Moonbase::Models::Collections::ItemUpdateParams} for more details.
        #
        # Updates an item.
        #
        # @overload update(id, collection_id:, values:, update_many_strategy: nil, update_one_strategy: nil, request_options: {})
        #
        # @param id [String] Path param: The ID of the Item to update.
        #
        # @param collection_id [String] Path param
        #
        # @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::FieldValueParam::SocialXValueParam, Moonbase::Models::FieldValueParam::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam, Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::ValueParam::ValueUriSocialX, Moonbase::Models::ValueParam::ValueUriSocialLinkedIn, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam>, nil}] Body param: A hash where keys are the `ref` of a `Field` and values are the new
        #
        # @param update_many_strategy [Symbol, Moonbase::Models::Collections::ItemUpdateParams::UpdateManyStrategy] Header param: Specifies how to update fields that allow multiple values during a
        #
        # @param update_one_strategy [Symbol, Moonbase::Models::Collections::ItemUpdateParams::UpdateOneStrategy] Header param: Specifies how to update fields with a single (one) value during a
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Models::Item]
        #
        # @see Moonbase::Models::Collections::ItemUpdateParams
        def update(id, params)
          parsed, options = Moonbase::Collections::ItemUpdateParams.dump_request(params)
          collection_id =
            parsed.delete(:collection_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          header_params =
            {update_many_strategy: "update-many-strategy", update_one_strategy: "update-one-strategy"}
          @client.request(
            method: :patch,
            path: ["collections/%1$s/items/%2$s", collection_id, id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Moonbase::Item,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Moonbase::Models::Collections::ItemListParams} for more details.
        #
        # Returns a list of items that are part of the collection.
        #
        # @overload list(collection_id, after: nil, before: nil, limit: nil, request_options: {})
        #
        # @param collection_id [String] The ID of the collection.
        #
        # @param after [String] When specified, returns results starting immediately after the item identified b
        #
        # @param before [String] When specified, returns results starting immediately before the item identified
        #
        # @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Internal::CursorPage<Moonbase::Models::Item>]
        #
        # @see Moonbase::Models::Collections::ItemListParams
        def list(collection_id, params = {})
          parsed, options = Moonbase::Collections::ItemListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["collections/%1$s/items", collection_id],
            query: parsed,
            page: Moonbase::Internal::CursorPage,
            model: Moonbase::Item,
            options: options
          )
        end

        # Permanently deletes an item.
        #
        # @overload delete(id, collection_id:, request_options: {})
        #
        # @param id [String] The ID of the Item to delete.
        #
        # @param collection_id [String]
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Moonbase::Models::Collections::ItemDeleteParams
        def delete(id, params)
          parsed, options = Moonbase::Collections::ItemDeleteParams.dump_request(params)
          collection_id =
            parsed.delete(:collection_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["collections/%1$s/items/%2$s", collection_id, id],
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Moonbase::Models::Collections::ItemUpsertParams} for more details.
        #
        # Find and update an existing item, or create a new one.
        #
        # @overload upsert(collection_id, identifiers:, values:, update_many_strategy: nil, update_one_strategy: nil, request_options: {})
        #
        # @param collection_id [String] Path param
        #
        # @param identifiers [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::FieldValueParam::SocialXValueParam, Moonbase::Models::FieldValueParam::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam, Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::ValueParam::ValueUriSocialX, Moonbase::Models::ValueParam::ValueUriSocialLinkedIn, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam>, nil}] Body param: A hash where keys are the `ref` of a `Field` and values are used to
        #
        # @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::FieldValueParam::SocialXValueParam, Moonbase::Models::FieldValueParam::SocialLinkedInValueParam, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam, Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::ValueParam::ValueUriSocialX, Moonbase::Models::ValueParam::ValueUriSocialLinkedIn, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::ChoiceValueParam, Moonbase::Models::FunnelStepValueParam, Moonbase::Models::RelationValueParam>, nil}] Body param: A hash where keys are the `ref` of a `Field` and values are the data
        #
        # @param update_many_strategy [Symbol, Moonbase::Models::Collections::ItemUpsertParams::UpdateManyStrategy] Header param: Specifies how to update fields that allow multiple values. Use `re
        #
        # @param update_one_strategy [Symbol, Moonbase::Models::Collections::ItemUpsertParams::UpdateOneStrategy] Header param: Specifies how to update fields that have a single value. Use `repl
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Models::Item]
        #
        # @see Moonbase::Models::Collections::ItemUpsertParams
        def upsert(collection_id, params)
          parsed, options = Moonbase::Collections::ItemUpsertParams.dump_request(params)
          header_params =
            {update_many_strategy: "update-many-strategy", update_one_strategy: "update-one-strategy"}
          @client.request(
            method: :post,
            path: ["collections/%1$s/items/upsert", collection_id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Moonbase::Item,
            options: options
          )
        end

        # @api private
        #
        # @param client [Moonbase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
