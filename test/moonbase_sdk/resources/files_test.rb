# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::FilesTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.files.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::MoonbaseFile
    end

    assert_pattern do
      response => {
        id: String,
        filename: String,
        links: MoonbaseSDK::MoonbaseFile::Links,
        name: String,
        size: Float,
        type: Symbol,
        created_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.files.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::MoonbaseFile
    end

    assert_pattern do
      row => {
        id: String,
        filename: String,
        links: MoonbaseSDK::MoonbaseFile::Links,
        name: String,
        size: Float,
        type: Symbol,
        created_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end
end
