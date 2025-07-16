# typed: strong

module MoonbaseSDK
  module Models
    # The Activity object represents a specific event that has occurred, such as a
    # meeting being scheduled or a form being submitted.
    #
    # Activities are polymorphic; the `type` field indicates the specific activity
    # that occurred, and the object will contain a property with a matching name that
    # holds the details of that event. For example, an `activity/meeting_held`
    # activity will contain a `meeting` property.
    module Activity
      extend MoonbaseSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            MoonbaseSDK::Activity::ActivityCallOccurred,
            MoonbaseSDK::Activity::ActivityFormSubmitted,
            MoonbaseSDK::Activity::ActivityInboxMessageSent,
            MoonbaseSDK::Activity::ActivityItemCreated,
            MoonbaseSDK::Activity::ActivityItemMentioned,
            MoonbaseSDK::Activity::ActivityMeetingHeld,
            MoonbaseSDK::Activity::ActivityMeetingScheduled,
            MoonbaseSDK::Activity::ActivityNoteCreated,
            MoonbaseSDK::Activity::ActivityProgramMessageBounced,
            MoonbaseSDK::Activity::ActivityProgramMessageClicked,
            MoonbaseSDK::Activity::ActivityProgramMessageComplained,
            MoonbaseSDK::Activity::ActivityProgramMessageFailed,
            MoonbaseSDK::Activity::ActivityProgramMessageOpened,
            MoonbaseSDK::Activity::ActivityProgramMessageSent,
            MoonbaseSDK::Activity::ActivityProgramMessageShielded,
            MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed
          )
        end

      class ActivityCallOccurred < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityCallOccurred,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(MoonbaseSDK::Activity::ActivityCallOccurred::Links) }
        attr_reader :links

        sig do
          params(
            links: MoonbaseSDK::Activity::ActivityCallOccurred::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/call_occurred`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Call` object associated with this event.
        sig { returns(T.nilable(MoonbaseSDK::Call)) }
        attr_reader :call

        sig { params(call: MoonbaseSDK::Call::OrHash).void }
        attr_writer :call

        # Represents an event that occurs when an incoming or outgoing call is logged.
        sig do
          params(
            id: String,
            links: MoonbaseSDK::Activity::ActivityCallOccurred::Links::OrHash,
            occurred_at: Time,
            call: MoonbaseSDK::Call::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Call` object associated with this event.
          call: nil,
          # The type of activity. Always `activity/call_occurred`.
          type: :"activity/call_occurred"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityCallOccurred::Links,
              occurred_at: Time,
              type: Symbol,
              call: MoonbaseSDK::Call
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityCallOccurred::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          sig { params(self_: String).returns(T.attached_class) }
          def self.new(
            # The canonical URL for this object.
            self_:
          )
          end

          sig { override.returns({ self_: String }) }
          def to_hash
          end
        end
      end

      class ActivityFormSubmitted < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityFormSubmitted,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(MoonbaseSDK::Activity::ActivityFormSubmitted::Links) }
        attr_reader :links

        sig do
          params(
            links: MoonbaseSDK::Activity::ActivityFormSubmitted::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/form_submitted`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Collection` the new item was added to.
        sig { returns(T.nilable(MoonbaseSDK::Collection)) }
        attr_reader :collection

        sig { params(collection: MoonbaseSDK::Collection::OrHash).void }
        attr_writer :collection

        # The `Item` that was created by the form submission.
        sig { returns(T.nilable(MoonbaseSDK::Item)) }
        attr_reader :item

        sig { params(item: MoonbaseSDK::Item::OrHash).void }
        attr_writer :item

        # Represents an event that occurs when a `Form` is submitted.
        sig do
          params(
            id: String,
            links: MoonbaseSDK::Activity::ActivityFormSubmitted::Links::OrHash,
            occurred_at: Time,
            collection: MoonbaseSDK::Collection::OrHash,
            item: MoonbaseSDK::Item::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Collection` the new item was added to.
          collection: nil,
          # The `Item` that was created by the form submission.
          item: nil,
          # The type of activity. Always `activity/form_submitted`.
          type: :"activity/form_submitted"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityFormSubmitted::Links,
              occurred_at: Time,
              type: Symbol,
              collection: MoonbaseSDK::Collection,
              item: MoonbaseSDK::Item
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityFormSubmitted::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Collection` associated with the form.
          sig { returns(T.nilable(String)) }
          attr_reader :collection

          sig { params(collection: String).void }
          attr_writer :collection

          # A link to the `Item` created by the form submission.
          sig { returns(T.nilable(String)) }
          attr_reader :item

          sig { params(item: String).void }
          attr_writer :item

          sig do
            params(self_: String, collection: String, item: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Collection` associated with the form.
            collection: nil,
            # A link to the `Item` created by the form submission.
            item: nil
          )
          end

          sig do
            override.returns(
              { self_: String, collection: String, item: String }
            )
          end
          def to_hash
          end
        end
      end

      class ActivityInboxMessageSent < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityInboxMessageSent,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(MoonbaseSDK::Activity::ActivityInboxMessageSent::Links) }
        attr_reader :links

        sig do
          params(
            links:
              MoonbaseSDK::Activity::ActivityInboxMessageSent::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/inbox_message_sent`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `EmailMessage` that was sent.
        sig { returns(T.nilable(MoonbaseSDK::EmailMessage)) }
        attr_reader :message

        sig { params(message: MoonbaseSDK::EmailMessage::OrHash).void }
        attr_writer :message

        # A list of `Address` objects for the recipients.
        sig { returns(T.nilable(T::Array[MoonbaseSDK::Address])) }
        attr_reader :recipients

        sig { params(recipients: T::Array[MoonbaseSDK::Address::OrHash]).void }
        attr_writer :recipients

        # The `Address` of the sender.
        sig { returns(T.nilable(MoonbaseSDK::Address)) }
        attr_reader :sender

        sig { params(sender: MoonbaseSDK::Address::OrHash).void }
        attr_writer :sender

        # Represents an event that occurs when a message is sent from an `Inbox`.
        sig do
          params(
            id: String,
            links:
              MoonbaseSDK::Activity::ActivityInboxMessageSent::Links::OrHash,
            occurred_at: Time,
            message: MoonbaseSDK::EmailMessage::OrHash,
            recipients: T::Array[MoonbaseSDK::Address::OrHash],
            sender: MoonbaseSDK::Address::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `EmailMessage` that was sent.
          message: nil,
          # A list of `Address` objects for the recipients.
          recipients: nil,
          # The `Address` of the sender.
          sender: nil,
          # The type of activity. Always `activity/inbox_message_sent`.
          type: :"activity/inbox_message_sent"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityInboxMessageSent::Links,
              occurred_at: Time,
              type: Symbol,
              message: MoonbaseSDK::EmailMessage,
              recipients: T::Array[MoonbaseSDK::Address],
              sender: MoonbaseSDK::Address
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityInboxMessageSent::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `EmailMessage` that was sent.
          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          sig do
            params(self_: String, message: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `EmailMessage` that was sent.
            message: nil
          )
          end

          sig { override.returns({ self_: String, message: String }) }
          def to_hash
          end
        end
      end

      class ActivityItemCreated < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityItemCreated,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(MoonbaseSDK::Activity::ActivityItemCreated::Links) }
        attr_reader :links

        sig do
          params(
            links: MoonbaseSDK::Activity::ActivityItemCreated::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/item_created`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Collection` the item was added to.
        sig { returns(T.nilable(MoonbaseSDK::Collection)) }
        attr_reader :collection

        sig { params(collection: MoonbaseSDK::Collection::OrHash).void }
        attr_writer :collection

        # The `Item` that was created.
        sig { returns(T.nilable(MoonbaseSDK::Item)) }
        attr_reader :item

        sig { params(item: MoonbaseSDK::Item::OrHash).void }
        attr_writer :item

        # Represents an event that occurs when an `Item` is created.
        sig do
          params(
            id: String,
            links: MoonbaseSDK::Activity::ActivityItemCreated::Links::OrHash,
            occurred_at: Time,
            collection: MoonbaseSDK::Collection::OrHash,
            item: MoonbaseSDK::Item::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Collection` the item was added to.
          collection: nil,
          # The `Item` that was created.
          item: nil,
          # The type of activity. Always `activity/item_created`.
          type: :"activity/item_created"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityItemCreated::Links,
              occurred_at: Time,
              type: Symbol,
              collection: MoonbaseSDK::Collection,
              item: MoonbaseSDK::Item
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityItemCreated::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Collection` the item belongs to.
          sig { returns(T.nilable(String)) }
          attr_reader :collection

          sig { params(collection: String).void }
          attr_writer :collection

          # A link to the `Item` that was created.
          sig { returns(T.nilable(String)) }
          attr_reader :item

          sig { params(item: String).void }
          attr_writer :item

          sig do
            params(self_: String, collection: String, item: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Collection` the item belongs to.
            collection: nil,
            # A link to the `Item` that was created.
            item: nil
          )
          end

          sig do
            override.returns(
              { self_: String, collection: String, item: String }
            )
          end
          def to_hash
          end
        end
      end

      class ActivityItemMentioned < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityItemMentioned,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(MoonbaseSDK::Activity::ActivityItemMentioned::Links) }
        attr_reader :links

        sig do
          params(
            links: MoonbaseSDK::Activity::ActivityItemMentioned::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/item_mentioned`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Collection` the item belongs to.
        sig { returns(T.nilable(MoonbaseSDK::Collection)) }
        attr_reader :collection

        sig { params(collection: MoonbaseSDK::Collection::OrHash).void }
        attr_writer :collection

        # The `Item` that was mentioned.
        sig { returns(T.nilable(MoonbaseSDK::Item)) }
        attr_reader :item

        sig { params(item: MoonbaseSDK::Item::OrHash).void }
        attr_writer :item

        # Represents an event that occurs when an `Item` is mentioned.
        sig do
          params(
            id: String,
            links: MoonbaseSDK::Activity::ActivityItemMentioned::Links::OrHash,
            occurred_at: Time,
            collection: MoonbaseSDK::Collection::OrHash,
            item: MoonbaseSDK::Item::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Collection` the item belongs to.
          collection: nil,
          # The `Item` that was mentioned.
          item: nil,
          # The type of activity. Always `activity/item_mentioned`.
          type: :"activity/item_mentioned"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityItemMentioned::Links,
              occurred_at: Time,
              type: Symbol,
              collection: MoonbaseSDK::Collection,
              item: MoonbaseSDK::Item
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityItemMentioned::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Collection` the item belongs to.
          sig { returns(T.nilable(String)) }
          attr_reader :collection

          sig { params(collection: String).void }
          attr_writer :collection

          # A link to the `Item` that was mentioned.
          sig { returns(T.nilable(String)) }
          attr_reader :item

          sig { params(item: String).void }
          attr_writer :item

          sig do
            params(self_: String, collection: String, item: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Collection` the item belongs to.
            collection: nil,
            # A link to the `Item` that was mentioned.
            item: nil
          )
          end

          sig do
            override.returns(
              { self_: String, collection: String, item: String }
            )
          end
          def to_hash
          end
        end
      end

      class ActivityMeetingHeld < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityMeetingHeld,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(MoonbaseSDK::Activity::ActivityMeetingHeld::Links) }
        attr_reader :links

        sig do
          params(
            links: MoonbaseSDK::Activity::ActivityMeetingHeld::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/meeting_held`.
        sig { returns(Symbol) }
        attr_accessor :type

        # A list of `Attendee` objects who were part of the meeting.
        sig { returns(T.nilable(T::Array[MoonbaseSDK::Attendee])) }
        attr_reader :attendees

        sig { params(attendees: T::Array[MoonbaseSDK::Attendee::OrHash]).void }
        attr_writer :attendees

        # The `Meeting` object associated with this event.
        sig { returns(T.nilable(MoonbaseSDK::Meeting)) }
        attr_reader :meeting

        sig { params(meeting: MoonbaseSDK::Meeting::OrHash).void }
        attr_writer :meeting

        # Represents an event that occurs when a `Meeting` has concluded.
        sig do
          params(
            id: String,
            links: MoonbaseSDK::Activity::ActivityMeetingHeld::Links::OrHash,
            occurred_at: Time,
            attendees: T::Array[MoonbaseSDK::Attendee::OrHash],
            meeting: MoonbaseSDK::Meeting::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # A list of `Attendee` objects who were part of the meeting.
          attendees: nil,
          # The `Meeting` object associated with this event.
          meeting: nil,
          # The type of activity. Always `activity/meeting_held`.
          type: :"activity/meeting_held"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityMeetingHeld::Links,
              occurred_at: Time,
              type: Symbol,
              attendees: T::Array[MoonbaseSDK::Attendee],
              meeting: MoonbaseSDK::Meeting
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityMeetingHeld::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Meeting` that was held.
          sig { returns(T.nilable(String)) }
          attr_reader :meeting

          sig { params(meeting: String).void }
          attr_writer :meeting

          sig do
            params(self_: String, meeting: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Meeting` that was held.
            meeting: nil
          )
          end

          sig { override.returns({ self_: String, meeting: String }) }
          def to_hash
          end
        end
      end

      class ActivityMeetingScheduled < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityMeetingScheduled,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(MoonbaseSDK::Activity::ActivityMeetingScheduled::Links) }
        attr_reader :links

        sig do
          params(
            links:
              MoonbaseSDK::Activity::ActivityMeetingScheduled::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/meeting_scheduled`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The list of `Attendee` objects invited to the meeting.
        sig { returns(T.nilable(T::Array[MoonbaseSDK::Attendee])) }
        attr_reader :attendees

        sig { params(attendees: T::Array[MoonbaseSDK::Attendee::OrHash]).void }
        attr_writer :attendees

        # The `Meeting` object associated with this event.
        sig { returns(T.nilable(MoonbaseSDK::Meeting)) }
        attr_reader :meeting

        sig { params(meeting: MoonbaseSDK::Meeting::OrHash).void }
        attr_writer :meeting

        # The `Organizer` of the meeting.
        sig { returns(T.nilable(MoonbaseSDK::Organizer)) }
        attr_reader :organizer

        sig { params(organizer: MoonbaseSDK::Organizer::OrHash).void }
        attr_writer :organizer

        # Represents an event that occurs when a `Meeting` is scheduled.
        sig do
          params(
            id: String,
            links:
              MoonbaseSDK::Activity::ActivityMeetingScheduled::Links::OrHash,
            occurred_at: Time,
            attendees: T::Array[MoonbaseSDK::Attendee::OrHash],
            meeting: MoonbaseSDK::Meeting::OrHash,
            organizer: MoonbaseSDK::Organizer::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The list of `Attendee` objects invited to the meeting.
          attendees: nil,
          # The `Meeting` object associated with this event.
          meeting: nil,
          # The `Organizer` of the meeting.
          organizer: nil,
          # The type of activity. Always `activity/meeting_scheduled`.
          type: :"activity/meeting_scheduled"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityMeetingScheduled::Links,
              occurred_at: Time,
              type: Symbol,
              attendees: T::Array[MoonbaseSDK::Attendee],
              meeting: MoonbaseSDK::Meeting,
              organizer: MoonbaseSDK::Organizer
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityMeetingScheduled::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Meeting` that was scheduled.
          sig { returns(T.nilable(String)) }
          attr_reader :meeting

          sig { params(meeting: String).void }
          attr_writer :meeting

          sig do
            params(self_: String, meeting: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Meeting` that was scheduled.
            meeting: nil
          )
          end

          sig { override.returns({ self_: String, meeting: String }) }
          def to_hash
          end
        end
      end

      class ActivityNoteCreated < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityNoteCreated,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(MoonbaseSDK::Activity::ActivityNoteCreated::Links) }
        attr_reader :links

        sig do
          params(
            links: MoonbaseSDK::Activity::ActivityNoteCreated::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/note_created`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Note` object that was created.
        sig { returns(T.nilable(MoonbaseSDK::Note)) }
        attr_reader :note

        sig { params(note: MoonbaseSDK::Note::OrHash).void }
        attr_writer :note

        # The `Item` this note is related to, if any.
        sig { returns(T.nilable(MoonbaseSDK::Item)) }
        attr_reader :related_item

        sig { params(related_item: MoonbaseSDK::Item::OrHash).void }
        attr_writer :related_item

        # The `Meeting` this note is related to, if any.
        sig { returns(T.nilable(MoonbaseSDK::Meeting)) }
        attr_reader :related_meeting

        sig { params(related_meeting: MoonbaseSDK::Meeting::OrHash).void }
        attr_writer :related_meeting

        # Represents an event that occurs when a `Note` is created.
        sig do
          params(
            id: String,
            links: MoonbaseSDK::Activity::ActivityNoteCreated::Links::OrHash,
            occurred_at: Time,
            note: MoonbaseSDK::Note::OrHash,
            related_item: MoonbaseSDK::Item::OrHash,
            related_meeting: MoonbaseSDK::Meeting::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Note` object that was created.
          note: nil,
          # The `Item` this note is related to, if any.
          related_item: nil,
          # The `Meeting` this note is related to, if any.
          related_meeting: nil,
          # The type of activity. Always `activity/note_created`.
          type: :"activity/note_created"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityNoteCreated::Links,
              occurred_at: Time,
              type: Symbol,
              note: MoonbaseSDK::Note,
              related_item: MoonbaseSDK::Item,
              related_meeting: MoonbaseSDK::Meeting
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityNoteCreated::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Note` that was created.
          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          # A link to the related `Item`.
          sig { returns(T.nilable(String)) }
          attr_reader :related_item

          sig { params(related_item: String).void }
          attr_writer :related_item

          # A link to the related `Meeting`.
          sig { returns(T.nilable(String)) }
          attr_reader :related_meeting

          sig { params(related_meeting: String).void }
          attr_writer :related_meeting

          sig do
            params(
              self_: String,
              note: String,
              related_item: String,
              related_meeting: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Note` that was created.
            note: nil,
            # A link to the related `Item`.
            related_item: nil,
            # A link to the related `Meeting`.
            related_meeting: nil
          )
          end

          sig do
            override.returns(
              {
                self_: String,
                note: String,
                related_item: String,
                related_meeting: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class ActivityProgramMessageBounced < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityProgramMessageBounced,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(MoonbaseSDK::Activity::ActivityProgramMessageBounced::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageBounced::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_bounced`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Address` of the recipient whose message bounced.
        sig { returns(T.nilable(MoonbaseSDK::Address)) }
        attr_reader :recipient

        sig { params(recipient: MoonbaseSDK::Address::OrHash).void }
        attr_writer :recipient

        # Represents an event that occurs when a `ProgramMessage` bounces.
        sig do
          params(
            id: String,
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageBounced::Links::OrHash,
            occurred_at: Time,
            recipient: MoonbaseSDK::Address::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Address` of the recipient whose message bounced.
          recipient: nil,
          # The type of activity. Always `activity/program_message_bounced`.
          type: :"activity/program_message_bounced"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links:
                MoonbaseSDK::Activity::ActivityProgramMessageBounced::Links,
              occurred_at: Time,
              type: Symbol,
              recipient: MoonbaseSDK::Address
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityProgramMessageBounced::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          sig { params(self_: String).returns(T.attached_class) }
          def self.new(
            # The canonical URL for this object.
            self_:
          )
          end

          sig { override.returns({ self_: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageClicked < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityProgramMessageClicked,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(MoonbaseSDK::Activity::ActivityProgramMessageClicked::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageClicked::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_clicked`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The text of the link that was clicked.
        sig { returns(T.nilable(String)) }
        attr_reader :link_text

        sig { params(link_text: String).void }
        attr_writer :link_text

        # The URL of the link that was clicked.
        sig { returns(T.nilable(String)) }
        attr_reader :link_url_unsafe

        sig { params(link_url_unsafe: String).void }
        attr_writer :link_url_unsafe

        # The `Address` of the recipient who clicked the link.
        sig { returns(T.nilable(MoonbaseSDK::Address)) }
        attr_reader :recipient

        sig { params(recipient: MoonbaseSDK::Address::OrHash).void }
        attr_writer :recipient

        # Represents an event that occurs when a recipient clicks a tracked link in a
        # `ProgramMessage`.
        sig do
          params(
            id: String,
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageClicked::Links::OrHash,
            occurred_at: Time,
            link_text: String,
            link_url_unsafe: String,
            recipient: MoonbaseSDK::Address::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The text of the link that was clicked.
          link_text: nil,
          # The URL of the link that was clicked.
          link_url_unsafe: nil,
          # The `Address` of the recipient who clicked the link.
          recipient: nil,
          # The type of activity. Always `activity/program_message_clicked`.
          type: :"activity/program_message_clicked"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links:
                MoonbaseSDK::Activity::ActivityProgramMessageClicked::Links,
              occurred_at: Time,
              type: Symbol,
              link_text: String,
              link_url_unsafe: String,
              recipient: MoonbaseSDK::Address
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityProgramMessageClicked::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          sig { params(self_: String).returns(T.attached_class) }
          def self.new(
            # The canonical URL for this object.
            self_:
          )
          end

          sig { override.returns({ self_: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageComplained < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityProgramMessageComplained,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            MoonbaseSDK::Activity::ActivityProgramMessageComplained::Links
          )
        end
        attr_reader :links

        sig do
          params(
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageComplained::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_complained`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Address` of the recipient who complained.
        sig { returns(T.nilable(MoonbaseSDK::Address)) }
        attr_reader :recipient

        sig { params(recipient: MoonbaseSDK::Address::OrHash).void }
        attr_writer :recipient

        # Represents an event that occurs when a recipient marks a `ProgramMessage` as
        # spam.
        sig do
          params(
            id: String,
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageComplained::Links::OrHash,
            occurred_at: Time,
            recipient: MoonbaseSDK::Address::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Address` of the recipient who complained.
          recipient: nil,
          # The type of activity. Always `activity/program_message_complained`.
          type: :"activity/program_message_complained"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links:
                MoonbaseSDK::Activity::ActivityProgramMessageComplained::Links,
              occurred_at: Time,
              type: Symbol,
              recipient: MoonbaseSDK::Address
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityProgramMessageComplained::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          sig { params(self_: String).returns(T.attached_class) }
          def self.new(
            # The canonical URL for this object.
            self_:
          )
          end

          sig { override.returns({ self_: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageFailed < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityProgramMessageFailed,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(MoonbaseSDK::Activity::ActivityProgramMessageFailed::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageFailed::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_failed`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Address` of the recipient whose message failed.
        sig { returns(T.nilable(MoonbaseSDK::Address)) }
        attr_reader :recipient

        sig { params(recipient: MoonbaseSDK::Address::OrHash).void }
        attr_writer :recipient

        # Represents an event that occurs when a `ProgramMessage` fails to be delivered
        # for a technical reason.
        sig do
          params(
            id: String,
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageFailed::Links::OrHash,
            occurred_at: Time,
            recipient: MoonbaseSDK::Address::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Address` of the recipient whose message failed.
          recipient: nil,
          # The type of activity. Always `activity/program_message_failed`.
          type: :"activity/program_message_failed"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityProgramMessageFailed::Links,
              occurred_at: Time,
              type: Symbol,
              recipient: MoonbaseSDK::Address
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityProgramMessageFailed::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          sig { params(self_: String).returns(T.attached_class) }
          def self.new(
            # The canonical URL for this object.
            self_:
          )
          end

          sig { override.returns({ self_: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageOpened < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityProgramMessageOpened,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(MoonbaseSDK::Activity::ActivityProgramMessageOpened::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageOpened::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_opened`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Address` of the recipient who opened the message.
        sig { returns(T.nilable(MoonbaseSDK::Address)) }
        attr_reader :recipient

        sig { params(recipient: MoonbaseSDK::Address::OrHash).void }
        attr_writer :recipient

        # Represents an event that occurs when a recipient opens a `ProgramMessage`.
        sig do
          params(
            id: String,
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageOpened::Links::OrHash,
            occurred_at: Time,
            recipient: MoonbaseSDK::Address::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Address` of the recipient who opened the message.
          recipient: nil,
          # The type of activity. Always `activity/program_message_opened`.
          type: :"activity/program_message_opened"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityProgramMessageOpened::Links,
              occurred_at: Time,
              type: Symbol,
              recipient: MoonbaseSDK::Address
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityProgramMessageOpened::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          sig { params(self_: String).returns(T.attached_class) }
          def self.new(
            # The canonical URL for this object.
            self_:
          )
          end

          sig { override.returns({ self_: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageSent < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityProgramMessageSent,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(MoonbaseSDK::Activity::ActivityProgramMessageSent::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageSent::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_sent`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Address` of the recipient the message was sent to.
        sig { returns(T.nilable(MoonbaseSDK::Address)) }
        attr_reader :recipient

        sig { params(recipient: MoonbaseSDK::Address::OrHash).void }
        attr_writer :recipient

        # Represents an event that occurs when a `ProgramMessage` is successfully sent.
        sig do
          params(
            id: String,
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageSent::Links::OrHash,
            occurred_at: Time,
            recipient: MoonbaseSDK::Address::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Address` of the recipient the message was sent to.
          recipient: nil,
          # The type of activity. Always `activity/program_message_sent`.
          type: :"activity/program_message_sent"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: MoonbaseSDK::Activity::ActivityProgramMessageSent::Links,
              occurred_at: Time,
              type: Symbol,
              recipient: MoonbaseSDK::Address
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityProgramMessageSent::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          sig { params(self_: String).returns(T.attached_class) }
          def self.new(
            # The canonical URL for this object.
            self_:
          )
          end

          sig { override.returns({ self_: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageShielded < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityProgramMessageShielded,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(MoonbaseSDK::Activity::ActivityProgramMessageShielded::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageShielded::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_shielded`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Address` of the recipient whose message was shielded.
        sig { returns(T.nilable(MoonbaseSDK::Address)) }
        attr_reader :recipient

        sig { params(recipient: MoonbaseSDK::Address::OrHash).void }
        attr_writer :recipient

        # Represents an event that occurs when a `ProgramMessage` is prevented from being
        # sent by a delivery protection rule.
        sig do
          params(
            id: String,
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageShielded::Links::OrHash,
            occurred_at: Time,
            recipient: MoonbaseSDK::Address::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Address` of the recipient whose message was shielded.
          recipient: nil,
          # The type of activity. Always `activity/program_message_shielded`.
          type: :"activity/program_message_shielded"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links:
                MoonbaseSDK::Activity::ActivityProgramMessageShielded::Links,
              occurred_at: Time,
              type: Symbol,
              recipient: MoonbaseSDK::Address
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityProgramMessageShielded::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          sig { params(self_: String).returns(T.attached_class) }
          def self.new(
            # The canonical URL for this object.
            self_:
          )
          end

          sig { override.returns({ self_: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageUnsubscribed < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed::Links
          )
        end
        attr_reader :links

        sig do
          params(
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_unsubscribed`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Address` of the recipient who unsubscribed.
        sig { returns(T.nilable(MoonbaseSDK::Address)) }
        attr_reader :recipient

        sig { params(recipient: MoonbaseSDK::Address::OrHash).void }
        attr_writer :recipient

        # Represents an event that occurs when a recipient unsubscribes after receiving a
        # `ProgramMessage`.
        sig do
          params(
            id: String,
            links:
              MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed::Links::OrHash,
            occurred_at: Time,
            recipient: MoonbaseSDK::Address::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Address` of the recipient who unsubscribed.
          recipient: nil,
          # The type of activity. Always `activity/program_message_unsubscribed`.
          type: :"activity/program_message_unsubscribed"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links:
                MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed::Links,
              occurred_at: Time,
              type: Symbol,
              recipient: MoonbaseSDK::Address
            }
          )
        end
        def to_hash
        end

        class Links < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Activity::ActivityProgramMessageUnsubscribed::Links,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          sig { params(self_: String).returns(T.attached_class) }
          def self.new(
            # The canonical URL for this object.
            self_:
          )
          end

          sig { override.returns({ self_: String }) }
          def to_hash
          end
        end
      end

      sig { override.returns(T::Array[MoonbaseSDK::Activity::Variants]) }
      def self.variants
      end
    end
  end
end
