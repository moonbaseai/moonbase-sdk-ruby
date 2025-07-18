# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ItemsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.items.create(
        collection_id: "1CRDSE9ttnSYmcV3rF2hEt",
        values: {
          name: {text: "Aperture Science", type: :"value/text/single_line"},
          ceo: {item: {id: "1CRDSEB9orv8FpBhJPFPk1", type: :item}, type: :"value/relation"}
        }
      )

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        type: Symbol,
        links: Moonbase::Item::Links | nil,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue, nil?: true]) | nil
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
        links: Moonbase::Item::Links | nil,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue, nil?: true]) | nil
      }
    end
  end

  def test_update_required_params
    response =
      @moonbase.items.update("id", values: {name: {text: "Jony Appleseed", type: :"value/text/single_line"}})

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        type: Symbol,
        links: Moonbase::Item::Links | nil,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue, nil?: true]) | nil
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
        links: Moonbase::Item::Links | nil,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue, nil?: true]) | nil
      }
    end
  end

  def test_upsert_required_params
    response =
      @moonbase.items.upsert(
        collection_id: "1CRDSEa8usAnarLXLT12ev",
        identifiers: {domain: []},
        values: {
          name: {text: "Aperture Science", type: :"value/text/single_line"},
          domain: [],
          linked_in: {profile: {}, type: :"value/uri/social_linked_in"}
        }
      )

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        type: Symbol,
        links: Moonbase::Item::Links | nil,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue, nil?: true]) | nil
      }
    end
  end
end
