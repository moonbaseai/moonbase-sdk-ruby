# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::InboxMessagesTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.inbox_messages.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::EmailMessage
    end

    assert_pattern do
      response => {
        id: String,
        links: MoonbaseSDK::EmailMessage::Links,
        rfc822_message_id: String,
        subject: String,
        type: Symbol,
        addresses: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Address]) | nil,
        attachments: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::EmailMessage::Attachment]) | nil,
        body_html: String | nil,
        body_plain: String | nil,
        bulk: MoonbaseSDK::Internal::Type::Boolean | nil,
        conversation: MoonbaseSDK::InboxConversation | nil,
        created_at: Time | nil,
        draft: MoonbaseSDK::Internal::Type::Boolean | nil,
        in_reply_to_rfc822_message_id: String | nil,
        spam: MoonbaseSDK::Internal::Type::Boolean | nil,
        summary: String | nil,
        trash: MoonbaseSDK::Internal::Type::Boolean | nil,
        unread: MoonbaseSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list
    response = @moonbase.inbox_messages.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::EmailMessage
    end

    assert_pattern do
      row => {
        id: String,
        links: MoonbaseSDK::EmailMessage::Links,
        rfc822_message_id: String,
        subject: String,
        type: Symbol,
        addresses: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Address]) | nil,
        attachments: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::EmailMessage::Attachment]) | nil,
        body_html: String | nil,
        body_plain: String | nil,
        bulk: MoonbaseSDK::Internal::Type::Boolean | nil,
        conversation: MoonbaseSDK::InboxConversation | nil,
        created_at: Time | nil,
        draft: MoonbaseSDK::Internal::Type::Boolean | nil,
        in_reply_to_rfc822_message_id: String | nil,
        spam: MoonbaseSDK::Internal::Type::Boolean | nil,
        summary: String | nil,
        trash: MoonbaseSDK::Internal::Type::Boolean | nil,
        unread: MoonbaseSDK::Internal::Type::Boolean | nil
      }
    end
  end
end
