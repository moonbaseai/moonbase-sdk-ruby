# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::InboxConversationsTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.inbox_conversations.retrieve("id")

    assert_pattern do
      response => Moonbase::InboxConversation
    end

    assert_pattern do
      response => {
        id: String,
        links: Moonbase::InboxConversation::Links,
        type: Symbol,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Address]) | nil,
        bulk: Moonbase::Internal::Type::Boolean | nil,
        closed: Moonbase::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        follow_up: Moonbase::Internal::Type::Boolean | nil,
        new_draft_conversation: Moonbase::Internal::Type::Boolean | nil,
        open_: Moonbase::Internal::Type::Boolean | nil,
        spam: Moonbase::Internal::Type::Boolean | nil,
        subject: String | nil,
        tags: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::InboxConversation::Tag]) | nil,
        timestamp: String | nil,
        trash: Moonbase::Internal::Type::Boolean | nil,
        unread: Moonbase::Internal::Type::Boolean | nil,
        unsnooze_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.inbox_conversations.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::InboxConversation
    end

    assert_pattern do
      row => {
        id: String,
        links: Moonbase::InboxConversation::Links,
        type: Symbol,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Address]) | nil,
        bulk: Moonbase::Internal::Type::Boolean | nil,
        closed: Moonbase::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        follow_up: Moonbase::Internal::Type::Boolean | nil,
        new_draft_conversation: Moonbase::Internal::Type::Boolean | nil,
        open_: Moonbase::Internal::Type::Boolean | nil,
        spam: Moonbase::Internal::Type::Boolean | nil,
        subject: String | nil,
        tags: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::InboxConversation::Tag]) | nil,
        timestamp: String | nil,
        trash: Moonbase::Internal::Type::Boolean | nil,
        unread: Moonbase::Internal::Type::Boolean | nil,
        unsnooze_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end
end
