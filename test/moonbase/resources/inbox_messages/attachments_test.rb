# frozen_string_literal: true

require_relative "../../test_helper"

class Moonbase::Test::Resources::InboxMessages::AttachmentsTest < Moonbase::Test::ResourceTest
  def test_create
    response = @moonbase.inbox_messages.attachments.create("inbox_message_id")

    assert_pattern do
      response => Moonbase::MessageAttachment
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        download_url: String,
        filename: String,
        size: Integer,
        type: Symbol
      }
    end
  end

  def test_delete_required_params
    response = @moonbase.inbox_messages.attachments.delete("id", inbox_message_id: "inbox_message_id")

    assert_pattern do
      response => nil
    end
  end
end
