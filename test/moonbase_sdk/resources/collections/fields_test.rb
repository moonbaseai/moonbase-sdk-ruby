# frozen_string_literal: true

require_relative "../../test_helper"

class MoonbaseSDK::Test::Resources::Collections::FieldsTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve_required_params
    response = @moonbase.collections.fields.retrieve("id", collection_id: "collection_id")

    assert_pattern do
      response => MoonbaseSDK::Field
    end

    assert_pattern do
      response => {
        id: String,
        cardinality: MoonbaseSDK::Field::Cardinality,
        links: MoonbaseSDK::Field::Links,
        name: String,
        ref: String,
        type: MoonbaseSDK::Field::Type,
        created_at: Time | nil,
        description: String | nil,
        field_options: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Field::FieldOption]) | nil,
        funnel: MoonbaseSDK::Field::Funnel | nil,
        readonly: MoonbaseSDK::Internal::Type::Boolean | nil,
        required: MoonbaseSDK::Internal::Type::Boolean | nil,
        unique: MoonbaseSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil
      }
    end
  end
end
