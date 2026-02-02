# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::InboxMessagesTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response = @moonbase.inbox_messages.create(body: {}, inbox_id: "1CLJt2v6KXDyzDuM57pQqo")

    assert_pattern do
      response => Moonbase::EmailMessage
    end

    assert_pattern do
      response => {
        id: String,
        body: Moonbase::FormattedText,
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        lock_version: Integer,
        spam: Moonbase::Internal::Type::Boolean,
        subject: String,
        trash: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        unread: Moonbase::Internal::Type::Boolean,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Address]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage::Attachment]) | nil,
        conversation: Moonbase::InboxConversation | nil,
        summary: String | nil
      }
    end
  end

  def test_retrieve
    response = @moonbase.inbox_messages.retrieve("id")

    assert_pattern do
      response => Moonbase::EmailMessage
    end

    assert_pattern do
      response => {
        id: String,
        body: Moonbase::FormattedText,
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        lock_version: Integer,
        spam: Moonbase::Internal::Type::Boolean,
        subject: String,
        trash: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        unread: Moonbase::Internal::Type::Boolean,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Address]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage::Attachment]) | nil,
        conversation: Moonbase::InboxConversation | nil,
        summary: String | nil
      }
    end
  end

  def test_update_required_params
    response = @moonbase.inbox_messages.update("id", lock_version: 0)

    assert_pattern do
      response => Moonbase::EmailMessage
    end

    assert_pattern do
      response => {
        id: String,
        body: Moonbase::FormattedText,
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        lock_version: Integer,
        spam: Moonbase::Internal::Type::Boolean,
        subject: String,
        trash: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        unread: Moonbase::Internal::Type::Boolean,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Address]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage::Attachment]) | nil,
        conversation: Moonbase::InboxConversation | nil,
        summary: String | nil
      }
    end
  end

  def test_list
    response = @moonbase.inbox_messages.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::EmailMessage
    end

    assert_pattern do
      row => {
        id: String,
        body: Moonbase::FormattedText,
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        lock_version: Integer,
        spam: Moonbase::Internal::Type::Boolean,
        subject: String,
        trash: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        unread: Moonbase::Internal::Type::Boolean,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Address]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage::Attachment]) | nil,
        conversation: Moonbase::InboxConversation | nil,
        summary: String | nil
      }
    end
  end

  def test_delete
    response = @moonbase.inbox_messages.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
