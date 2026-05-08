# typed: strong

module Moonbase
  module Resources
    class Collections
      # Manage your collections and items
      class Fields
        # Creates a new field in a collection.
        sig do
          params(
            collection_id: String,
            field:
              T.any(
                Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldEmail::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldGeo::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldDate::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldChoice::OrHash,
                Moonbase::StageFieldCreateParams::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldRelation::OrHash
              ),
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(Moonbase::Field::Variants)
        end
        def create(
          # The ID or `ref` of the Collection to create the field in.
          collection_id,
          # Parameters for creating a field, discriminated by `type`.
          field:,
          request_options: {}
        )
        end

        # Retrieves the details of a field in a collection.
        sig do
          params(
            id: String,
            collection_id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(Moonbase::Field::Variants)
        end
        def retrieve(
          # The ID or `ref` of the Field to retrieve.
          id,
          # The ID or `ref` of the Collection the field belongs to.
          collection_id:,
          request_options: {}
        )
        end

        # Updates an existing field in a collection.
        sig do
          params(
            id: String,
            collection_id: String,
            field:
              T.any(
                Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldIdentifier::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldDate::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::OrHash,
                Moonbase::StageFieldUpdateParams::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::OrHash
              ),
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(Moonbase::Field::Variants)
        end
        def update(
          # Path param: The ID or `ref` of the Field to update.
          id,
          # Path param: The ID or `ref` of the Collection the field belongs to.
          collection_id:,
          # Body param: Parameters for updating a field, discriminated by `type`.
          field:,
          request_options: {}
        )
        end

        # Permanently deletes a field from a collection.
        sig do
          params(
            id: String,
            collection_id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The ID or `ref` of the Field to delete.
          id,
          # The ID or `ref` of the Collection the field belongs to.
          collection_id:,
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
