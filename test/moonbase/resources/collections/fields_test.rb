# frozen_string_literal: true

require_relative "../../test_helper"

class Moonbase::Test::Resources::Collections::FieldsTest < Moonbase::Test::ResourceTest
  def test_retrieve_required_params
    response = @moonbase.collections.fields.retrieve("id", collection_id: "collection_id")

    assert_pattern do
      response => Moonbase::Field
    end

    assert_pattern do
      case response
      in Moonbase::SingleLineTextField
      in Moonbase::MultiLineTextField
      in Moonbase::IntegerField
      in Moonbase::FloatField
      in Moonbase::MonetaryField
      in Moonbase::PercentageField
      in Moonbase::BooleanField
      in Moonbase::EmailField
      in Moonbase::URLField
      in Moonbase::DomainField
      in Moonbase::SocialXField
      in Moonbase::SocialLinkedInField
      in Moonbase::TelephoneNumberField
      in Moonbase::GeoField
      in Moonbase::DateField
      in Moonbase::DatetimeField
      in Moonbase::ChoiceField
      in Moonbase::StageField
      in Moonbase::RelationField
      end
    end

    assert_pattern do
      case response
      in {
        type: :"field/text/single_line",
        id: String,
        cardinality: Moonbase::SingleLineTextField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/text/multi_line",
        id: String,
        cardinality: Moonbase::MultiLineTextField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/number/unitless_integer",
        id: String,
        cardinality: Moonbase::IntegerField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/number/unitless_float",
        id: String,
        cardinality: Moonbase::FloatField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/number/monetary",
        id: String,
        cardinality: Moonbase::MonetaryField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/number/percentage",
        id: String,
        cardinality: Moonbase::PercentageField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/boolean",
        id: String,
        cardinality: Moonbase::BooleanField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/email",
        id: String,
        cardinality: Moonbase::EmailField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/uri/url",
        id: String,
        cardinality: Moonbase::URLField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/uri/domain",
        id: String,
        cardinality: Moonbase::DomainField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/uri/social_x",
        id: String,
        cardinality: Moonbase::SocialXField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/uri/social_linked_in",
        id: String,
        cardinality: Moonbase::SocialLinkedInField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/telephone_number",
        id: String,
        cardinality: Moonbase::TelephoneNumberField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/geo",
        id: String,
        cardinality: Moonbase::GeoField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/date",
        id: String,
        cardinality: Moonbase::DateField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/datetime",
        id: String,
        cardinality: Moonbase::DatetimeField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/choice",
        id: String,
        cardinality: Moonbase::ChoiceField::Cardinality,
        created_at: Time,
        name: String,
        options: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::ChoiceFieldOption]),
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/stage",
        id: String,
        cardinality: Moonbase::StageField::Cardinality,
        created_at: Time,
        funnel: Moonbase::Funnel,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/relation",
        id: String,
        cardinality: Moonbase::RelationField::Cardinality,
        created_at: Time,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        relation_type: Moonbase::RelationField::RelationType,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      end
    end
  end
end
