# frozen_string_literal: true

require_relative "../../test_helper"

class MoonbaseSDK::Test::Resources::Views::ItemsTest < MoonbaseSDK::Test::ResourceTest
  def test_list
    response = @moonbase.views.items.list("id")

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
