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
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        follow_up: Moonbase::Internal::Type::Boolean,
        last_message_at: Time,
        spam: Moonbase::Internal::Type::Boolean,
        state: Moonbase::InboxConversation::State,
        subject: String,
        tags: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::InboxConversation::Tag]),
        trash: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        unread: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        inbox: Moonbase::Inbox | nil,
        messages: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage]) | nil,
        unsnooze_at: Time | nil
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
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        follow_up: Moonbase::Internal::Type::Boolean,
        last_message_at: Time,
        spam: Moonbase::Internal::Type::Boolean,
        state: Moonbase::InboxConversation::State,
        subject: String,
        tags: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::InboxConversation::Tag]),
        trash: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        unread: Moonbase::Internal::Type::Boolean,
        updated_at: Time,
        inbox: Moonbase::Inbox | nil,
        messages: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage]) | nil,
        unsnooze_at: Time | nil
      }
    end
  end
end
