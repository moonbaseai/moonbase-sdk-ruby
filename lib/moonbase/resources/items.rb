# frozen_string_literal: true

module Moonbase
  module Resources
    class Items
      # Creates a new item in a collection.
      #
      # @overload create(collection_id:, values:, request_options: {})
      #
      # @param collection_id [String] The ID of the `Collection` to create the item in.
      #
      # @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>}] A hash where keys are the `ref` of a `Field` and values are the data to be set.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Item]
      #
      # @see Moonbase::Models::ItemCreateParams
      def create(params)
        parsed, options = Moonbase::ItemCreateParams.dump_request(params)
        @client.request(method: :post, path: "items", body: parsed, model: Moonbase::Item, options: options)
      end

      # Retrieves the details of an existing item.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the Item to retrieve.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Item]
      #
      # @see Moonbase::Models::ItemRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["items/%1$s", id],
          model: Moonbase::Item,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::ItemUpdateParams} for more details.
      #
      # Updates an item.
      #
      # @overload update(id, values:, update_many_strategy: nil, update_one_strategy: nil, request_options: {})
      #
      # @param id [String] Path param: The ID of the Item to update.
      #
      # @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>}] Body param: A hash where keys are the `ref` of a `Field` and values are the new
      #
      # @param update_many_strategy [Symbol, Moonbase::Models::ItemUpdateParams::UpdateManyStrategy] Header param: Specifies how to update fields that allow multiple values during a
      #
      # @param update_one_strategy [Symbol, Moonbase::Models::ItemUpdateParams::UpdateOneStrategy] Header param: Specifies how to update fields with a single (one) value during a
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Item]
      #
      # @see Moonbase::Models::ItemUpdateParams
      def update(id, params)
        parsed, options = Moonbase::ItemUpdateParams.dump_request(params)
        header_params =
          {update_many_strategy: "update-many-strategy", update_one_strategy: "update-one-strategy"}
        @client.request(
          method: :patch,
          path: ["items/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Moonbase::Item,
          options: options
        )
      end

      # Permanently deletes an item.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the Item to delete.
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Item]
      #
      # @see Moonbase::Models::ItemDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["items/%1$s", id],
          model: Moonbase::Item,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Moonbase::Models::ItemUpsertParams} for more details.
      #
      # Find and update an existing item, or create a new one.
      #
      # @overload upsert(collection_id:, identifiers:, values:, update_many_strategy: nil, update_one_strategy: nil, request_options: {})
      #
      # @param collection_id [String] Body param: The ID of the `Collection` to create the item in.
      #
      # @param identifiers [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>}] Body param: A hash where keys are the `ref` of a `Field` and values are used to
      #
      # @param values [Hash{Symbol=>Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::DatetimeValue, Moonbase::Models::Choice, Moonbase::Models::FunnelStep, Moonbase::Models::RelationValue, Array<Moonbase::Models::Value>}] Body param: A hash where keys are the `ref` of a `Field` and values are the data
      #
      # @param update_many_strategy [Symbol, Moonbase::Models::ItemUpsertParams::UpdateManyStrategy] Header param: Specifies how to update fields that allow multiple values. Use `re
      #
      # @param update_one_strategy [Symbol, Moonbase::Models::ItemUpsertParams::UpdateOneStrategy] Header param: Specifies how to update fields that have a single value. Use `repl
      #
      # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Moonbase::Models::Item]
      #
      # @see Moonbase::Models::ItemUpsertParams
      def upsert(params)
        parsed, options = Moonbase::ItemUpsertParams.dump_request(params)
        header_params =
          {update_many_strategy: "update-many-strategy", update_one_strategy: "update-one-strategy"}
        @client.request(
          method: :post,
          path: "items/upsert",
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
