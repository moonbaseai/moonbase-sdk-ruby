# frozen_string_literal: true

require_relative "../../test_helper"

class Moonbase::Test::Resources::Collections::FieldsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.collections.fields.create(
        "collection_id",
        field: {name: "Lead Source", type: :"field/text/single_line"}
      )

    assert_pattern do
      response => Moonbase::Field
    end

    assert_pattern do
      case response
      in Moonbase::SingleLineTextField
      in Moonbase::MultiLineTextField
      in Moonbase::IdentifierField
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::SingleLineTextField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::MultiLineTextField::Kind,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/identifier",
        id: String,
        cardinality: Moonbase::IdentifierField::Cardinality,
        created_at: Time,
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::IdentifierField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::IntegerField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::FloatField::Kind,
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
        default_unit: String,
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::MonetaryField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::PercentageField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::BooleanField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::EmailField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::URLField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::DomainField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::SocialXField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::SocialLinkedInField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::TelephoneNumberField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::GeoField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::DateField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::DatetimeField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::ChoiceField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        funnel: Moonbase::Funnel,
        kind: Moonbase::StageField::Kind,
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
        allowed_collections: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::CollectionPointer]),
        cardinality: Moonbase::RelationField::Cardinality,
        created_at: Time,
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::RelationField::Kind,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        relation_type: Moonbase::RelationField::RelationType,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil,
        reverse_field_name: String | nil,
        reverse_fields: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::FieldPointer]) | nil,
        source_field: Moonbase::FieldPointer | nil
      }
      end
    end
  end

  def test_retrieve_required_params
    response = @moonbase.collections.fields.retrieve("id", collection_id: "collection_id")

    assert_pattern do
      response => Moonbase::Field
    end

    assert_pattern do
      case response
      in Moonbase::SingleLineTextField
      in Moonbase::MultiLineTextField
      in Moonbase::IdentifierField
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::SingleLineTextField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::MultiLineTextField::Kind,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/identifier",
        id: String,
        cardinality: Moonbase::IdentifierField::Cardinality,
        created_at: Time,
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::IdentifierField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::IntegerField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::FloatField::Kind,
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
        default_unit: String,
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::MonetaryField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::PercentageField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::BooleanField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::EmailField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::URLField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::DomainField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::SocialXField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::SocialLinkedInField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::TelephoneNumberField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::GeoField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::DateField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::DatetimeField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::ChoiceField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        funnel: Moonbase::Funnel,
        kind: Moonbase::StageField::Kind,
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
        allowed_collections: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::CollectionPointer]),
        cardinality: Moonbase::RelationField::Cardinality,
        created_at: Time,
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::RelationField::Kind,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        relation_type: Moonbase::RelationField::RelationType,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil,
        reverse_field_name: String | nil,
        reverse_fields: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::FieldPointer]) | nil,
        source_field: Moonbase::FieldPointer | nil
      }
      end
    end
  end

  def test_update_required_params
    response =
      @moonbase.collections.fields.update(
        "id",
        collection_id: "collection_id",
        field: {type: :"field/text/single_line"}
      )

    assert_pattern do
      response => Moonbase::Field
    end

    assert_pattern do
      case response
      in Moonbase::SingleLineTextField
      in Moonbase::MultiLineTextField
      in Moonbase::IdentifierField
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::SingleLineTextField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::MultiLineTextField::Kind,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil
      }
      in {
        type: :"field/identifier",
        id: String,
        cardinality: Moonbase::IdentifierField::Cardinality,
        created_at: Time,
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::IdentifierField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::IntegerField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::FloatField::Kind,
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
        default_unit: String,
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::MonetaryField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::PercentageField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::BooleanField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::EmailField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::URLField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::DomainField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::SocialXField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::SocialLinkedInField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::TelephoneNumberField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::GeoField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::DateField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::DatetimeField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::ChoiceField::Kind,
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
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        funnel: Moonbase::Funnel,
        kind: Moonbase::StageField::Kind,
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
        allowed_collections: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::CollectionPointer]),
        cardinality: Moonbase::RelationField::Cardinality,
        created_at: Time,
        default_values: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue]),
        kind: Moonbase::RelationField::Kind,
        name: String,
        readonly: Moonbase::Internal::Type::Boolean,
        ref: String,
        relation_type: Moonbase::RelationField::RelationType,
        required: Moonbase::Internal::Type::Boolean,
        unique: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        description: String | nil,
        reverse_field_name: String | nil,
        reverse_fields: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::FieldPointer]) | nil,
        source_field: Moonbase::FieldPointer | nil
      }
      end
    end
  end

  def test_delete_required_params
    response = @moonbase.collections.fields.delete("id", collection_id: "collection_id")

    assert_pattern do
      response => nil
    end
  end
end
