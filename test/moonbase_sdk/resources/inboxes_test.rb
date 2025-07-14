# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::InboxesTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.inboxes.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::Inbox
    end

    assert_pattern do
      response => {
        id: String,
        links: MoonbaseSDK::Inbox::Links,
        name: String,
        type: Symbol,
        created_at: Time | nil,
        tagset: MoonbaseSDK::Tagset | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.inboxes.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::Inbox
    end

    assert_pattern do
      row => {
        id: String,
        links: MoonbaseSDK::Inbox::Links,
        name: String,
        type: Symbol,
        created_at: Time | nil,
        tagset: MoonbaseSDK::Tagset | nil,
        updated_at: Time | nil
      }
    end
  end
end
