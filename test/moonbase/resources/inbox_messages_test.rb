# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::InboxMessagesTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.inbox_messages.retrieve("id")

    assert_pattern do
      response => Moonbase::EmailMessage
    end

    assert_pattern do
      response => {
        id: String,
        links: Moonbase::EmailMessage::Links,
        rfc822_message_id: String,
        subject: String,
        type: Symbol,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Address]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage::Attachment]) | nil,
        body_html: String | nil,
        body_plain: String | nil,
        bulk: Moonbase::Internal::Type::Boolean | nil,
        conversation: Moonbase::InboxConversation | nil,
        created_at: Time | nil,
        draft: Moonbase::Internal::Type::Boolean | nil,
        in_reply_to_rfc822_message_id: String | nil,
        spam: Moonbase::Internal::Type::Boolean | nil,
        summary: String | nil,
        trash: Moonbase::Internal::Type::Boolean | nil,
        unread: Moonbase::Internal::Type::Boolean | nil
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
        links: Moonbase::EmailMessage::Links,
        rfc822_message_id: String,
        subject: String,
        type: Symbol,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Address]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessage::Attachment]) | nil,
        body_html: String | nil,
        body_plain: String | nil,
        bulk: Moonbase::Internal::Type::Boolean | nil,
        conversation: Moonbase::InboxConversation | nil,
        created_at: Time | nil,
        draft: Moonbase::Internal::Type::Boolean | nil,
        in_reply_to_rfc822_message_id: String | nil,
        spam: Moonbase::Internal::Type::Boolean | nil,
        summary: String | nil,
        trash: Moonbase::Internal::Type::Boolean | nil,
        unread: Moonbase::Internal::Type::Boolean | nil
      }
    end
  end
end
