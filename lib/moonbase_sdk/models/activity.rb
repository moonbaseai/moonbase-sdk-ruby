# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # The Activity object represents a specific event that has occurred, such as a
    # meeting being scheduled or a form being submitted.
    #
    # Activities are polymorphic; the `type` field indicates the specific activity
    # that occurred, and the object will contain a property with a matching name that
    # holds the details of that event. For example, an `activity/meeting_held`
    # activity will contain a `meeting` property.
    #
    # @see MoonbaseSDK::Resources::Activities#retrieve
    module Activity
      extend MoonbaseSDK::Internal::Type::Union

      discriminator :type

      # Represents an event that occurs when an incoming or outgoing call is logged.
      variant :"activity/call_occurred", -> { MoonbaseSDK::Activity::ActivityCallOccurred }

      # Represents an event that occurs when a `Form` is submitted.
      variant :"activity/form_submitted", -> { MoonbaseSDK::Activity::ActivityFormSubmitted }

      # Represents an event that occurs when a message is sent from an `Inbox`.
      variant :"activity/inbox_message_sent", -> { MoonbaseSDK::Activity::ActivityInboxMessageSent }

      # Represents an event that occurs when an `Item` is created.
      variant :"activity/item_created", -> { MoonbaseSDK::Activity::ActivityItemCreated }

      # Represents an event that occurs when an `Item` is mentioned.
      variant :"activity/item_mentioned", -> { MoonbaseSDK::Activity::ActivityItemMentioned }

      # Represents an event that occurs when a `Meeting` has concluded.
      variant :"activity/meeting_held", -> { MoonbaseSDK::Activity::ActivityMeetingHeld }

      # Represents an event that occurs when a `Meeting` is scheduled.
      variant :"activity/meeting_scheduled", -> { MoonbaseSDK::Activity::ActivityMeetingScheduled }

      # Represents an event that occurs when a `Note` is created.
      variant :"activity/note_created", -> { MoonbaseSDK::Activity::ActivityNoteCreated }

      # Represents an event that occurs when a `ProgramMessage` bounces.
      variant :"activity/program_message_bounced", -> { MoonbaseSDK::Activity::ActivityProgramMessageBounced }

      # Represents an event that occurs when a recipient clicks a tracked link in a `ProgramMessage`.
      variant :"activity/program_message_clicked", -> { MoonbaseSDK::Activity::ActivityProgramMessageClicked }

      # Represents an event that occurs when a recipient marks a `ProgramMessage` as spam.
      variant :"activity/program_message_complained",
              -> { MoonbaseSDK::Activity::ActivityProgramMessageComplained }

      # Represents an event that occurs when a `ProgramMessage` fails to be delivered for a technical reason.
      variant :"activity/program_message_failed", -> { MoonbaseSDK::Activity::ActivityProgramMessageFailed }

      # Represents an event that occurs when a recipient opens a `ProgramMessage`.
      variant :"activity/program_message_opened", -> { MoonbaseSDK::Activity::ActivityProgramMessageOpened }

      # Represents an event that occurs when a `ProgramMessage` is successfully sent.
      variant :"activity/program_message_sent", -> { MoonbaseSDK::Activity::ActivityProgramMessageSent }

      # Represents an event that occurs when a `ProgramMessage` is prevented from being sent by a delivery protection rule.
      variant :"activity/program_message_shielded",
              -> {
                MoonbaseSDK::Activity::ActivityProgramMessageShielded
              }

      # Represents an event that occurs when a recipient unsubscribes after receiving a `ProgramMessage`.
      variant :"activity/program_message_unsubscribed",
              -> { MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed }

      class ActivityCallOccurred < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityCallOccurred::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityCallOccurred::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/call_occurred`.
        #
        #   @return [Symbol, :"activity/call_occurred"]
        required :type, const: :"activity/call_occurred"

        # @!attribute call
        #   The `Call` object associated with this event.
        #
        #   @return [MoonbaseSDK::Models::Call, nil]
        optional :call, -> { MoonbaseSDK::Call }

        # @!method initialize(id:, links:, occurred_at:, call: nil, type: :"activity/call_occurred")
        #   Represents an event that occurs when an incoming or outgoing call is logged.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityCallOccurred::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param call [MoonbaseSDK::Models::Call] The `Call` object associated with this event.
        #
        #   @param type [Symbol, :"activity/call_occurred"] The type of activity. Always `activity/call_occurred`.

        # @see MoonbaseSDK::Models::Activity::ActivityCallOccurred#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(self_:)
          #   @param self_ [String] The canonical URL for this object.
        end
      end

      class ActivityFormSubmitted < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityFormSubmitted::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityFormSubmitted::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/form_submitted`.
        #
        #   @return [Symbol, :"activity/form_submitted"]
        required :type, const: :"activity/form_submitted"

        # @!attribute collection
        #   The `Collection` the new item was added to.
        #
        #   @return [MoonbaseSDK::Models::Collection, nil]
        optional :collection, -> { MoonbaseSDK::Collection }

        # @!attribute item
        #   The `Item` that was created by the form submission.
        #
        #   @return [MoonbaseSDK::Models::Item, nil]
        optional :item, -> { MoonbaseSDK::Item }

        # @!method initialize(id:, links:, occurred_at:, collection: nil, item: nil, type: :"activity/form_submitted")
        #   Represents an event that occurs when a `Form` is submitted.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityFormSubmitted::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param collection [MoonbaseSDK::Models::Collection] The `Collection` the new item was added to.
        #
        #   @param item [MoonbaseSDK::Models::Item] The `Item` that was created by the form submission.
        #
        #   @param type [Symbol, :"activity/form_submitted"] The type of activity. Always `activity/form_submitted`.

        # @see MoonbaseSDK::Models::Activity::ActivityFormSubmitted#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute collection
          #   A link to the `Collection` associated with the form.
          #
          #   @return [String, nil]
          optional :collection, String

          # @!attribute item
          #   A link to the `Item` created by the form submission.
          #
          #   @return [String, nil]
          optional :item, String

          # @!method initialize(self_:, collection: nil, item: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param collection [String] A link to the `Collection` associated with the form.
          #
          #   @param item [String] A link to the `Item` created by the form submission.
        end
      end

      class ActivityInboxMessageSent < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityInboxMessageSent::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityInboxMessageSent::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/inbox_message_sent`.
        #
        #   @return [Symbol, :"activity/inbox_message_sent"]
        required :type, const: :"activity/inbox_message_sent"

        # @!attribute message
        #   The `EmailMessage` that was sent.
        #
        #   @return [MoonbaseSDK::Models::EmailMessage, nil]
        optional :message, -> { MoonbaseSDK::EmailMessage }

        # @!attribute recipients
        #   A list of `Address` objects for the recipients.
        #
        #   @return [Array<MoonbaseSDK::Models::Address>, nil]
        optional :recipients, -> { MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Address] }

        # @!attribute sender
        #   The `Address` of the sender.
        #
        #   @return [MoonbaseSDK::Models::Address, nil]
        optional :sender, -> { MoonbaseSDK::Address }

        # @!method initialize(id:, links:, occurred_at:, message: nil, recipients: nil, sender: nil, type: :"activity/inbox_message_sent")
        #   Represents an event that occurs when a message is sent from an `Inbox`.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityInboxMessageSent::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param message [MoonbaseSDK::Models::EmailMessage] The `EmailMessage` that was sent.
        #
        #   @param recipients [Array<MoonbaseSDK::Models::Address>] A list of `Address` objects for the recipients.
        #
        #   @param sender [MoonbaseSDK::Models::Address] The `Address` of the sender.
        #
        #   @param type [Symbol, :"activity/inbox_message_sent"] The type of activity. Always `activity/inbox_message_sent`.

        # @see MoonbaseSDK::Models::Activity::ActivityInboxMessageSent#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute message
          #   A link to the `EmailMessage` that was sent.
          #
          #   @return [String, nil]
          optional :message, String

          # @!method initialize(self_:, message: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param message [String] A link to the `EmailMessage` that was sent.
        end
      end

      class ActivityItemCreated < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityItemCreated::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityItemCreated::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/item_created`.
        #
        #   @return [Symbol, :"activity/item_created"]
        required :type, const: :"activity/item_created"

        # @!attribute collection
        #   The `Collection` the item was added to.
        #
        #   @return [MoonbaseSDK::Models::Collection, nil]
        optional :collection, -> { MoonbaseSDK::Collection }

        # @!attribute item
        #   The `Item` that was created.
        #
        #   @return [MoonbaseSDK::Models::Item, nil]
        optional :item, -> { MoonbaseSDK::Item }

        # @!method initialize(id:, links:, occurred_at:, collection: nil, item: nil, type: :"activity/item_created")
        #   Represents an event that occurs when an `Item` is created.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityItemCreated::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param collection [MoonbaseSDK::Models::Collection] The `Collection` the item was added to.
        #
        #   @param item [MoonbaseSDK::Models::Item] The `Item` that was created.
        #
        #   @param type [Symbol, :"activity/item_created"] The type of activity. Always `activity/item_created`.

        # @see MoonbaseSDK::Models::Activity::ActivityItemCreated#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute collection
          #   A link to the `Collection` the item belongs to.
          #
          #   @return [String, nil]
          optional :collection, String

          # @!attribute item
          #   A link to the `Item` that was created.
          #
          #   @return [String, nil]
          optional :item, String

          # @!method initialize(self_:, collection: nil, item: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param collection [String] A link to the `Collection` the item belongs to.
          #
          #   @param item [String] A link to the `Item` that was created.
        end
      end

      class ActivityItemMentioned < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityItemMentioned::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityItemMentioned::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/item_mentioned`.
        #
        #   @return [Symbol, :"activity/item_mentioned"]
        required :type, const: :"activity/item_mentioned"

        # @!attribute collection
        #   The `Collection` the item belongs to.
        #
        #   @return [MoonbaseSDK::Models::Collection, nil]
        optional :collection, -> { MoonbaseSDK::Collection }

        # @!attribute item
        #   The `Item` that was mentioned.
        #
        #   @return [MoonbaseSDK::Models::Item, nil]
        optional :item, -> { MoonbaseSDK::Item }

        # @!method initialize(id:, links:, occurred_at:, collection: nil, item: nil, type: :"activity/item_mentioned")
        #   Represents an event that occurs when an `Item` is mentioned.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityItemMentioned::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param collection [MoonbaseSDK::Models::Collection] The `Collection` the item belongs to.
        #
        #   @param item [MoonbaseSDK::Models::Item] The `Item` that was mentioned.
        #
        #   @param type [Symbol, :"activity/item_mentioned"] The type of activity. Always `activity/item_mentioned`.

        # @see MoonbaseSDK::Models::Activity::ActivityItemMentioned#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute collection
          #   A link to the `Collection` the item belongs to.
          #
          #   @return [String, nil]
          optional :collection, String

          # @!attribute item
          #   A link to the `Item` that was mentioned.
          #
          #   @return [String, nil]
          optional :item, String

          # @!method initialize(self_:, collection: nil, item: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param collection [String] A link to the `Collection` the item belongs to.
          #
          #   @param item [String] A link to the `Item` that was mentioned.
        end
      end

      class ActivityMeetingHeld < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityMeetingHeld::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityMeetingHeld::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/meeting_held`.
        #
        #   @return [Symbol, :"activity/meeting_held"]
        required :type, const: :"activity/meeting_held"

        # @!attribute attendees
        #   A list of `Attendee` objects who were part of the meeting.
        #
        #   @return [Array<MoonbaseSDK::Models::Attendee>, nil]
        optional :attendees, -> { MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Attendee] }

        # @!attribute meeting
        #   The `Meeting` object associated with this event.
        #
        #   @return [MoonbaseSDK::Models::Meeting, nil]
        optional :meeting, -> { MoonbaseSDK::Meeting }

        # @!method initialize(id:, links:, occurred_at:, attendees: nil, meeting: nil, type: :"activity/meeting_held")
        #   Represents an event that occurs when a `Meeting` has concluded.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityMeetingHeld::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param attendees [Array<MoonbaseSDK::Models::Attendee>] A list of `Attendee` objects who were part of the meeting.
        #
        #   @param meeting [MoonbaseSDK::Models::Meeting] The `Meeting` object associated with this event.
        #
        #   @param type [Symbol, :"activity/meeting_held"] The type of activity. Always `activity/meeting_held`.

        # @see MoonbaseSDK::Models::Activity::ActivityMeetingHeld#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute meeting
          #   A link to the `Meeting` that was held.
          #
          #   @return [String, nil]
          optional :meeting, String

          # @!method initialize(self_:, meeting: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param meeting [String] A link to the `Meeting` that was held.
        end
      end

      class ActivityMeetingScheduled < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityMeetingScheduled::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityMeetingScheduled::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/meeting_scheduled`.
        #
        #   @return [Symbol, :"activity/meeting_scheduled"]
        required :type, const: :"activity/meeting_scheduled"

        # @!attribute attendees
        #   The list of `Attendee` objects invited to the meeting.
        #
        #   @return [Array<MoonbaseSDK::Models::Attendee>, nil]
        optional :attendees, -> { MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Attendee] }

        # @!attribute meeting
        #   The `Meeting` object associated with this event.
        #
        #   @return [MoonbaseSDK::Models::Meeting, nil]
        optional :meeting, -> { MoonbaseSDK::Meeting }

        # @!attribute organizer
        #   The `Organizer` of the meeting.
        #
        #   @return [MoonbaseSDK::Models::Organizer, nil]
        optional :organizer, -> { MoonbaseSDK::Organizer }

        # @!method initialize(id:, links:, occurred_at:, attendees: nil, meeting: nil, organizer: nil, type: :"activity/meeting_scheduled")
        #   Represents an event that occurs when a `Meeting` is scheduled.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityMeetingScheduled::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param attendees [Array<MoonbaseSDK::Models::Attendee>] The list of `Attendee` objects invited to the meeting.
        #
        #   @param meeting [MoonbaseSDK::Models::Meeting] The `Meeting` object associated with this event.
        #
        #   @param organizer [MoonbaseSDK::Models::Organizer] The `Organizer` of the meeting.
        #
        #   @param type [Symbol, :"activity/meeting_scheduled"] The type of activity. Always `activity/meeting_scheduled`.

        # @see MoonbaseSDK::Models::Activity::ActivityMeetingScheduled#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute meeting
          #   A link to the `Meeting` that was scheduled.
          #
          #   @return [String, nil]
          optional :meeting, String

          # @!method initialize(self_:, meeting: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param meeting [String] A link to the `Meeting` that was scheduled.
        end
      end

      class ActivityNoteCreated < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityNoteCreated::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityNoteCreated::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/note_created`.
        #
        #   @return [Symbol, :"activity/note_created"]
        required :type, const: :"activity/note_created"

        # @!attribute note
        #   The `Note` object that was created.
        #
        #   @return [MoonbaseSDK::Models::Note, nil]
        optional :note, -> { MoonbaseSDK::Note }

        # @!attribute related_item
        #   The `Item` this note is related to, if any.
        #
        #   @return [MoonbaseSDK::Models::Item, nil]
        optional :related_item, -> { MoonbaseSDK::Item }

        # @!attribute related_meeting
        #   The `Meeting` this note is related to, if any.
        #
        #   @return [MoonbaseSDK::Models::Meeting, nil]
        optional :related_meeting, -> { MoonbaseSDK::Meeting }

        # @!method initialize(id:, links:, occurred_at:, note: nil, related_item: nil, related_meeting: nil, type: :"activity/note_created")
        #   Represents an event that occurs when a `Note` is created.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityNoteCreated::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param note [MoonbaseSDK::Models::Note] The `Note` object that was created.
        #
        #   @param related_item [MoonbaseSDK::Models::Item] The `Item` this note is related to, if any.
        #
        #   @param related_meeting [MoonbaseSDK::Models::Meeting] The `Meeting` this note is related to, if any.
        #
        #   @param type [Symbol, :"activity/note_created"] The type of activity. Always `activity/note_created`.

        # @see MoonbaseSDK::Models::Activity::ActivityNoteCreated#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute note
          #   A link to the `Note` that was created.
          #
          #   @return [String, nil]
          optional :note, String

          # @!attribute related_item
          #   A link to the related `Item`.
          #
          #   @return [String, nil]
          optional :related_item, String

          # @!attribute related_meeting
          #   A link to the related `Meeting`.
          #
          #   @return [String, nil]
          optional :related_meeting, String

          # @!method initialize(self_:, note: nil, related_item: nil, related_meeting: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param note [String] A link to the `Note` that was created.
          #
          #   @param related_item [String] A link to the related `Item`.
          #
          #   @param related_meeting [String] A link to the related `Meeting`.
        end
      end

      class ActivityProgramMessageBounced < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityProgramMessageBounced::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityProgramMessageBounced::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/program_message_bounced`.
        #
        #   @return [Symbol, :"activity/program_message_bounced"]
        required :type, const: :"activity/program_message_bounced"

        # @!attribute recipient
        #   The `Address` of the recipient whose message bounced.
        #
        #   @return [MoonbaseSDK::Models::Address, nil]
        optional :recipient, -> { MoonbaseSDK::Address }

        # @!method initialize(id:, links:, occurred_at:, recipient: nil, type: :"activity/program_message_bounced")
        #   Represents an event that occurs when a `ProgramMessage` bounces.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityProgramMessageBounced::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param recipient [MoonbaseSDK::Models::Address] The `Address` of the recipient whose message bounced.
        #
        #   @param type [Symbol, :"activity/program_message_bounced"] The type of activity. Always `activity/program_message_bounced`.

        # @see MoonbaseSDK::Models::Activity::ActivityProgramMessageBounced#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(self_:)
          #   @param self_ [String] The canonical URL for this object.
        end
      end

      class ActivityProgramMessageClicked < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityProgramMessageClicked::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityProgramMessageClicked::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/program_message_clicked`.
        #
        #   @return [Symbol, :"activity/program_message_clicked"]
        required :type, const: :"activity/program_message_clicked"

        # @!attribute link_text
        #   The text of the link that was clicked.
        #
        #   @return [String, nil]
        optional :link_text, String

        # @!attribute link_url_unsafe
        #   The URL of the link that was clicked.
        #
        #   @return [String, nil]
        optional :link_url_unsafe, String

        # @!attribute recipient
        #   The `Address` of the recipient who clicked the link.
        #
        #   @return [MoonbaseSDK::Models::Address, nil]
        optional :recipient, -> { MoonbaseSDK::Address }

        # @!method initialize(id:, links:, occurred_at:, link_text: nil, link_url_unsafe: nil, recipient: nil, type: :"activity/program_message_clicked")
        #   Represents an event that occurs when a recipient clicks a tracked link in a
        #   `ProgramMessage`.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityProgramMessageClicked::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param link_text [String] The text of the link that was clicked.
        #
        #   @param link_url_unsafe [String] The URL of the link that was clicked.
        #
        #   @param recipient [MoonbaseSDK::Models::Address] The `Address` of the recipient who clicked the link.
        #
        #   @param type [Symbol, :"activity/program_message_clicked"] The type of activity. Always `activity/program_message_clicked`.

        # @see MoonbaseSDK::Models::Activity::ActivityProgramMessageClicked#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(self_:)
          #   @param self_ [String] The canonical URL for this object.
        end
      end

      class ActivityProgramMessageComplained < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityProgramMessageComplained::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityProgramMessageComplained::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/program_message_complained`.
        #
        #   @return [Symbol, :"activity/program_message_complained"]
        required :type, const: :"activity/program_message_complained"

        # @!attribute recipient
        #   The `Address` of the recipient who complained.
        #
        #   @return [MoonbaseSDK::Models::Address, nil]
        optional :recipient, -> { MoonbaseSDK::Address }

        # @!method initialize(id:, links:, occurred_at:, recipient: nil, type: :"activity/program_message_complained")
        #   Represents an event that occurs when a recipient marks a `ProgramMessage` as
        #   spam.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityProgramMessageComplained::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param recipient [MoonbaseSDK::Models::Address] The `Address` of the recipient who complained.
        #
        #   @param type [Symbol, :"activity/program_message_complained"] The type of activity. Always `activity/program_message_complained`.

        # @see MoonbaseSDK::Models::Activity::ActivityProgramMessageComplained#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(self_:)
          #   @param self_ [String] The canonical URL for this object.
        end
      end

      class ActivityProgramMessageFailed < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityProgramMessageFailed::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityProgramMessageFailed::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/program_message_failed`.
        #
        #   @return [Symbol, :"activity/program_message_failed"]
        required :type, const: :"activity/program_message_failed"

        # @!attribute recipient
        #   The `Address` of the recipient whose message failed.
        #
        #   @return [MoonbaseSDK::Models::Address, nil]
        optional :recipient, -> { MoonbaseSDK::Address }

        # @!method initialize(id:, links:, occurred_at:, recipient: nil, type: :"activity/program_message_failed")
        #   Represents an event that occurs when a `ProgramMessage` fails to be delivered
        #   for a technical reason.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityProgramMessageFailed::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param recipient [MoonbaseSDK::Models::Address] The `Address` of the recipient whose message failed.
        #
        #   @param type [Symbol, :"activity/program_message_failed"] The type of activity. Always `activity/program_message_failed`.

        # @see MoonbaseSDK::Models::Activity::ActivityProgramMessageFailed#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(self_:)
          #   @param self_ [String] The canonical URL for this object.
        end
      end

      class ActivityProgramMessageOpened < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityProgramMessageOpened::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityProgramMessageOpened::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/program_message_opened`.
        #
        #   @return [Symbol, :"activity/program_message_opened"]
        required :type, const: :"activity/program_message_opened"

        # @!attribute recipient
        #   The `Address` of the recipient who opened the message.
        #
        #   @return [MoonbaseSDK::Models::Address, nil]
        optional :recipient, -> { MoonbaseSDK::Address }

        # @!method initialize(id:, links:, occurred_at:, recipient: nil, type: :"activity/program_message_opened")
        #   Represents an event that occurs when a recipient opens a `ProgramMessage`.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityProgramMessageOpened::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param recipient [MoonbaseSDK::Models::Address] The `Address` of the recipient who opened the message.
        #
        #   @param type [Symbol, :"activity/program_message_opened"] The type of activity. Always `activity/program_message_opened`.

        # @see MoonbaseSDK::Models::Activity::ActivityProgramMessageOpened#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(self_:)
          #   @param self_ [String] The canonical URL for this object.
        end
      end

      class ActivityProgramMessageSent < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityProgramMessageSent::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityProgramMessageSent::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/program_message_sent`.
        #
        #   @return [Symbol, :"activity/program_message_sent"]
        required :type, const: :"activity/program_message_sent"

        # @!attribute recipient
        #   The `Address` of the recipient the message was sent to.
        #
        #   @return [MoonbaseSDK::Models::Address, nil]
        optional :recipient, -> { MoonbaseSDK::Address }

        # @!method initialize(id:, links:, occurred_at:, recipient: nil, type: :"activity/program_message_sent")
        #   Represents an event that occurs when a `ProgramMessage` is successfully sent.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityProgramMessageSent::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param recipient [MoonbaseSDK::Models::Address] The `Address` of the recipient the message was sent to.
        #
        #   @param type [Symbol, :"activity/program_message_sent"] The type of activity. Always `activity/program_message_sent`.

        # @see MoonbaseSDK::Models::Activity::ActivityProgramMessageSent#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(self_:)
          #   @param self_ [String] The canonical URL for this object.
        end
      end

      class ActivityProgramMessageShielded < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityProgramMessageShielded::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityProgramMessageShielded::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/program_message_shielded`.
        #
        #   @return [Symbol, :"activity/program_message_shielded"]
        required :type, const: :"activity/program_message_shielded"

        # @!attribute recipient
        #   The `Address` of the recipient whose message was shielded.
        #
        #   @return [MoonbaseSDK::Models::Address, nil]
        optional :recipient, -> { MoonbaseSDK::Address }

        # @!method initialize(id:, links:, occurred_at:, recipient: nil, type: :"activity/program_message_shielded")
        #   Represents an event that occurs when a `ProgramMessage` is prevented from being
        #   sent by a delivery protection rule.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityProgramMessageShielded::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param recipient [MoonbaseSDK::Models::Address] The `Address` of the recipient whose message was shielded.
        #
        #   @param type [Symbol, :"activity/program_message_shielded"] The type of activity. Always `activity/program_message_shielded`.

        # @see MoonbaseSDK::Models::Activity::ActivityProgramMessageShielded#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(self_:)
          #   @param self_ [String] The canonical URL for this object.
        end
      end

      class ActivityProgramMessageUnsubscribed < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [MoonbaseSDK::Models::Activity::ActivityProgramMessageUnsubscribed::Links]
        required :links, -> { MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/program_message_unsubscribed`.
        #
        #   @return [Symbol, :"activity/program_message_unsubscribed"]
        required :type, const: :"activity/program_message_unsubscribed"

        # @!attribute recipient
        #   The `Address` of the recipient who unsubscribed.
        #
        #   @return [MoonbaseSDK::Models::Address, nil]
        optional :recipient, -> { MoonbaseSDK::Address }

        # @!method initialize(id:, links:, occurred_at:, recipient: nil, type: :"activity/program_message_unsubscribed")
        #   Represents an event that occurs when a recipient unsubscribes after receiving a
        #   `ProgramMessage`.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [MoonbaseSDK::Models::Activity::ActivityProgramMessageUnsubscribed::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param recipient [MoonbaseSDK::Models::Address] The `Address` of the recipient who unsubscribed.
        #
        #   @param type [Symbol, :"activity/program_message_unsubscribed"] The type of activity. Always `activity/program_message_unsubscribed`.

        # @see MoonbaseSDK::Models::Activity::ActivityProgramMessageUnsubscribed#links
        class Links < MoonbaseSDK::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(self_:)
          #   @param self_ [String] The canonical URL for this object.
        end
      end

      # @!method self.variants
      #   @return [Array(MoonbaseSDK::Models::Activity::ActivityCallOccurred, MoonbaseSDK::Models::Activity::ActivityFormSubmitted, MoonbaseSDK::Models::Activity::ActivityInboxMessageSent, MoonbaseSDK::Models::Activity::ActivityItemCreated, MoonbaseSDK::Models::Activity::ActivityItemMentioned, MoonbaseSDK::Models::Activity::ActivityMeetingHeld, MoonbaseSDK::Models::Activity::ActivityMeetingScheduled, MoonbaseSDK::Models::Activity::ActivityNoteCreated, MoonbaseSDK::Models::Activity::ActivityProgramMessageBounced, MoonbaseSDK::Models::Activity::ActivityProgramMessageClicked, MoonbaseSDK::Models::Activity::ActivityProgramMessageComplained, MoonbaseSDK::Models::Activity::ActivityProgramMessageFailed, MoonbaseSDK::Models::Activity::ActivityProgramMessageOpened, MoonbaseSDK::Models::Activity::ActivityProgramMessageSent, MoonbaseSDK::Models::Activity::ActivityProgramMessageShielded, MoonbaseSDK::Models::Activity::ActivityProgramMessageUnsubscribed)]
    end
  end
end
