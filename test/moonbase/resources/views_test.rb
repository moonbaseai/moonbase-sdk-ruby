# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ViewsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.views.create(
        collection: {type: :collection},
        fields: [{field: "name"}, {field: "email"}],
        name: "Active leads",
        view_type: :table
      )

    assert_pattern do
      response => Moonbase::View
    end

    assert_pattern do
      response => {
        id: String,
        aggregates: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::ViewAggregate]),
        collection: Moonbase::CollectionPointer,
        created_at: Time,
        fields: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::ViewField]),
        filter: Moonbase::ItemsFilter | nil,
        groups: ^(Moonbase::Internal::Type::ArrayOf[String]),
        name: String,
        relation_value_filters: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::ViewRelationValueFilter]),
        sort: ^(Moonbase::Internal::Type::ArrayOf[String]),
        type: Symbol,
        updated_at: Time,
        view_type: Moonbase::View::ViewType
      }
    end
  end

  def test_retrieve
    response = @moonbase.views.retrieve("id")

    assert_pattern do
      response => Moonbase::View
    end

    assert_pattern do
      response => {
        id: String,
        aggregates: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::ViewAggregate]),
        collection: Moonbase::CollectionPointer,
        created_at: Time,
        fields: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::ViewField]),
        filter: Moonbase::ItemsFilter | nil,
        groups: ^(Moonbase::Internal::Type::ArrayOf[String]),
        name: String,
        relation_value_filters: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::ViewRelationValueFilter]),
        sort: ^(Moonbase::Internal::Type::ArrayOf[String]),
        type: Symbol,
        updated_at: Time,
        view_type: Moonbase::View::ViewType
      }
    end
  end

  def test_update
    response = @moonbase.views.update("id")

    assert_pattern do
      response => Moonbase::View
    end

    assert_pattern do
      response => {
        id: String,
        aggregates: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::ViewAggregate]),
        collection: Moonbase::CollectionPointer,
        created_at: Time,
        fields: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::ViewField]),
        filter: Moonbase::ItemsFilter | nil,
        groups: ^(Moonbase::Internal::Type::ArrayOf[String]),
        name: String,
        relation_value_filters: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::ViewRelationValueFilter]),
        sort: ^(Moonbase::Internal::Type::ArrayOf[String]),
        type: Symbol,
        updated_at: Time,
        view_type: Moonbase::View::ViewType
      }
    end
  end

  def test_list
    response = @moonbase.views.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Models::ViewListResponse
    end

    assert_pattern do
      row => {
        id: String,
        collection: Moonbase::CollectionPointer,
        created_at: Time,
        name: String,
        type: Symbol,
        updated_at: Time,
        view_type: Moonbase::Models::ViewListResponse::ViewType
      }
    end
  end

  def test_delete
    response = @moonbase.views.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
