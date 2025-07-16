# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::TagsetsTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.tagsets.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::Tagset
    end

    assert_pattern do
      response => {
        id: String,
        links: MoonbaseSDK::Tagset::Links,
        name: String,
        type: Symbol,
        created_at: Time | nil,
        description: String | nil,
        tags: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Tagset::Tag]) | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.tagsets.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::Tagset
    end

    assert_pattern do
      row => {
        id: String,
        links: MoonbaseSDK::Tagset::Links,
        name: String,
        type: Symbol,
        created_at: Time | nil,
        description: String | nil,
        tags: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Tagset::Tag]) | nil,
        updated_at: Time | nil
      }
    end
  end
end
