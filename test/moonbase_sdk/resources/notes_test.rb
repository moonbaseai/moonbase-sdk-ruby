# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::NotesTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.notes.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::Note
    end

    assert_pattern do
      response => {
        id: String,
        links: MoonbaseSDK::Note::Links,
        type: Symbol,
        body: String | nil,
        created_at: Time | nil,
        summary: String | nil,
        title: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.notes.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::Note
    end

    assert_pattern do
      row => {
        id: String,
        links: MoonbaseSDK::Note::Links,
        type: Symbol,
        body: String | nil,
        created_at: Time | nil,
        summary: String | nil,
        title: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
