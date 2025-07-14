# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::CollectionsTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.collections.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::Collection
    end

    assert_pattern do
      response => {
        id: String,
        links: MoonbaseSDK::Collection::Links,
        name: String,
        ref: String,
        type: Symbol,
        created_at: Time | nil,
        description: String | nil,
        fields: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Field]) | nil,
        updated_at: Time | nil,
        views: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::View]) | nil
      }
    end
  end

  def test_list
    response = @moonbase.collections.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::Collection
    end

    assert_pattern do
      row => {
        id: String,
        links: MoonbaseSDK::Collection::Links,
        name: String,
        ref: String,
        type: Symbol,
        created_at: Time | nil,
        description: String | nil,
        fields: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Field]) | nil,
        updated_at: Time | nil,
        views: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::View]) | nil
      }
    end
  end
end
