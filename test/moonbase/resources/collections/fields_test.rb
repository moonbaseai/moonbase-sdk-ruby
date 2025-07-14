# frozen_string_literal: true

require_relative "../../test_helper"

class Moonbase::Test::Resources::Collections::FieldsTest < Moonbase::Test::ResourceTest
  def test_retrieve_required_params
    response = @moonbase.collections.fields.retrieve("id", collection_id: "collection_id")

    assert_pattern do
      response => Moonbase::Field
    end

    assert_pattern do
      response => {
        id: String,
        cardinality: Moonbase::Field::Cardinality,
        links: Moonbase::Field::Links,
        name: String,
        ref: String,
        type: Moonbase::Field::Type,
        created_at: Time | nil,
        description: String | nil,
        field_options: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Field::FieldOption]) | nil,
        funnel: Moonbase::Field::Funnel | nil,
        readonly: Moonbase::Internal::Type::Boolean | nil,
        required: Moonbase::Internal::Type::Boolean | nil,
        unique: Moonbase::Internal::Type::Boolean | nil,
        updated_at: Time | nil
      }
    end
  end
end
