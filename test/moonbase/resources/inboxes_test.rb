# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::InboxesTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.inboxes.retrieve("id")

    assert_pattern do
      response => Moonbase::Inbox
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        type: Symbol,
        updated_at: Time,
        can_read: Moonbase::Internal::Type::Boolean | nil,
        tagsets: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Tagset]) | nil
      }
    end
  end

  def test_list
    response = @moonbase.inboxes.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Inbox
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        name: String,
        type: Symbol,
        updated_at: Time,
        can_read: Moonbase::Internal::Type::Boolean | nil,
        tagsets: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Tagset]) | nil
      }
    end
  end
end
