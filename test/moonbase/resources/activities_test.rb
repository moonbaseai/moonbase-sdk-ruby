# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ActivitiesTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.activities.retrieve("id")

    assert_pattern do
      response => Moonbase::Activity
    end

    assert_pattern do
      case response
      in Moonbase::ActivityCallOccurred
      in Moonbase::ActivityFormSubmitted
      in Moonbase::ActivityInboxMessageSent
      in Moonbase::ActivityItemCreated
      in Moonbase::ActivityItemMentioned
      in Moonbase::ActivityItemMerged
      in Moonbase::ActivityMeetingHeld
      in Moonbase::ActivityMeetingScheduled
      in Moonbase::ActivityNoteCreated
      in Moonbase::ActivityProgramMessageBounced
      in Moonbase::ActivityProgramMessageClicked
      in Moonbase::ActivityProgramMessageComplained
      in Moonbase::ActivityProgramMessageFailed
      in Moonbase::ActivityProgramMessageOpened
      in Moonbase::ActivityProgramMessageSent
      in Moonbase::ActivityProgramMessageShielded
      in Moonbase::ActivityProgramMessageUnsubscribed
      end
    end

    assert_pattern do
      case response
      in {type: :"activity/call_occurred", id: String, call: Moonbase::Pointer | nil, occurred_at: Time}
      in {type: :"activity/form_submitted", id: String, item: Moonbase::ItemPointer | nil, occurred_at: Time}
      in {type: :"activity/inbox_message_sent", id: String, message: Moonbase::Pointer | nil, occurred_at: Time}
      in {type: :"activity/item_created", id: String, item: Moonbase::ItemPointer | nil, occurred_at: Time}
      in {
        type: :"activity/item_mentioned",
        id: String,
        author: Moonbase::ItemPointer | nil,
        item: Moonbase::ItemPointer | nil,
        note: Moonbase::Pointer | nil,
        occurred_at: Time
      }
      in {
        type: :"activity/item_merged",
        id: String,
        destination: Moonbase::ItemPointer | nil,
        initiator: Moonbase::ItemPointer | nil,
        occurred_at: Time,
        source: Moonbase::ItemPointer | nil
      }
      in {type: :"activity/meeting_held", id: String, meeting: Moonbase::Pointer | nil, occurred_at: Time}
      in {type: :"activity/meeting_scheduled", id: String, meeting: Moonbase::Pointer | nil, occurred_at: Time}
      in {
        type: :"activity/note_created",
        id: String,
        note: Moonbase::Pointer | nil,
        occurred_at: Time,
        related_item: Moonbase::ItemPointer | nil,
        related_meeting: Moonbase::Pointer | nil
      }
      in {
        type: :"activity/program_message_bounced",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        bounce_type: String | nil,
        bounced_recipient_emails: ^(Moonbase::Internal::Type::ArrayOf[String]) | nil
      }
      in {
        type: :"activity/program_message_clicked",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        link_text: String | nil,
        link_url_unsafe: String | nil
      }
      in {
        type: :"activity/program_message_complained",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil
      }
      in {
        type: :"activity/program_message_failed",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        reason_code: String | nil
      }
      in {
        type: :"activity/program_message_opened",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil
      }
      in {
        type: :"activity/program_message_sent",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        recipient_emails: ^(Moonbase::Internal::Type::ArrayOf[String]) | nil
      }
      in {
        type: :"activity/program_message_shielded",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        reason_code: String | nil
      }
      in {
        type: :"activity/program_message_unsubscribed",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        email: String | nil
      }
      end
    end
  end

  def test_list
    response = @moonbase.activities.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Activity
    end

    assert_pattern do
      case row
      in Moonbase::ActivityCallOccurred
      in Moonbase::ActivityFormSubmitted
      in Moonbase::ActivityInboxMessageSent
      in Moonbase::ActivityItemCreated
      in Moonbase::ActivityItemMentioned
      in Moonbase::ActivityItemMerged
      in Moonbase::ActivityMeetingHeld
      in Moonbase::ActivityMeetingScheduled
      in Moonbase::ActivityNoteCreated
      in Moonbase::ActivityProgramMessageBounced
      in Moonbase::ActivityProgramMessageClicked
      in Moonbase::ActivityProgramMessageComplained
      in Moonbase::ActivityProgramMessageFailed
      in Moonbase::ActivityProgramMessageOpened
      in Moonbase::ActivityProgramMessageSent
      in Moonbase::ActivityProgramMessageShielded
      in Moonbase::ActivityProgramMessageUnsubscribed
      end
    end

    assert_pattern do
      case row
      in {type: :"activity/call_occurred", id: String, call: Moonbase::Pointer | nil, occurred_at: Time}
      in {type: :"activity/form_submitted", id: String, item: Moonbase::ItemPointer | nil, occurred_at: Time}
      in {type: :"activity/inbox_message_sent", id: String, message: Moonbase::Pointer | nil, occurred_at: Time}
      in {type: :"activity/item_created", id: String, item: Moonbase::ItemPointer | nil, occurred_at: Time}
      in {
        type: :"activity/item_mentioned",
        id: String,
        author: Moonbase::ItemPointer | nil,
        item: Moonbase::ItemPointer | nil,
        note: Moonbase::Pointer | nil,
        occurred_at: Time
      }
      in {
        type: :"activity/item_merged",
        id: String,
        destination: Moonbase::ItemPointer | nil,
        initiator: Moonbase::ItemPointer | nil,
        occurred_at: Time,
        source: Moonbase::ItemPointer | nil
      }
      in {type: :"activity/meeting_held", id: String, meeting: Moonbase::Pointer | nil, occurred_at: Time}
      in {type: :"activity/meeting_scheduled", id: String, meeting: Moonbase::Pointer | nil, occurred_at: Time}
      in {
        type: :"activity/note_created",
        id: String,
        note: Moonbase::Pointer | nil,
        occurred_at: Time,
        related_item: Moonbase::ItemPointer | nil,
        related_meeting: Moonbase::Pointer | nil
      }
      in {
        type: :"activity/program_message_bounced",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        bounce_type: String | nil,
        bounced_recipient_emails: ^(Moonbase::Internal::Type::ArrayOf[String]) | nil
      }
      in {
        type: :"activity/program_message_clicked",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        link_text: String | nil,
        link_url_unsafe: String | nil
      }
      in {
        type: :"activity/program_message_complained",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil
      }
      in {
        type: :"activity/program_message_failed",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        reason_code: String | nil
      }
      in {
        type: :"activity/program_message_opened",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil
      }
      in {
        type: :"activity/program_message_sent",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        recipient_emails: ^(Moonbase::Internal::Type::ArrayOf[String]) | nil
      }
      in {
        type: :"activity/program_message_shielded",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        reason_code: String | nil
      }
      in {
        type: :"activity/program_message_unsubscribed",
        id: String,
        occurred_at: Time,
        program_message: Moonbase::Pointer | nil,
        recipient: Moonbase::ItemPointer | nil,
        email: String | nil
      }
      end
    end
  end
end
