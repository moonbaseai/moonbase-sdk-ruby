# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::InboxMessagesTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.inbox_messages.create(
        message: {
          body: {},
          inbox_id: "1CLJt2v6KXDyzDuM57pQqo",
          subject: "Test Subject",
          to: [{email: "bob@example.com"}, {email: "jack@example.com"}],
          type: :email_message
        }
      )

    assert_pattern do
      response => Moonbase::Models::InboxMessageCreateResponse
    end

    assert_pattern do
      case response
      in Moonbase::EmailMessage
      in Moonbase::SlackMessage
      end
    end

    assert_pattern do
      case response
      in {
        type: :email_message,
        id: String,
        body: Moonbase::FormattedText,
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        lock_version: Integer,
        spam: Moonbase::Internal::Type::Boolean,
        subject: String,
        trash: Moonbase::Internal::Type::Boolean,
        unread: Moonbase::Internal::Type::Boolean,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddress]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::MessageAttachment]) | nil,
        conversation: Moonbase::InboxConversation | nil,
        summary: String | nil
      }
      in {
        type: :slack_message,
        id: String,
        body: Moonbase::FormattedText,
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        lock_version: Integer,
        spam: Moonbase::Internal::Type::Boolean,
        subject: String,
        trash: Moonbase::Internal::Type::Boolean,
        unread: Moonbase::Internal::Type::Boolean,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::SlackMessageAddress]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::MessageAttachment]) | nil,
        conversation: Moonbase::InboxConversation | nil,
        summary: String | nil
      }
      end
    end
  end

  def test_retrieve
    response = @moonbase.inbox_messages.retrieve("id")

    assert_pattern do
      response => Moonbase::Models::InboxMessageRetrieveResponse
    end

    assert_pattern do
      case response
      in Moonbase::EmailMessage
      in Moonbase::SlackMessage
      end
    end

    assert_pattern do
      case response
      in {
        type: :email_message,
        id: String,
        body: Moonbase::FormattedText,
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        lock_version: Integer,
        spam: Moonbase::Internal::Type::Boolean,
        subject: String,
        trash: Moonbase::Internal::Type::Boolean,
        unread: Moonbase::Internal::Type::Boolean,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddress]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::MessageAttachment]) | nil,
        conversation: Moonbase::InboxConversation | nil,
        summary: String | nil
      }
      in {
        type: :slack_message,
        id: String,
        body: Moonbase::FormattedText,
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        lock_version: Integer,
        spam: Moonbase::Internal::Type::Boolean,
        subject: String,
        trash: Moonbase::Internal::Type::Boolean,
        unread: Moonbase::Internal::Type::Boolean,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::SlackMessageAddress]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::MessageAttachment]) | nil,
        conversation: Moonbase::InboxConversation | nil,
        summary: String | nil
      }
      end
    end
  end

  def test_update_required_params
    response = @moonbase.inbox_messages.update("id", message: {lock_version: 0, type: :email_message})

    assert_pattern do
      response => Moonbase::Models::InboxMessageUpdateResponse
    end

    assert_pattern do
      case response
      in Moonbase::EmailMessage
      in Moonbase::SlackMessage
      end
    end

    assert_pattern do
      case response
      in {
        type: :email_message,
        id: String,
        body: Moonbase::FormattedText,
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        lock_version: Integer,
        spam: Moonbase::Internal::Type::Boolean,
        subject: String,
        trash: Moonbase::Internal::Type::Boolean,
        unread: Moonbase::Internal::Type::Boolean,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddress]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::MessageAttachment]) | nil,
        conversation: Moonbase::InboxConversation | nil,
        summary: String | nil
      }
      in {
        type: :slack_message,
        id: String,
        body: Moonbase::FormattedText,
        bulk: Moonbase::Internal::Type::Boolean,
        created_at: Time,
        draft: Moonbase::Internal::Type::Boolean,
        lock_version: Integer,
        spam: Moonbase::Internal::Type::Boolean,
        subject: String,
        trash: Moonbase::Internal::Type::Boolean,
        unread: Moonbase::Internal::Type::Boolean,
        addresses: ^(Moonbase::Internal::Type::ArrayOf[union: Moonbase::SlackMessageAddress]) | nil,
        attachments: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::MessageAttachment]) | nil,
        conversation: Moonbase::InboxConversation | nil,
        summary: String | nil
      }
      end
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
      row => Moonbase::MessagePointer
    end

    assert_pattern do
      row => {
        id: String,
        type: Symbol
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
