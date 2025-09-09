# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::FormsTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.forms.retrieve("id")

    assert_pattern do
      response => Moonbase::Form
    end

    assert_pattern do
      response => {
        id: String,
        collection: Moonbase::Collection,
        created_at: Time,
        name: String,
        pages_enabled: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        updated_at: Time,
        pages_url: String | nil,
        redirect_url: String | nil
      }
    end
  end

  def test_list
    response = @moonbase.forms.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Form
    end

    assert_pattern do
      row => {
        id: String,
        collection: Moonbase::Collection,
        created_at: Time,
        name: String,
        pages_enabled: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        updated_at: Time,
        pages_url: String | nil,
        redirect_url: String | nil
      }
    end
  end
end
