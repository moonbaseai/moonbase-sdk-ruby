# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ItemsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.items.create(
        collection_id: "collection_id",
        values: {foo: {text: "text", type: :"value/text/single_line"}}
      )

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue]) | nil
      }
    end
  end

  def test_retrieve
    response = @moonbase.items.retrieve("id")

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue]) | nil
      }
    end
  end

  def test_update_required_params
    response = @moonbase.items.update("id", values: {foo: {text: "text", type: :"value/text/single_line"}})

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue]) | nil
      }
    end
  end

  def test_delete
    response = @moonbase.items.delete("id")

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue]) | nil
      }
    end
  end

  def test_upsert_required_params
    response =
      @moonbase.items.upsert(
        collection_id: "collection_id",
        identifiers: {foo: {text: "text", type: :"value/text/single_line"}},
        values: {foo: {text: "text", type: :"value/text/single_line"}}
      )

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue]) | nil
      }
    end
  end
end
