# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::FormsTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.forms.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::Form
    end

    assert_pattern do
      response => {
        id: String,
        collection: MoonbaseSDK::Collection,
        links: MoonbaseSDK::Form::Links,
        name: String,
        type: Symbol,
        created_at: Time | nil,
        pages_enabled: MoonbaseSDK::Internal::Type::Boolean | nil,
        pages_url: String | nil,
        redirect_url: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.forms.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::Form
    end

    assert_pattern do
      row => {
        id: String,
        collection: MoonbaseSDK::Collection,
        links: MoonbaseSDK::Form::Links,
        name: String,
        type: Symbol,
        created_at: Time | nil,
        pages_enabled: MoonbaseSDK::Internal::Type::Boolean | nil,
        pages_url: String | nil,
        redirect_url: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
