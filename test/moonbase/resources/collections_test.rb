# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::CollectionsTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.collections.retrieve("id")

    assert_pattern do
      response => Moonbase::Collection
    end

    assert_pattern do
      response => {
        id: String,
        links: Moonbase::Collection::Links,
        name: String,
        ref: String,
        type: Symbol,
        created_at: Time | nil,
        description: String | nil,
        fields: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Field]) | nil,
        updated_at: Time | nil,
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
      row => Moonbase::Collection
    end

    assert_pattern do
      row => {
        id: String,
        links: Moonbase::Collection::Links,
        name: String,
        ref: String,
        type: Symbol,
        created_at: Time | nil,
        description: String | nil,
        fields: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Field]) | nil,
        updated_at: Time | nil,
        views: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::View]) | nil
      }
    end
  end
end
