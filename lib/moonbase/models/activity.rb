# frozen_string_literal: true

module Moonbase
  module Models
    # The Activity object represents a specific event that has occurred, such as a
    # meeting being scheduled or a form being submitted.
    #
    # Activities are polymorphic; the `type` field indicates the specific activity
    # that occurred, and the object will contain a property with a matching name that
    # holds the details of that event. For example, an `activity/meeting_held`
    # activity will contain a `meeting` property.
    #
    # @see Moonbase::Resources::Activities#retrieve
    module Activity
      extend Moonbase::Internal::Type::Union

      discriminator :type

      # Represents an event that occurs when an incoming or outgoing call is logged.
      variant :"activity/call_occurred", -> { Moonbase::Activity::ActivityCallOccurred }

      # Represents an event that occurs when a `Form` is submitted.
      variant :"activity/form_submitted", -> { Moonbase::Activity::ActivityFormSubmitted }

      # Represents an event that occurs when a message is sent from an `Inbox`.
      variant :"activity/inbox_message_sent", -> { Moonbase::Activity::ActivityInboxMessageSent }

      # Represents an event that occurs when an `Item` is created.
      variant :"activity/item_created", -> { Moonbase::Activity::ActivityItemCreated }

      # Represents an event that occurs when an `Item` is mentioned.
      variant :"activity/item_mentioned", -> { Moonbase::Activity::ActivityItemMentioned }

      # Represents an event that occurs when an `Item` is merged into another item.
      variant :"activity/item_merged", -> { Moonbase::Activity::ActivityItemMerged }

      # Represents an event that occurs when a `Meeting` has concluded.
      variant :"activity/meeting_held", -> { Moonbase::Activity::ActivityMeetingHeld }

      # Represents an event that occurs when a `Meeting` is scheduled.
      variant :"activity/meeting_scheduled", -> { Moonbase::Activity::ActivityMeetingScheduled }

      # Represents an event that occurs when a `Note` is created.
      variant :"activity/note_created", -> { Moonbase::Activity::ActivityNoteCreated }

      # Represents an event that occurs when a `ProgramMessage` bounces.
      variant :"activity/program_message_bounced", -> { Moonbase::Activity::ActivityProgramMessageBounced }

      # Represents an event that occurs when a recipient clicks a tracked link in a `ProgramMessage`.
      variant :"activity/program_message_clicked", -> { Moonbase::Activity::ActivityProgramMessageClicked }

      # Represents an event that occurs when a recipient marks a `ProgramMessage` as spam.
      variant :"activity/program_message_complained",
              -> { Moonbase::Activity::ActivityProgramMessageComplained }

      # Represents an event that occurs when a `ProgramMessage` fails to be delivered for a technical reason.
      variant :"activity/program_message_failed", -> { Moonbase::Activity::ActivityProgramMessageFailed }

      # Represents an event that occurs when a recipient opens a `ProgramMessage`.
      variant :"activity/program_message_opened", -> { Moonbase::Activity::ActivityProgramMessageOpened }

      # Represents an event that occurs when a `ProgramMessage` is successfully sent.
      variant :"activity/program_message_sent", -> { Moonbase::Activity::ActivityProgramMessageSent }

      # Represents an event that occurs when a `ProgramMessage` is prevented from being sent by a delivery protection rule.
      variant :"activity/program_message_shielded", -> { Moonbase::Activity::ActivityProgramMessageShielded }

      # Represents an event that occurs when a recipient unsubscribes after receiving a `ProgramMessage`.
      variant :"activity/program_message_unsubscribed",
              -> { Moonbase::Activity::ActivityProgramMessageUnsubscribed }

      class ActivityCallOccurred < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityCallOccurred::Links]
        required :links, -> { Moonbase::Activity::ActivityCallOccurred::Links }

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
        #   @return [Moonbase::Models::Activity::ActivityCallOccurred::Call, nil]
        optional :call, -> { Moonbase::Activity::ActivityCallOccurred::Call }

        # @!method initialize(id:, links:, occurred_at:, call: nil, type: :"activity/call_occurred")
        #   Represents an event that occurs when an incoming or outgoing call is logged.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityCallOccurred::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param call [Moonbase::Models::Activity::ActivityCallOccurred::Call] The `Call` object associated with this event.
        #
        #   @param type [Symbol, :"activity/call_occurred"] The type of activity. Always `activity/call_occurred`.

        # @see Moonbase::Models::Activity::ActivityCallOccurred#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(self_:)
          #   @param self_ [String] The canonical URL for this object.
        end

        # @see Moonbase::Models::Activity::ActivityCallOccurred#call
        class Call < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   The `Call` object associated with this event.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityFormSubmitted < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityFormSubmitted::Links]
        required :links, -> { Moonbase::Activity::ActivityFormSubmitted::Links }

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
        #   @return [Moonbase::Models::Activity::ActivityFormSubmitted::Collection, nil]
        optional :collection, -> { Moonbase::Activity::ActivityFormSubmitted::Collection }

        # @!attribute related_item
        #
        #   @return [Moonbase::Models::Activity::ActivityFormSubmitted::RelatedItem, nil]
        optional :related_item, -> { Moonbase::Activity::ActivityFormSubmitted::RelatedItem }

        # @!method initialize(id:, links:, occurred_at:, collection: nil, related_item: nil, type: :"activity/form_submitted")
        #   Represents an event that occurs when a `Form` is submitted.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityFormSubmitted::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param collection [Moonbase::Models::Activity::ActivityFormSubmitted::Collection] The `Collection` the new item was added to.
        #
        #   @param related_item [Moonbase::Models::Activity::ActivityFormSubmitted::RelatedItem]
        #
        #   @param type [Symbol, :"activity/form_submitted"] The type of activity. Always `activity/form_submitted`.

        # @see Moonbase::Models::Activity::ActivityFormSubmitted#links
        class Links < Moonbase::Internal::Type::BaseModel
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

        # @see Moonbase::Models::Activity::ActivityFormSubmitted#collection
        class Collection < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   The `Collection` the new item was added to.
          #
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityFormSubmitted#related_item
        class RelatedItem < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityInboxMessageSent < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityInboxMessageSent::Links]
        required :links, -> { Moonbase::Activity::ActivityInboxMessageSent::Links }

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
        #   @return [Moonbase::Models::Activity::ActivityInboxMessageSent::Message, nil]
        optional :message, -> { Moonbase::Activity::ActivityInboxMessageSent::Message }

        # @!method initialize(id:, links:, occurred_at:, message: nil, type: :"activity/inbox_message_sent")
        #   Represents an event that occurs when a message is sent from an `Inbox`.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityInboxMessageSent::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param message [Moonbase::Models::Activity::ActivityInboxMessageSent::Message] The `EmailMessage` that was sent.
        #
        #   @param type [Symbol, :"activity/inbox_message_sent"] The type of activity. Always `activity/inbox_message_sent`.

        # @see Moonbase::Models::Activity::ActivityInboxMessageSent#links
        class Links < Moonbase::Internal::Type::BaseModel
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

        # @see Moonbase::Models::Activity::ActivityInboxMessageSent#message
        class Message < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   The `EmailMessage` that was sent.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityItemCreated < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityItemCreated::Links]
        required :links, -> { Moonbase::Activity::ActivityItemCreated::Links }

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
        #   @return [Moonbase::Models::Activity::ActivityItemCreated::Collection, nil]
        optional :collection, -> { Moonbase::Activity::ActivityItemCreated::Collection }

        # @!attribute created_item
        #
        #   @return [Moonbase::Models::Activity::ActivityItemCreated::CreatedItem, nil]
        optional :created_item, -> { Moonbase::Activity::ActivityItemCreated::CreatedItem }

        # @!method initialize(id:, links:, occurred_at:, collection: nil, created_item: nil, type: :"activity/item_created")
        #   Represents an event that occurs when an `Item` is created.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityItemCreated::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param collection [Moonbase::Models::Activity::ActivityItemCreated::Collection] The `Collection` the item was added to.
        #
        #   @param created_item [Moonbase::Models::Activity::ActivityItemCreated::CreatedItem]
        #
        #   @param type [Symbol, :"activity/item_created"] The type of activity. Always `activity/item_created`.

        # @see Moonbase::Models::Activity::ActivityItemCreated#links
        class Links < Moonbase::Internal::Type::BaseModel
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

        # @see Moonbase::Models::Activity::ActivityItemCreated#collection
        class Collection < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   The `Collection` the item was added to.
          #
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityItemCreated#created_item
        class CreatedItem < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityItemMentioned < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityItemMentioned::Links]
        required :links, -> { Moonbase::Activity::ActivityItemMentioned::Links }

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

        # @!attribute author
        #
        #   @return [Moonbase::Models::Activity::ActivityItemMentioned::Author, nil]
        optional :author, -> { Moonbase::Activity::ActivityItemMentioned::Author }

        # @!attribute mentioned_item
        #
        #   @return [Moonbase::Models::Activity::ActivityItemMentioned::MentionedItem, nil]
        optional :mentioned_item, -> { Moonbase::Activity::ActivityItemMentioned::MentionedItem }

        # @!attribute note
        #
        #   @return [Moonbase::Models::Activity::ActivityItemMentioned::Note, nil]
        optional :note, -> { Moonbase::Activity::ActivityItemMentioned::Note }

        # @!method initialize(id:, links:, occurred_at:, author: nil, mentioned_item: nil, note: nil, type: :"activity/item_mentioned")
        #   Represents an event that occurs when an `Item` is mentioned.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityItemMentioned::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param author [Moonbase::Models::Activity::ActivityItemMentioned::Author]
        #
        #   @param mentioned_item [Moonbase::Models::Activity::ActivityItemMentioned::MentionedItem]
        #
        #   @param note [Moonbase::Models::Activity::ActivityItemMentioned::Note]
        #
        #   @param type [Symbol, :"activity/item_mentioned"] The type of activity. Always `activity/item_mentioned`.

        # @see Moonbase::Models::Activity::ActivityItemMentioned#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute author
          #   A link to the `Person` who mentioned the item.
          #
          #   @return [String, nil]
          optional :author, String

          # @!attribute item
          #   A link to the `Item` that was mentioned.
          #
          #   @return [String, nil]
          optional :item, String

          # @!attribute note
          #   A link to the `Note` where the item was mentioned.
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(self_:, author: nil, item: nil, note: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param author [String] A link to the `Person` who mentioned the item.
          #
          #   @param item [String] A link to the `Item` that was mentioned.
          #
          #   @param note [String] A link to the `Note` where the item was mentioned.
        end

        # @see Moonbase::Models::Activity::ActivityItemMentioned#author
        class Author < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityItemMentioned#mentioned_item
        class MentionedItem < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityItemMentioned#note
        class Note < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityItemMerged < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityItemMerged::Links]
        required :links, -> { Moonbase::Activity::ActivityItemMerged::Links }

        # @!attribute occurred_at
        #   The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute type
        #   The type of activity. Always `activity/item_merged`.
        #
        #   @return [Symbol, :"activity/item_merged"]
        required :type, const: :"activity/item_merged"

        # @!attribute destination
        #   A pointer to the `Item` that the data was merged into.
        #
        #   @return [Moonbase::Models::Activity::ActivityItemMerged::Destination, nil]
        optional :destination, -> { Moonbase::Activity::ActivityItemMerged::Destination }

        # @!attribute initiator
        #   The person that performed the merge.
        #
        #   @return [Moonbase::Models::Activity::ActivityItemMerged::Initiator, nil]
        optional :initiator, -> { Moonbase::Activity::ActivityItemMerged::Initiator }

        # @!attribute source
        #   A pointer to the source `Item`.
        #
        #   @return [Moonbase::Models::Activity::ActivityItemMerged::Source, nil]
        optional :source, -> { Moonbase::Activity::ActivityItemMerged::Source }

        # @!method initialize(id:, links:, occurred_at:, destination: nil, initiator: nil, source: nil, type: :"activity/item_merged")
        #   Represents an event that occurs when an `Item` is merged into another item.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityItemMerged::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param destination [Moonbase::Models::Activity::ActivityItemMerged::Destination] A pointer to the `Item` that the data was merged into.
        #
        #   @param initiator [Moonbase::Models::Activity::ActivityItemMerged::Initiator] The person that performed the merge.
        #
        #   @param source [Moonbase::Models::Activity::ActivityItemMerged::Source] A pointer to the source `Item`.
        #
        #   @param type [Symbol, :"activity/item_merged"] The type of activity. Always `activity/item_merged`.

        # @see Moonbase::Models::Activity::ActivityItemMerged#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute destination
          #   A link to the `Item` that received the data from the source.
          #
          #   @return [String, nil]
          optional :destination, String

          # @!attribute initiator
          #   A link to the person that performed the merge.
          #
          #   @return [String, nil]
          optional :initiator, String

          # @!method initialize(self_:, destination: nil, initiator: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param destination [String] A link to the `Item` that received the data from the source.
          #
          #   @param initiator [String] A link to the person that performed the merge.
        end

        # @see Moonbase::Models::Activity::ActivityItemMerged#destination
        class Destination < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   A pointer to the `Item` that the data was merged into.
          #
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityItemMerged#initiator
        class Initiator < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   The person that performed the merge.
          #
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityItemMerged#source
        class Source < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   A pointer to the source `Item`.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityMeetingHeld < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityMeetingHeld::Links]
        required :links, -> { Moonbase::Activity::ActivityMeetingHeld::Links }

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

        # @!attribute meeting
        #   The `Meeting` object associated with this event.
        #
        #   @return [Moonbase::Models::Activity::ActivityMeetingHeld::Meeting, nil]
        optional :meeting, -> { Moonbase::Activity::ActivityMeetingHeld::Meeting }

        # @!method initialize(id:, links:, occurred_at:, meeting: nil, type: :"activity/meeting_held")
        #   Represents an event that occurs when a `Meeting` has concluded.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityMeetingHeld::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param meeting [Moonbase::Models::Activity::ActivityMeetingHeld::Meeting] The `Meeting` object associated with this event.
        #
        #   @param type [Symbol, :"activity/meeting_held"] The type of activity. Always `activity/meeting_held`.

        # @see Moonbase::Models::Activity::ActivityMeetingHeld#links
        class Links < Moonbase::Internal::Type::BaseModel
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

        # @see Moonbase::Models::Activity::ActivityMeetingHeld#meeting
        class Meeting < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   The `Meeting` object associated with this event.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityMeetingScheduled < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityMeetingScheduled::Links]
        required :links, -> { Moonbase::Activity::ActivityMeetingScheduled::Links }

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

        # @!attribute meeting
        #   The `Meeting` object associated with this event.
        #
        #   @return [Moonbase::Models::Activity::ActivityMeetingScheduled::Meeting, nil]
        optional :meeting, -> { Moonbase::Activity::ActivityMeetingScheduled::Meeting }

        # @!method initialize(id:, links:, occurred_at:, meeting: nil, type: :"activity/meeting_scheduled")
        #   Represents an event that occurs when a `Meeting` is scheduled.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityMeetingScheduled::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param meeting [Moonbase::Models::Activity::ActivityMeetingScheduled::Meeting] The `Meeting` object associated with this event.
        #
        #   @param type [Symbol, :"activity/meeting_scheduled"] The type of activity. Always `activity/meeting_scheduled`.

        # @see Moonbase::Models::Activity::ActivityMeetingScheduled#links
        class Links < Moonbase::Internal::Type::BaseModel
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

        # @see Moonbase::Models::Activity::ActivityMeetingScheduled#meeting
        class Meeting < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   The `Meeting` object associated with this event.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityNoteCreated < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityNoteCreated::Links]
        required :links, -> { Moonbase::Activity::ActivityNoteCreated::Links }

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
        #   @return [Moonbase::Models::Activity::ActivityNoteCreated::Note, nil]
        optional :note, -> { Moonbase::Activity::ActivityNoteCreated::Note }

        # @!attribute related_item
        #   The `Item` this note is related to, if any.
        #
        #   @return [Moonbase::Models::Activity::ActivityNoteCreated::RelatedItem, nil]
        optional :related_item, -> { Moonbase::Activity::ActivityNoteCreated::RelatedItem }

        # @!attribute related_meeting
        #   The `Meeting` this note is related to, if any.
        #
        #   @return [Moonbase::Models::Activity::ActivityNoteCreated::RelatedMeeting, nil]
        optional :related_meeting, -> { Moonbase::Activity::ActivityNoteCreated::RelatedMeeting }

        # @!method initialize(id:, links:, occurred_at:, note: nil, related_item: nil, related_meeting: nil, type: :"activity/note_created")
        #   Represents an event that occurs when a `Note` is created.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityNoteCreated::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param note [Moonbase::Models::Activity::ActivityNoteCreated::Note] The `Note` object that was created.
        #
        #   @param related_item [Moonbase::Models::Activity::ActivityNoteCreated::RelatedItem] The `Item` this note is related to, if any.
        #
        #   @param related_meeting [Moonbase::Models::Activity::ActivityNoteCreated::RelatedMeeting] The `Meeting` this note is related to, if any.
        #
        #   @param type [Symbol, :"activity/note_created"] The type of activity. Always `activity/note_created`.

        # @see Moonbase::Models::Activity::ActivityNoteCreated#links
        class Links < Moonbase::Internal::Type::BaseModel
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

        # @see Moonbase::Models::Activity::ActivityNoteCreated#note
        class Note < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   The `Note` object that was created.
          #
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityNoteCreated#related_item
        class RelatedItem < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   The `Item` this note is related to, if any.
          #
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityNoteCreated#related_meeting
        class RelatedMeeting < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   The `Meeting` this note is related to, if any.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityProgramMessageBounced < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageBounced::Links]
        required :links, -> { Moonbase::Activity::ActivityProgramMessageBounced::Links }

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

        # @!attribute bounce_type
        #
        #   @return [String, nil]
        optional :bounce_type, String

        # @!attribute bounced_recipient_emails
        #
        #   @return [Array<String>, nil]
        optional :bounced_recipient_emails, Moonbase::Internal::Type::ArrayOf[String]

        # @!attribute program_message
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageBounced::ProgramMessage, nil]
        optional :program_message, -> { Moonbase::Activity::ActivityProgramMessageBounced::ProgramMessage }

        # @!attribute recipient
        #   A link to the `Address` of the recipient whose message bounced.
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageBounced::Recipient, nil]
        optional :recipient, -> { Moonbase::Activity::ActivityProgramMessageBounced::Recipient }

        # @!method initialize(id:, links:, occurred_at:, bounce_type: nil, bounced_recipient_emails: nil, program_message: nil, recipient: nil, type: :"activity/program_message_bounced")
        #   Represents an event that occurs when a `ProgramMessage` bounces.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityProgramMessageBounced::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param bounce_type [String]
        #
        #   @param bounced_recipient_emails [Array<String>]
        #
        #   @param program_message [Moonbase::Models::Activity::ActivityProgramMessageBounced::ProgramMessage]
        #
        #   @param recipient [Moonbase::Models::Activity::ActivityProgramMessageBounced::Recipient] A link to the `Address` of the recipient whose message bounced.
        #
        #   @param type [Symbol, :"activity/program_message_bounced"] The type of activity. Always `activity/program_message_bounced`.

        # @see Moonbase::Models::Activity::ActivityProgramMessageBounced#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute recipient
          #   A link to the `Address` of the recipient whose message bounced.
          #
          #   @return [String, nil]
          optional :recipient, String

          # @!method initialize(self_:, recipient: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param recipient [String] A link to the `Address` of the recipient whose message bounced.
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageBounced#program_message
        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageBounced#recipient
        class Recipient < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   A link to the `Address` of the recipient whose message bounced.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityProgramMessageClicked < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageClicked::Links]
        required :links, -> { Moonbase::Activity::ActivityProgramMessageClicked::Links }

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

        # @!attribute program_message
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageClicked::ProgramMessage, nil]
        optional :program_message, -> { Moonbase::Activity::ActivityProgramMessageClicked::ProgramMessage }

        # @!attribute recipient
        #   A link to the `Address` of the recipient who clicked the link.
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageClicked::Recipient, nil]
        optional :recipient, -> { Moonbase::Activity::ActivityProgramMessageClicked::Recipient }

        # @!method initialize(id:, links:, occurred_at:, link_text: nil, link_url_unsafe: nil, program_message: nil, recipient: nil, type: :"activity/program_message_clicked")
        #   Represents an event that occurs when a recipient clicks a tracked link in a
        #   `ProgramMessage`.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityProgramMessageClicked::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param link_text [String] The text of the link that was clicked.
        #
        #   @param link_url_unsafe [String] The URL of the link that was clicked.
        #
        #   @param program_message [Moonbase::Models::Activity::ActivityProgramMessageClicked::ProgramMessage]
        #
        #   @param recipient [Moonbase::Models::Activity::ActivityProgramMessageClicked::Recipient] A link to the `Address` of the recipient who clicked the link.
        #
        #   @param type [Symbol, :"activity/program_message_clicked"] The type of activity. Always `activity/program_message_clicked`.

        # @see Moonbase::Models::Activity::ActivityProgramMessageClicked#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute recipient
          #   A link to the `Address` of the recipient who clicked the link.
          #
          #   @return [String, nil]
          optional :recipient, String

          # @!method initialize(self_:, recipient: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param recipient [String] A link to the `Address` of the recipient who clicked the link.
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageClicked#program_message
        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageClicked#recipient
        class Recipient < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   A link to the `Address` of the recipient who clicked the link.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityProgramMessageComplained < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageComplained::Links]
        required :links, -> { Moonbase::Activity::ActivityProgramMessageComplained::Links }

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

        # @!attribute program_message
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageComplained::ProgramMessage, nil]
        optional :program_message, -> { Moonbase::Activity::ActivityProgramMessageComplained::ProgramMessage }

        # @!attribute recipient
        #   A link to the `Address` of the recipient who complained.
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageComplained::Recipient, nil]
        optional :recipient, -> { Moonbase::Activity::ActivityProgramMessageComplained::Recipient }

        # @!method initialize(id:, links:, occurred_at:, program_message: nil, recipient: nil, type: :"activity/program_message_complained")
        #   Represents an event that occurs when a recipient marks a `ProgramMessage` as
        #   spam.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityProgramMessageComplained::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param program_message [Moonbase::Models::Activity::ActivityProgramMessageComplained::ProgramMessage]
        #
        #   @param recipient [Moonbase::Models::Activity::ActivityProgramMessageComplained::Recipient] A link to the `Address` of the recipient who complained.
        #
        #   @param type [Symbol, :"activity/program_message_complained"] The type of activity. Always `activity/program_message_complained`.

        # @see Moonbase::Models::Activity::ActivityProgramMessageComplained#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute recipient
          #   A link to the `Address` of the recipient who complained.
          #
          #   @return [String, nil]
          optional :recipient, String

          # @!method initialize(self_:, recipient: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param recipient [String] A link to the `Address` of the recipient who complained.
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageComplained#program_message
        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageComplained#recipient
        class Recipient < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   A link to the `Address` of the recipient who complained.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityProgramMessageFailed < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageFailed::Links]
        required :links, -> { Moonbase::Activity::ActivityProgramMessageFailed::Links }

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

        # @!attribute program_message
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageFailed::ProgramMessage, nil]
        optional :program_message, -> { Moonbase::Activity::ActivityProgramMessageFailed::ProgramMessage }

        # @!attribute reason_code
        #
        #   @return [String, nil]
        optional :reason_code, String

        # @!attribute recipient
        #   A link to the `Address` of the recipient whose message failed.
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageFailed::Recipient, nil]
        optional :recipient, -> { Moonbase::Activity::ActivityProgramMessageFailed::Recipient }

        # @!method initialize(id:, links:, occurred_at:, program_message: nil, reason_code: nil, recipient: nil, type: :"activity/program_message_failed")
        #   Represents an event that occurs when a `ProgramMessage` fails to be delivered
        #   for a technical reason.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityProgramMessageFailed::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param program_message [Moonbase::Models::Activity::ActivityProgramMessageFailed::ProgramMessage]
        #
        #   @param reason_code [String]
        #
        #   @param recipient [Moonbase::Models::Activity::ActivityProgramMessageFailed::Recipient] A link to the `Address` of the recipient whose message failed.
        #
        #   @param type [Symbol, :"activity/program_message_failed"] The type of activity. Always `activity/program_message_failed`.

        # @see Moonbase::Models::Activity::ActivityProgramMessageFailed#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute recipient
          #   A link to the `Address` of the recipient whose message failed.
          #
          #   @return [String, nil]
          optional :recipient, String

          # @!method initialize(self_:, recipient: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param recipient [String] A link to the `Address` of the recipient whose message failed.
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageFailed#program_message
        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageFailed#recipient
        class Recipient < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   A link to the `Address` of the recipient whose message failed.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityProgramMessageOpened < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageOpened::Links]
        required :links, -> { Moonbase::Activity::ActivityProgramMessageOpened::Links }

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

        # @!attribute program_message
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageOpened::ProgramMessage, nil]
        optional :program_message, -> { Moonbase::Activity::ActivityProgramMessageOpened::ProgramMessage }

        # @!attribute recipient
        #   A link to the `Address` of the recipient who opened the message.
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageOpened::Recipient, nil]
        optional :recipient, -> { Moonbase::Activity::ActivityProgramMessageOpened::Recipient }

        # @!method initialize(id:, links:, occurred_at:, program_message: nil, recipient: nil, type: :"activity/program_message_opened")
        #   Represents an event that occurs when a recipient opens a `ProgramMessage`.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityProgramMessageOpened::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param program_message [Moonbase::Models::Activity::ActivityProgramMessageOpened::ProgramMessage]
        #
        #   @param recipient [Moonbase::Models::Activity::ActivityProgramMessageOpened::Recipient] A link to the `Address` of the recipient who opened the message.
        #
        #   @param type [Symbol, :"activity/program_message_opened"] The type of activity. Always `activity/program_message_opened`.

        # @see Moonbase::Models::Activity::ActivityProgramMessageOpened#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute recipient
          #   A link to the `Address` of the recipient who opened the message.
          #
          #   @return [String, nil]
          optional :recipient, String

          # @!method initialize(self_:, recipient: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param recipient [String] A link to the `Address` of the recipient who opened the message.
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageOpened#program_message
        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageOpened#recipient
        class Recipient < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   A link to the `Address` of the recipient who opened the message.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityProgramMessageSent < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageSent::Links]
        required :links, -> { Moonbase::Activity::ActivityProgramMessageSent::Links }

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

        # @!attribute program_message
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageSent::ProgramMessage, nil]
        optional :program_message, -> { Moonbase::Activity::ActivityProgramMessageSent::ProgramMessage }

        # @!attribute recipient
        #   A link to the `Address` of the recipient the message was sent to.
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageSent::Recipient, nil]
        optional :recipient, -> { Moonbase::Activity::ActivityProgramMessageSent::Recipient }

        # @!attribute recipient_emails
        #
        #   @return [Array<String>, nil]
        optional :recipient_emails, Moonbase::Internal::Type::ArrayOf[String]

        # @!method initialize(id:, links:, occurred_at:, program_message: nil, recipient: nil, recipient_emails: nil, type: :"activity/program_message_sent")
        #   Represents an event that occurs when a `ProgramMessage` is successfully sent.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityProgramMessageSent::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param program_message [Moonbase::Models::Activity::ActivityProgramMessageSent::ProgramMessage]
        #
        #   @param recipient [Moonbase::Models::Activity::ActivityProgramMessageSent::Recipient] A link to the `Address` of the recipient the message was sent to.
        #
        #   @param recipient_emails [Array<String>]
        #
        #   @param type [Symbol, :"activity/program_message_sent"] The type of activity. Always `activity/program_message_sent`.

        # @see Moonbase::Models::Activity::ActivityProgramMessageSent#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute recipient
          #   A link to the `Address` of the recipient the message was sent to.
          #
          #   @return [String, nil]
          optional :recipient, String

          # @!method initialize(self_:, recipient: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param recipient [String] A link to the `Address` of the recipient the message was sent to.
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageSent#program_message
        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageSent#recipient
        class Recipient < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   A link to the `Address` of the recipient the message was sent to.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityProgramMessageShielded < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageShielded::Links]
        required :links, -> { Moonbase::Activity::ActivityProgramMessageShielded::Links }

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

        # @!attribute program_message
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageShielded::ProgramMessage, nil]
        optional :program_message, -> { Moonbase::Activity::ActivityProgramMessageShielded::ProgramMessage }

        # @!attribute reason_code
        #
        #   @return [String, nil]
        optional :reason_code, String

        # @!attribute recipient
        #   A link to the `Address` of the recipient whose message was shielded.
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageShielded::Recipient, nil]
        optional :recipient, -> { Moonbase::Activity::ActivityProgramMessageShielded::Recipient }

        # @!method initialize(id:, links:, occurred_at:, program_message: nil, reason_code: nil, recipient: nil, type: :"activity/program_message_shielded")
        #   Represents an event that occurs when a `ProgramMessage` is prevented from being
        #   sent by a delivery protection rule.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityProgramMessageShielded::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param program_message [Moonbase::Models::Activity::ActivityProgramMessageShielded::ProgramMessage]
        #
        #   @param reason_code [String]
        #
        #   @param recipient [Moonbase::Models::Activity::ActivityProgramMessageShielded::Recipient] A link to the `Address` of the recipient whose message was shielded.
        #
        #   @param type [Symbol, :"activity/program_message_shielded"] The type of activity. Always `activity/program_message_shielded`.

        # @see Moonbase::Models::Activity::ActivityProgramMessageShielded#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute recipient
          #   A link to the `Address` of the recipient whose message was shielded.
          #
          #   @return [String, nil]
          optional :recipient, String

          # @!method initialize(self_:, recipient: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param recipient [String] A link to the `Address` of the recipient whose message was shielded.
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageShielded#program_message
        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageShielded#recipient
        class Recipient < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   A link to the `Address` of the recipient whose message was shielded.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      class ActivityProgramMessageUnsubscribed < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed::Links]
        required :links, -> { Moonbase::Activity::ActivityProgramMessageUnsubscribed::Links }

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

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute program_message
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed::ProgramMessage, nil]
        optional :program_message, -> { Moonbase::Activity::ActivityProgramMessageUnsubscribed::ProgramMessage }

        # @!attribute recipient
        #   A link to the `Address` of the recipient who unsubscribed.
        #
        #   @return [Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed::Recipient, nil]
        optional :recipient, -> { Moonbase::Activity::ActivityProgramMessageUnsubscribed::Recipient }

        # @!method initialize(id:, links:, occurred_at:, email: nil, program_message: nil, recipient: nil, type: :"activity/program_message_unsubscribed")
        #   Represents an event that occurs when a recipient unsubscribes after receiving a
        #   `ProgramMessage`.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param links [Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed::Links]
        #
        #   @param occurred_at [Time] The time at which the event occurred, as an RFC 3339 timestamp.
        #
        #   @param email [String]
        #
        #   @param program_message [Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed::ProgramMessage]
        #
        #   @param recipient [Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed::Recipient] A link to the `Address` of the recipient who unsubscribed.
        #
        #   @param type [Symbol, :"activity/program_message_unsubscribed"] The type of activity. Always `activity/program_message_unsubscribed`.

        # @see Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed#links
        class Links < Moonbase::Internal::Type::BaseModel
          # @!attribute self_
          #   The canonical URL for this object.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!attribute recipient
          #   A link to the `Address` of the recipient who unsubscribed.
          #
          #   @return [String, nil]
          optional :recipient, String

          # @!method initialize(self_:, recipient: nil)
          #   @param self_ [String] The canonical URL for this object.
          #
          #   @param recipient [String] A link to the `Address` of the recipient who unsubscribed.
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed#program_message
        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   @param id [String]
          #   @param type [String]
        end

        # @see Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed#recipient
        class Recipient < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, type:)
          #   A link to the `Address` of the recipient who unsubscribed.
          #
          #   @param id [String]
          #   @param type [String]
        end
      end

      # @!method self.variants
      #   @return [Array(Moonbase::Models::Activity::ActivityCallOccurred, Moonbase::Models::Activity::ActivityFormSubmitted, Moonbase::Models::Activity::ActivityInboxMessageSent, Moonbase::Models::Activity::ActivityItemCreated, Moonbase::Models::Activity::ActivityItemMentioned, Moonbase::Models::Activity::ActivityItemMerged, Moonbase::Models::Activity::ActivityMeetingHeld, Moonbase::Models::Activity::ActivityMeetingScheduled, Moonbase::Models::Activity::ActivityNoteCreated, Moonbase::Models::Activity::ActivityProgramMessageBounced, Moonbase::Models::Activity::ActivityProgramMessageClicked, Moonbase::Models::Activity::ActivityProgramMessageComplained, Moonbase::Models::Activity::ActivityProgramMessageFailed, Moonbase::Models::Activity::ActivityProgramMessageOpened, Moonbase::Models::Activity::ActivityProgramMessageSent, Moonbase::Models::Activity::ActivityProgramMessageShielded, Moonbase::Models::Activity::ActivityProgramMessageUnsubscribed)]
    end
  end
end
