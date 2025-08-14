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
      in Moonbase::Activity::ActivityCallOccurred
      in Moonbase::Activity::ActivityFormSubmitted
      in Moonbase::Activity::ActivityInboxMessageSent
      in Moonbase::Activity::ActivityItemCreated
      in Moonbase::Activity::ActivityItemMentioned
      in Moonbase::Activity::ActivityItemMerged
      in Moonbase::Activity::ActivityMeetingHeld
      in Moonbase::Activity::ActivityMeetingScheduled
      in Moonbase::Activity::ActivityNoteCreated
      in Moonbase::Activity::ActivityProgramMessageBounced
      in Moonbase::Activity::ActivityProgramMessageClicked
      in Moonbase::Activity::ActivityProgramMessageComplained
      in Moonbase::Activity::ActivityProgramMessageFailed
      in Moonbase::Activity::ActivityProgramMessageOpened
      in Moonbase::Activity::ActivityProgramMessageSent
      in Moonbase::Activity::ActivityProgramMessageShielded
      in Moonbase::Activity::ActivityProgramMessageUnsubscribed
      end
    end

    assert_pattern do
      case response
      in {
        type: :"activity/call_occurred",
        id: String,
        links: Moonbase::Activity::ActivityCallOccurred::Links,
        occurred_at: Time,
        call: Moonbase::Activity::ActivityCallOccurred::Call | nil
      }
      in {
        type: :"activity/form_submitted",
        id: String,
        links: Moonbase::Activity::ActivityFormSubmitted::Links,
        occurred_at: Time,
        collection: Moonbase::Activity::ActivityFormSubmitted::Collection | nil,
        related_item: Moonbase::Activity::ActivityFormSubmitted::RelatedItem | nil
      }
      in {
        type: :"activity/inbox_message_sent",
        id: String,
        links: Moonbase::Activity::ActivityInboxMessageSent::Links,
        occurred_at: Time,
        message: Moonbase::Activity::ActivityInboxMessageSent::Message | nil
      }
      in {
        type: :"activity/item_created",
        id: String,
        links: Moonbase::Activity::ActivityItemCreated::Links,
        occurred_at: Time,
        collection: Moonbase::Activity::ActivityItemCreated::Collection | nil,
        created_item: Moonbase::Activity::ActivityItemCreated::CreatedItem | nil
      }
      in {
        type: :"activity/item_mentioned",
        id: String,
        links: Moonbase::Activity::ActivityItemMentioned::Links,
        occurred_at: Time,
        author: Moonbase::Activity::ActivityItemMentioned::Author | nil,
        mentioned_item: Moonbase::Activity::ActivityItemMentioned::MentionedItem | nil,
        note: Moonbase::Activity::ActivityItemMentioned::Note | nil
      }
      in {
        type: :"activity/item_merged",
        id: String,
        links: Moonbase::Activity::ActivityItemMerged::Links,
        occurred_at: Time,
        destination: Moonbase::Activity::ActivityItemMerged::Destination | nil,
        initiator: Moonbase::Activity::ActivityItemMerged::Initiator | nil,
        source: Moonbase::Activity::ActivityItemMerged::Source | nil
      }
      in {
        type: :"activity/meeting_held",
        id: String,
        links: Moonbase::Activity::ActivityMeetingHeld::Links,
        occurred_at: Time,
        meeting: Moonbase::Activity::ActivityMeetingHeld::Meeting | nil
      }
      in {
        type: :"activity/meeting_scheduled",
        id: String,
        links: Moonbase::Activity::ActivityMeetingScheduled::Links,
        occurred_at: Time,
        meeting: Moonbase::Activity::ActivityMeetingScheduled::Meeting | nil
      }
      in {
        type: :"activity/note_created",
        id: String,
        links: Moonbase::Activity::ActivityNoteCreated::Links,
        occurred_at: Time,
        note: Moonbase::Activity::ActivityNoteCreated::Note | nil,
        related_item: Moonbase::Activity::ActivityNoteCreated::RelatedItem | nil,
        related_meeting: Moonbase::Activity::ActivityNoteCreated::RelatedMeeting | nil
      }
      in {
        type: :"activity/program_message_bounced",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageBounced::Links,
        occurred_at: Time,
        bounce_type: String | nil,
        bounced_recipient_emails: ^(Moonbase::Internal::Type::ArrayOf[String]) | nil,
        program_message: Moonbase::Activity::ActivityProgramMessageBounced::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageBounced::Recipient | nil
      }
      in {
        type: :"activity/program_message_clicked",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageClicked::Links,
        occurred_at: Time,
        link_text: String | nil,
        link_url_unsafe: String | nil,
        program_message: Moonbase::Activity::ActivityProgramMessageClicked::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageClicked::Recipient | nil
      }
      in {
        type: :"activity/program_message_complained",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageComplained::Links,
        occurred_at: Time,
        program_message: Moonbase::Activity::ActivityProgramMessageComplained::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageComplained::Recipient | nil
      }
      in {
        type: :"activity/program_message_failed",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageFailed::Links,
        occurred_at: Time,
        program_message: Moonbase::Activity::ActivityProgramMessageFailed::ProgramMessage | nil,
        reason_code: String | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageFailed::Recipient | nil
      }
      in {
        type: :"activity/program_message_opened",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageOpened::Links,
        occurred_at: Time,
        program_message: Moonbase::Activity::ActivityProgramMessageOpened::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageOpened::Recipient | nil
      }
      in {
        type: :"activity/program_message_sent",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageSent::Links,
        occurred_at: Time,
        program_message: Moonbase::Activity::ActivityProgramMessageSent::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageSent::Recipient | nil,
        recipient_emails: ^(Moonbase::Internal::Type::ArrayOf[String]) | nil
      }
      in {
        type: :"activity/program_message_shielded",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageShielded::Links,
        occurred_at: Time,
        program_message: Moonbase::Activity::ActivityProgramMessageShielded::ProgramMessage | nil,
        reason_code: String | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageShielded::Recipient | nil
      }
      in {
        type: :"activity/program_message_unsubscribed",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageUnsubscribed::Links,
        occurred_at: Time,
        email: String | nil,
        program_message: Moonbase::Activity::ActivityProgramMessageUnsubscribed::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageUnsubscribed::Recipient | nil
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
      in Moonbase::Activity::ActivityCallOccurred
      in Moonbase::Activity::ActivityFormSubmitted
      in Moonbase::Activity::ActivityInboxMessageSent
      in Moonbase::Activity::ActivityItemCreated
      in Moonbase::Activity::ActivityItemMentioned
      in Moonbase::Activity::ActivityItemMerged
      in Moonbase::Activity::ActivityMeetingHeld
      in Moonbase::Activity::ActivityMeetingScheduled
      in Moonbase::Activity::ActivityNoteCreated
      in Moonbase::Activity::ActivityProgramMessageBounced
      in Moonbase::Activity::ActivityProgramMessageClicked
      in Moonbase::Activity::ActivityProgramMessageComplained
      in Moonbase::Activity::ActivityProgramMessageFailed
      in Moonbase::Activity::ActivityProgramMessageOpened
      in Moonbase::Activity::ActivityProgramMessageSent
      in Moonbase::Activity::ActivityProgramMessageShielded
      in Moonbase::Activity::ActivityProgramMessageUnsubscribed
      end
    end

    assert_pattern do
      case row
      in {
        type: :"activity/call_occurred",
        id: String,
        links: Moonbase::Activity::ActivityCallOccurred::Links,
        occurred_at: Time,
        call: Moonbase::Activity::ActivityCallOccurred::Call | nil
      }
      in {
        type: :"activity/form_submitted",
        id: String,
        links: Moonbase::Activity::ActivityFormSubmitted::Links,
        occurred_at: Time,
        collection: Moonbase::Activity::ActivityFormSubmitted::Collection | nil,
        related_item: Moonbase::Activity::ActivityFormSubmitted::RelatedItem | nil
      }
      in {
        type: :"activity/inbox_message_sent",
        id: String,
        links: Moonbase::Activity::ActivityInboxMessageSent::Links,
        occurred_at: Time,
        message: Moonbase::Activity::ActivityInboxMessageSent::Message | nil
      }
      in {
        type: :"activity/item_created",
        id: String,
        links: Moonbase::Activity::ActivityItemCreated::Links,
        occurred_at: Time,
        collection: Moonbase::Activity::ActivityItemCreated::Collection | nil,
        created_item: Moonbase::Activity::ActivityItemCreated::CreatedItem | nil
      }
      in {
        type: :"activity/item_mentioned",
        id: String,
        links: Moonbase::Activity::ActivityItemMentioned::Links,
        occurred_at: Time,
        author: Moonbase::Activity::ActivityItemMentioned::Author | nil,
        mentioned_item: Moonbase::Activity::ActivityItemMentioned::MentionedItem | nil,
        note: Moonbase::Activity::ActivityItemMentioned::Note | nil
      }
      in {
        type: :"activity/item_merged",
        id: String,
        links: Moonbase::Activity::ActivityItemMerged::Links,
        occurred_at: Time,
        destination: Moonbase::Activity::ActivityItemMerged::Destination | nil,
        initiator: Moonbase::Activity::ActivityItemMerged::Initiator | nil,
        source: Moonbase::Activity::ActivityItemMerged::Source | nil
      }
      in {
        type: :"activity/meeting_held",
        id: String,
        links: Moonbase::Activity::ActivityMeetingHeld::Links,
        occurred_at: Time,
        meeting: Moonbase::Activity::ActivityMeetingHeld::Meeting | nil
      }
      in {
        type: :"activity/meeting_scheduled",
        id: String,
        links: Moonbase::Activity::ActivityMeetingScheduled::Links,
        occurred_at: Time,
        meeting: Moonbase::Activity::ActivityMeetingScheduled::Meeting | nil
      }
      in {
        type: :"activity/note_created",
        id: String,
        links: Moonbase::Activity::ActivityNoteCreated::Links,
        occurred_at: Time,
        note: Moonbase::Activity::ActivityNoteCreated::Note | nil,
        related_item: Moonbase::Activity::ActivityNoteCreated::RelatedItem | nil,
        related_meeting: Moonbase::Activity::ActivityNoteCreated::RelatedMeeting | nil
      }
      in {
        type: :"activity/program_message_bounced",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageBounced::Links,
        occurred_at: Time,
        bounce_type: String | nil,
        bounced_recipient_emails: ^(Moonbase::Internal::Type::ArrayOf[String]) | nil,
        program_message: Moonbase::Activity::ActivityProgramMessageBounced::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageBounced::Recipient | nil
      }
      in {
        type: :"activity/program_message_clicked",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageClicked::Links,
        occurred_at: Time,
        link_text: String | nil,
        link_url_unsafe: String | nil,
        program_message: Moonbase::Activity::ActivityProgramMessageClicked::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageClicked::Recipient | nil
      }
      in {
        type: :"activity/program_message_complained",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageComplained::Links,
        occurred_at: Time,
        program_message: Moonbase::Activity::ActivityProgramMessageComplained::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageComplained::Recipient | nil
      }
      in {
        type: :"activity/program_message_failed",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageFailed::Links,
        occurred_at: Time,
        program_message: Moonbase::Activity::ActivityProgramMessageFailed::ProgramMessage | nil,
        reason_code: String | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageFailed::Recipient | nil
      }
      in {
        type: :"activity/program_message_opened",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageOpened::Links,
        occurred_at: Time,
        program_message: Moonbase::Activity::ActivityProgramMessageOpened::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageOpened::Recipient | nil
      }
      in {
        type: :"activity/program_message_sent",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageSent::Links,
        occurred_at: Time,
        program_message: Moonbase::Activity::ActivityProgramMessageSent::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageSent::Recipient | nil,
        recipient_emails: ^(Moonbase::Internal::Type::ArrayOf[String]) | nil
      }
      in {
        type: :"activity/program_message_shielded",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageShielded::Links,
        occurred_at: Time,
        program_message: Moonbase::Activity::ActivityProgramMessageShielded::ProgramMessage | nil,
        reason_code: String | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageShielded::Recipient | nil
      }
      in {
        type: :"activity/program_message_unsubscribed",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageUnsubscribed::Links,
        occurred_at: Time,
        email: String | nil,
        program_message: Moonbase::Activity::ActivityProgramMessageUnsubscribed::ProgramMessage | nil,
        recipient: Moonbase::Activity::ActivityProgramMessageUnsubscribed::Recipient | nil
      }
      end
    end
  end
end
