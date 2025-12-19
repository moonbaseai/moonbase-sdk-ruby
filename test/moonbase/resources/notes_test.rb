# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::NotesTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.notes.retrieve("id")

    assert_pattern do
      response => Moonbase::Note
    end

    assert_pattern do
      response => {
        id: String,
        body: Moonbase::FormattedText,
        created_at: Time,
        type: Symbol,
        updated_at: Time,
        creator: Moonbase::ItemPointer | nil,
        summary: String | nil,
        title: String | nil
      }
    end
  end

  def test_list
    response = @moonbase.notes.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Note
    end

    assert_pattern do
      row => {
        id: String,
        body: Moonbase::FormattedText,
        created_at: Time,
        type: Symbol,
        updated_at: Time,
        creator: Moonbase::ItemPointer | nil,
        summary: String | nil,
        title: String | nil
      }
    end
  end
end
