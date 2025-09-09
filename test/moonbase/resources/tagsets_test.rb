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
        created_at: Time,
        name: String,
        tags: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Tagset::Tag]),
        type: Symbol,
        updated_at: Time,
        description: String | nil
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
        created_at: Time,
        name: String,
        tags: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Tagset::Tag]),
        type: Symbol,
        updated_at: Time,
        description: String | nil
      }
    end
  end
end
