# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::NotesTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response = @moonbase.notes.create(body: {})

    assert_pattern do
      response => Moonbase::Note
    end

    assert_pattern do
      response => {
        id: String,
        body: Moonbase::FormattedText,
        created_at: Time,
        lock_version: Integer,
        type: Symbol,
        updated_at: Time,
        creator: Moonbase::ItemPointer | nil,
        summary: String | nil,
        title: String | nil
      }
    end
  end

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
        lock_version: Integer,
        type: Symbol,
        updated_at: Time,
        creator: Moonbase::ItemPointer | nil,
        summary: String | nil,
        title: String | nil
      }
    end
  end

  def test_update_required_params
    response = @moonbase.notes.update("id", body: {}, lock_version: 0)

    assert_pattern do
      response => Moonbase::Note
    end

    assert_pattern do
      response => {
        id: String,
        body: Moonbase::FormattedText,
        created_at: Time,
        lock_version: Integer,
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
        lock_version: Integer,
        type: Symbol,
        updated_at: Time,
        creator: Moonbase::ItemPointer | nil,
        summary: String | nil,
        title: String | nil
      }
    end
  end
end
