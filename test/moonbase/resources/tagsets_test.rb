# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::TagsetsTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.tagsets.retrieve("id")

    assert_pattern do
      response => Moonbase::Tagset
    end

    assert_pattern do
      response => {
        id: String,
        links: Moonbase::Tagset::Links,
        name: String,
        type: Symbol,
        created_at: Time | nil,
        description: String | nil,
        tags: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Tagset::Tag]) | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.tagsets.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Tagset
    end

    assert_pattern do
      row => {
        id: String,
        links: Moonbase::Tagset::Links,
        name: String,
        type: Symbol,
        created_at: Time | nil,
        description: String | nil,
        tags: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Tagset::Tag]) | nil,
        updated_at: Time | nil
      }
    end
  end
end
