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
        call: Moonbase::Call | nil
      }
      in {
        type: :"activity/form_submitted",
        id: String,
        links: Moonbase::Activity::ActivityFormSubmitted::Links,
        occurred_at: Time,
        collection: Moonbase::Collection | nil,
        item: Moonbase::Item | nil
      }
      in {
        type: :"activity/inbox_message_sent",
        id: String,
        links: Moonbase::Activity::ActivityInboxMessageSent::Links,
        occurred_at: Time,
        message: Moonbase::EmailMessage | nil,
        recipients: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Address]) | nil,
        sender: Moonbase::Address | nil
      }
      in {
        type: :"activity/item_created",
        id: String,
        links: Moonbase::Activity::ActivityItemCreated::Links,
        occurred_at: Time,
        collection: Moonbase::Collection | nil,
        item: Moonbase::Item | nil
      }
      in {
        type: :"activity/item_mentioned",
        id: String,
        links: Moonbase::Activity::ActivityItemMentioned::Links,
        occurred_at: Time,
        collection: Moonbase::Collection | nil,
        item: Moonbase::Item | nil
      }
      in {
        type: :"activity/meeting_held",
        id: String,
        links: Moonbase::Activity::ActivityMeetingHeld::Links,
        occurred_at: Time,
        attendees: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Attendee]) | nil,
        meeting: Moonbase::Meeting | nil
      }
      in {
        type: :"activity/meeting_scheduled",
        id: String,
        links: Moonbase::Activity::ActivityMeetingScheduled::Links,
        occurred_at: Time,
        attendees: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Attendee]) | nil,
        meeting: Moonbase::Meeting | nil,
        organizer: Moonbase::Organizer | nil
      }
      in {
        type: :"activity/note_created",
        id: String,
        links: Moonbase::Activity::ActivityNoteCreated::Links,
        occurred_at: Time,
        note: Moonbase::Note | nil,
        related_item: Moonbase::Item | nil,
        related_meeting: Moonbase::Meeting | nil
      }
      in {
        type: :"activity/program_message_bounced",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageBounced::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_clicked",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageClicked::Links,
        occurred_at: Time,
        link_text: String | nil,
        link_url_unsafe: String | nil,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_complained",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageComplained::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_failed",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageFailed::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_opened",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageOpened::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_sent",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageSent::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_shielded",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageShielded::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_unsubscribed",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageUnsubscribed::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
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
        call: Moonbase::Call | nil
      }
      in {
        type: :"activity/form_submitted",
        id: String,
        links: Moonbase::Activity::ActivityFormSubmitted::Links,
        occurred_at: Time,
        collection: Moonbase::Collection | nil,
        item: Moonbase::Item | nil
      }
      in {
        type: :"activity/inbox_message_sent",
        id: String,
        links: Moonbase::Activity::ActivityInboxMessageSent::Links,
        occurred_at: Time,
        message: Moonbase::EmailMessage | nil,
        recipients: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Address]) | nil,
        sender: Moonbase::Address | nil
      }
      in {
        type: :"activity/item_created",
        id: String,
        links: Moonbase::Activity::ActivityItemCreated::Links,
        occurred_at: Time,
        collection: Moonbase::Collection | nil,
        item: Moonbase::Item | nil
      }
      in {
        type: :"activity/item_mentioned",
        id: String,
        links: Moonbase::Activity::ActivityItemMentioned::Links,
        occurred_at: Time,
        collection: Moonbase::Collection | nil,
        item: Moonbase::Item | nil
      }
      in {
        type: :"activity/meeting_held",
        id: String,
        links: Moonbase::Activity::ActivityMeetingHeld::Links,
        occurred_at: Time,
        attendees: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Attendee]) | nil,
        meeting: Moonbase::Meeting | nil
      }
      in {
        type: :"activity/meeting_scheduled",
        id: String,
        links: Moonbase::Activity::ActivityMeetingScheduled::Links,
        occurred_at: Time,
        attendees: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Attendee]) | nil,
        meeting: Moonbase::Meeting | nil,
        organizer: Moonbase::Organizer | nil
      }
      in {
        type: :"activity/note_created",
        id: String,
        links: Moonbase::Activity::ActivityNoteCreated::Links,
        occurred_at: Time,
        note: Moonbase::Note | nil,
        related_item: Moonbase::Item | nil,
        related_meeting: Moonbase::Meeting | nil
      }
      in {
        type: :"activity/program_message_bounced",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageBounced::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_clicked",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageClicked::Links,
        occurred_at: Time,
        link_text: String | nil,
        link_url_unsafe: String | nil,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_complained",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageComplained::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_failed",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageFailed::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_opened",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageOpened::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_sent",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageSent::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_shielded",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageShielded::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      in {
        type: :"activity/program_message_unsubscribed",
        id: String,
        links: Moonbase::Activity::ActivityProgramMessageUnsubscribed::Links,
        occurred_at: Time,
        recipient: Moonbase::Address | nil
      }
      end
    end
  end
end
