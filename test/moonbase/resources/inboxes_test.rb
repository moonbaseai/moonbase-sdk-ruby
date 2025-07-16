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
        links: Moonbase::Inbox::Links,
        name: String,
        type: Symbol,
        created_at: Time | nil,
        tagset: Moonbase::Tagset | nil,
        updated_at: Time | nil
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
        links: Moonbase::Inbox::Links,
        name: String,
        type: Symbol,
        created_at: Time | nil,
        tagset: Moonbase::Tagset | nil,
        updated_at: Time | nil
      }
    end
  end
end
