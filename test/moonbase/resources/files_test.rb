# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::FilesTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.files.retrieve("id")

    assert_pattern do
      response => Moonbase::MoonbaseFile
    end

    assert_pattern do
      response => {
        id: String,
        filename: String,
        links: Moonbase::MoonbaseFile::Links,
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
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::MoonbaseFile
    end

    assert_pattern do
      row => {
        id: String,
        filename: String,
        links: Moonbase::MoonbaseFile::Links,
        name: String,
        size: Float,
        type: Symbol,
        created_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end
end
