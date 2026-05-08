# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::CollectionsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response = @moonbase.collections.create(name: "Leads")

    assert_pattern do
      response => Moonbase::Collection
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        fields: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::Field]),
        kind: Moonbase::Collection::Kind,
        name: String,
        ref: String,
        type: Symbol,
        updated_at: Time,
        description: String | nil,
        views: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::View]) | nil
      }
    end
  end

  def test_retrieve
    response = @moonbase.collections.retrieve("id")

    assert_pattern do
      response => Moonbase::Collection
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        fields: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::Field]),
        kind: Moonbase::Collection::Kind,
        name: String,
        ref: String,
        type: Symbol,
        updated_at: Time,
        description: String | nil,
        views: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::View]) | nil
      }
    end
  end

  def test_update
    response = @moonbase.collections.update("id")

    assert_pattern do
      response => Moonbase::Collection
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        fields: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::Field]),
        kind: Moonbase::Collection::Kind,
        name: String,
        ref: String,
        type: Symbol,
        updated_at: Time,
        description: String | nil,
        views: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::View]) | nil
      }
    end
  end

  def test_list
    response = @moonbase.collections.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Models::CollectionListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        kind: Moonbase::Models::CollectionListResponse::Kind,
        name: String,
        ref: String,
        type: Symbol,
        updated_at: Time,
        description: String | nil
      }
    end
  end
end
