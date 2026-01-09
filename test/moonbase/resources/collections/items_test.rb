# frozen_string_literal: true

require_relative "../../test_helper"

class Moonbase::Test::Resources::Collections::ItemsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.collections.items.create(
        "collection_id",
        values: {
          name: {data: "Aperture Science", type: :"value/text/single_line"},
          ceo: {data: {id: "1CLJt2v3bK2AzMXRRswwZG", type: "item"}, type: :"value/relation"}
        }
      )

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        collection: Moonbase::CollectionPointer,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue])
      }
    end
  end

  def test_retrieve_required_params
    response = @moonbase.collections.items.retrieve("id", collection_id: "collection_id")

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        collection: Moonbase::CollectionPointer,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue])
      }
    end
  end

  def test_update_required_params
    response =
      @moonbase.collections.items.update(
        "id",
        collection_id: "collection_id",
        values: {name: {data: "Jony Appleseed", type: :"value/text/single_line"}}
      )

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        collection: Moonbase::CollectionPointer,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue])
      }
    end
  end

  def test_list
    response = @moonbase.collections.items.list("collection_id")

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Item
    end

    assert_pattern do
      row => {
        id: String,
        collection: Moonbase::CollectionPointer,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue])
      }
    end
  end

  def test_delete_required_params
    response = @moonbase.collections.items.delete("id", collection_id: "collection_id")

    assert_pattern do
      response => nil
    end
  end

  def test_upsert_required_params
    response =
      @moonbase.collections.items.upsert(
        "collection_id",
        identifiers: {domain: [{data: "aperturescience.com", type: :"value/uri/domain"}]},
        values: {
          name: {data: "Aperture Science", type: :"value/text/single_line"},
          domain: [{data: "aperturescience.com", type: :"value/uri/domain"}],
          linked_in: {data: {}, type: :"value/uri/social_linked_in"}
        }
      )

    assert_pattern do
      response => Moonbase::Item
    end

    assert_pattern do
      response => {
        id: String,
        collection: Moonbase::CollectionPointer,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue])
      }
    end
  end
end
