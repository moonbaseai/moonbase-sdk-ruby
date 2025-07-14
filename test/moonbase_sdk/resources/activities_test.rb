# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::ActivitiesTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.activities.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::Activity
    end

    assert_pattern do
      case response
      in MoonbaseSDK::Activity::ActivityCallOccurred
      in MoonbaseSDK::Activity::ActivityFormSubmitted
      in MoonbaseSDK::Activity::ActivityInboxMessageSent
      in MoonbaseSDK::Activity::ActivityItemCreated
      in MoonbaseSDK::Activity::ActivityItemMentioned
      in MoonbaseSDK::Activity::ActivityMeetingHeld
      in MoonbaseSDK::Activity::ActivityMeetingScheduled
      in MoonbaseSDK::Activity::ActivityNoteCreated
      in MoonbaseSDK::Activity::ActivityProgramMessageBounced
      in MoonbaseSDK::Activity::ActivityProgramMessageClicked
      in MoonbaseSDK::Activity::ActivityProgramMessageComplained
      in MoonbaseSDK::Activity::ActivityProgramMessageFailed
      in MoonbaseSDK::Activity::ActivityProgramMessageOpened
      in MoonbaseSDK::Activity::ActivityProgramMessageSent
      in MoonbaseSDK::Activity::ActivityProgramMessageShielded
      in MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed
      end
    end

    assert_pattern do
      case response
      in {
        type: :"activity/call_occurred",
        id: String,
        links: MoonbaseSDK::Activity::ActivityCallOccurred::Links,
        occurred_at: Time,
        call: MoonbaseSDK::Call | nil
      }
      in {
        type: :"activity/form_submitted",
        id: String,
        links: MoonbaseSDK::Activity::ActivityFormSubmitted::Links,
        occurred_at: Time,
        collection: MoonbaseSDK::Collection | nil,
        item: MoonbaseSDK::Item | nil
      }
      in {
        type: :"activity/inbox_message_sent",
        id: String,
        links: MoonbaseSDK::Activity::ActivityInboxMessageSent::Links,
        occurred_at: Time,
        message: MoonbaseSDK::EmailMessage | nil,
        recipients: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Address]) | nil,
        sender: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/item_created",
        id: String,
        links: MoonbaseSDK::Activity::ActivityItemCreated::Links,
        occurred_at: Time,
        collection: MoonbaseSDK::Collection | nil,
        item: MoonbaseSDK::Item | nil
      }
      in {
        type: :"activity/item_mentioned",
        id: String,
        links: MoonbaseSDK::Activity::ActivityItemMentioned::Links,
        occurred_at: Time,
        collection: MoonbaseSDK::Collection | nil,
        item: MoonbaseSDK::Item | nil
      }
      in {
        type: :"activity/meeting_held",
        id: String,
        links: MoonbaseSDK::Activity::ActivityMeetingHeld::Links,
        occurred_at: Time,
        attendees: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Attendee]) | nil,
        meeting: MoonbaseSDK::Meeting | nil
      }
      in {
        type: :"activity/meeting_scheduled",
        id: String,
        links: MoonbaseSDK::Activity::ActivityMeetingScheduled::Links,
        occurred_at: Time,
        attendees: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Attendee]) | nil,
        meeting: MoonbaseSDK::Meeting | nil,
        organizer: MoonbaseSDK::Organizer | nil
      }
      in {
        type: :"activity/note_created",
        id: String,
        links: MoonbaseSDK::Activity::ActivityNoteCreated::Links,
        occurred_at: Time,
        note: MoonbaseSDK::Note | nil,
        related_item: MoonbaseSDK::Item | nil,
        related_meeting: MoonbaseSDK::Meeting | nil
      }
      in {
        type: :"activity/program_message_bounced",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageBounced::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_clicked",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageClicked::Links,
        occurred_at: Time,
        link_text: String | nil,
        link_url_unsafe: String | nil,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_complained",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageComplained::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_failed",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageFailed::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_opened",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageOpened::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_sent",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageSent::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_shielded",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageShielded::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_unsubscribed",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      end
    end
  end

  def test_list
    response = @moonbase.activities.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::Activity
    end

    assert_pattern do
      case row
      in MoonbaseSDK::Activity::ActivityCallOccurred
      in MoonbaseSDK::Activity::ActivityFormSubmitted
      in MoonbaseSDK::Activity::ActivityInboxMessageSent
      in MoonbaseSDK::Activity::ActivityItemCreated
      in MoonbaseSDK::Activity::ActivityItemMentioned
      in MoonbaseSDK::Activity::ActivityMeetingHeld
      in MoonbaseSDK::Activity::ActivityMeetingScheduled
      in MoonbaseSDK::Activity::ActivityNoteCreated
      in MoonbaseSDK::Activity::ActivityProgramMessageBounced
      in MoonbaseSDK::Activity::ActivityProgramMessageClicked
      in MoonbaseSDK::Activity::ActivityProgramMessageComplained
      in MoonbaseSDK::Activity::ActivityProgramMessageFailed
      in MoonbaseSDK::Activity::ActivityProgramMessageOpened
      in MoonbaseSDK::Activity::ActivityProgramMessageSent
      in MoonbaseSDK::Activity::ActivityProgramMessageShielded
      in MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed
      end
    end

    assert_pattern do
      case row
      in {
        type: :"activity/call_occurred",
        id: String,
        links: MoonbaseSDK::Activity::ActivityCallOccurred::Links,
        occurred_at: Time,
        call: MoonbaseSDK::Call | nil
      }
      in {
        type: :"activity/form_submitted",
        id: String,
        links: MoonbaseSDK::Activity::ActivityFormSubmitted::Links,
        occurred_at: Time,
        collection: MoonbaseSDK::Collection | nil,
        item: MoonbaseSDK::Item | nil
      }
      in {
        type: :"activity/inbox_message_sent",
        id: String,
        links: MoonbaseSDK::Activity::ActivityInboxMessageSent::Links,
        occurred_at: Time,
        message: MoonbaseSDK::EmailMessage | nil,
        recipients: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Address]) | nil,
        sender: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/item_created",
        id: String,
        links: MoonbaseSDK::Activity::ActivityItemCreated::Links,
        occurred_at: Time,
        collection: MoonbaseSDK::Collection | nil,
        item: MoonbaseSDK::Item | nil
      }
      in {
        type: :"activity/item_mentioned",
        id: String,
        links: MoonbaseSDK::Activity::ActivityItemMentioned::Links,
        occurred_at: Time,
        collection: MoonbaseSDK::Collection | nil,
        item: MoonbaseSDK::Item | nil
      }
      in {
        type: :"activity/meeting_held",
        id: String,
        links: MoonbaseSDK::Activity::ActivityMeetingHeld::Links,
        occurred_at: Time,
        attendees: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Attendee]) | nil,
        meeting: MoonbaseSDK::Meeting | nil
      }
      in {
        type: :"activity/meeting_scheduled",
        id: String,
        links: MoonbaseSDK::Activity::ActivityMeetingScheduled::Links,
        occurred_at: Time,
        attendees: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Attendee]) | nil,
        meeting: MoonbaseSDK::Meeting | nil,
        organizer: MoonbaseSDK::Organizer | nil
      }
      in {
        type: :"activity/note_created",
        id: String,
        links: MoonbaseSDK::Activity::ActivityNoteCreated::Links,
        occurred_at: Time,
        note: MoonbaseSDK::Note | nil,
        related_item: MoonbaseSDK::Item | nil,
        related_meeting: MoonbaseSDK::Meeting | nil
      }
      in {
        type: :"activity/program_message_bounced",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageBounced::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_clicked",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageClicked::Links,
        occurred_at: Time,
        link_text: String | nil,
        link_url_unsafe: String | nil,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_complained",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageComplained::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_failed",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageFailed::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_opened",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageOpened::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_sent",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageSent::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_shielded",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageShielded::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      in {
        type: :"activity/program_message_unsubscribed",
        id: String,
        links: MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed::Links,
        occurred_at: Time,
        recipient: MoonbaseSDK::Address | nil
      }
      end
    end
  end
end
