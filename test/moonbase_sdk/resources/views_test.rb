# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::ViewsTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.views.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::View
    end

    assert_pattern do
      response => {
        id: String,
        links: MoonbaseSDK::View::Links,
        name: String,
        type: Symbol,
        collection: MoonbaseSDK::Collection | nil,
        view_type: MoonbaseSDK::View::ViewType | nil
      }
    end
  end

  def test_list_items
    response = @moonbase.views.list_items("id")

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::Item
    end

    assert_pattern do
      row => {
        id: String,
        type: Symbol,
        values: ^(MoonbaseSDK::Internal::Type::HashOf[union: MoonbaseSDK::FieldValue, nil?: true]) | nil
      }
    end
  end
end
