# frozen_string_literal: true

module Moonbase
  module Resources
    class Collections
      # Manage your collections and items
      class Fields
        # Creates a new field in a collection.
        #
        # @overload create(collection_id, field:, request_options: {})
        #
        # @param collection_id [String] The ID or `ref` of the Collection to create the field in.
        #
        # @param field [Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextSingleLine, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextMultiLine, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberMonetary, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberPercentage, Moonbase::Models::Collections::FieldCreateParams::Field::FieldBoolean, Moonbase::Models::Collections::FieldCreateParams::Field::FieldEmail, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriURL, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriDomain, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialX, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTelephoneNumber, Moonbase::Models::Collections::FieldCreateParams::Field::FieldGeo, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDate, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDatetime, Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice, Moonbase::Models::StageFieldCreateParams, Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation] Parameters for creating a field, discriminated by `type`.
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Models::SingleLineTextField, Moonbase::Models::MultiLineTextField, Moonbase::Models::IntegerField, Moonbase::Models::FloatField, Moonbase::Models::MonetaryField, Moonbase::Models::PercentageField, Moonbase::Models::BooleanField, Moonbase::Models::EmailField, Moonbase::Models::URLField, Moonbase::Models::DomainField, Moonbase::Models::SocialXField, Moonbase::Models::SocialLinkedInField, Moonbase::Models::TelephoneNumberField, Moonbase::Models::GeoField, Moonbase::Models::DateField, Moonbase::Models::DatetimeField, Moonbase::Models::ChoiceField, Moonbase::Models::StageField, Moonbase::Models::RelationField]
        #
        # @see Moonbase::Models::Collections::FieldCreateParams
        def create(collection_id, params)
          parsed, options = Moonbase::Collections::FieldCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["collections/%1$s/fields", collection_id],
            body: parsed[:field],
            model: Moonbase::Field,
            options: options
          )
        end

        # Retrieves the details of a field in a collection.
        #
        # @overload retrieve(id, collection_id:, request_options: {})
        #
        # @param id [String] The ID or `ref` of the Field to retrieve.
        #
        # @param collection_id [String] The ID or `ref` of the Collection the field belongs to.
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Models::SingleLineTextField, Moonbase::Models::MultiLineTextField, Moonbase::Models::IntegerField, Moonbase::Models::FloatField, Moonbase::Models::MonetaryField, Moonbase::Models::PercentageField, Moonbase::Models::BooleanField, Moonbase::Models::EmailField, Moonbase::Models::URLField, Moonbase::Models::DomainField, Moonbase::Models::SocialXField, Moonbase::Models::SocialLinkedInField, Moonbase::Models::TelephoneNumberField, Moonbase::Models::GeoField, Moonbase::Models::DateField, Moonbase::Models::DatetimeField, Moonbase::Models::ChoiceField, Moonbase::Models::StageField, Moonbase::Models::RelationField]
        #
        # @see Moonbase::Models::Collections::FieldRetrieveParams
        def retrieve(id, params)
          parsed, options = Moonbase::Collections::FieldRetrieveParams.dump_request(params)
          collection_id =
            parsed.delete(:collection_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["collections/%1$s/fields/%2$s", collection_id, id],
            model: Moonbase::Field,
            options: options
          )
        end

        # Updates an existing field in a collection.
        #
        # @overload update(id, collection_id:, field:, request_options: {})
        #
        # @param id [String] Path param: The ID or `ref` of the Field to update.
        #
        # @param collection_id [String] Path param: The ID or `ref` of the Collection the field belongs to.
        #
        # @param field [Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextSingleLine, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextMultiLine, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberMonetary, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberPercentage, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldBoolean, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldEmail, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriURL, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriDomain, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialX, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTelephoneNumber, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldGeo, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDate, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDatetime, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice, Moonbase::Models::StageFieldUpdateParams, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation] Body param: Parameters for updating a field, discriminated by `type`.
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Models::SingleLineTextField, Moonbase::Models::MultiLineTextField, Moonbase::Models::IntegerField, Moonbase::Models::FloatField, Moonbase::Models::MonetaryField, Moonbase::Models::PercentageField, Moonbase::Models::BooleanField, Moonbase::Models::EmailField, Moonbase::Models::URLField, Moonbase::Models::DomainField, Moonbase::Models::SocialXField, Moonbase::Models::SocialLinkedInField, Moonbase::Models::TelephoneNumberField, Moonbase::Models::GeoField, Moonbase::Models::DateField, Moonbase::Models::DatetimeField, Moonbase::Models::ChoiceField, Moonbase::Models::StageField, Moonbase::Models::RelationField]
        #
        # @see Moonbase::Models::Collections::FieldUpdateParams
        def update(id, params)
          parsed, options = Moonbase::Collections::FieldUpdateParams.dump_request(params)
          collection_id =
            parsed.delete(:collection_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["collections/%1$s/fields/%2$s", collection_id, id],
            body: parsed[:field],
            model: Moonbase::Field,
            options: options
          )
        end

        # Permanently deletes a field from a collection.
        #
        # @overload delete(id, collection_id:, request_options: {})
        #
        # @param id [String] The ID or `ref` of the Field to delete.
        #
        # @param collection_id [String] The ID or `ref` of the Collection the field belongs to.
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Moonbase::Models::Collections::FieldDeleteParams
        def delete(id, params)
          parsed, options = Moonbase::Collections::FieldDeleteParams.dump_request(params)
          collection_id =
            parsed.delete(:collection_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["collections/%1$s/fields/%2$s", collection_id, id],
            model: NilClass,
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
