# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::InboxConversationsTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.inbox_conversations.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::InboxConversation
    end

    assert_pattern do
      response => {
        id: String,
        links: MoonbaseSDK::InboxConversation::Links,
        type: Symbol,
        addresses: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Address]) | nil,
        bulk: MoonbaseSDK::Internal::Type::Boolean | nil,
        closed: MoonbaseSDK::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        follow_up: MoonbaseSDK::Internal::Type::Boolean | nil,
        new_draft_conversation: MoonbaseSDK::Internal::Type::Boolean | nil,
        open_: MoonbaseSDK::Internal::Type::Boolean | nil,
        spam: MoonbaseSDK::Internal::Type::Boolean | nil,
        subject: String | nil,
        tags: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::InboxConversation::Tag]) | nil,
        timestamp: String | nil,
        trash: MoonbaseSDK::Internal::Type::Boolean | nil,
        unread: MoonbaseSDK::Internal::Type::Boolean | nil,
        unsnooze_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.inbox_conversations.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::InboxConversation
    end

    assert_pattern do
      row => {
        id: String,
        links: MoonbaseSDK::InboxConversation::Links,
        type: Symbol,
        addresses: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Address]) | nil,
        bulk: MoonbaseSDK::Internal::Type::Boolean | nil,
        closed: MoonbaseSDK::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        follow_up: MoonbaseSDK::Internal::Type::Boolean | nil,
        new_draft_conversation: MoonbaseSDK::Internal::Type::Boolean | nil,
        open_: MoonbaseSDK::Internal::Type::Boolean | nil,
        spam: MoonbaseSDK::Internal::Type::Boolean | nil,
        subject: String | nil,
        tags: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::InboxConversation::Tag]) | nil,
        timestamp: String | nil,
        trash: MoonbaseSDK::Internal::Type::Boolean | nil,
        unread: MoonbaseSDK::Internal::Type::Boolean | nil,
        unsnooze_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end
end
