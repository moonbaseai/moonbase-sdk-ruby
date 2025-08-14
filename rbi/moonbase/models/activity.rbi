# typed: strong

module Moonbase
  module Models
    # The Activity object represents a specific event that has occurred, such as a
    # meeting being scheduled or a form being submitted.
    #
    # Activities are polymorphic; the `type` field indicates the specific activity
    # that occurred, and the object will contain a property with a matching name that
    # holds the details of that event. For example, an `activity/meeting_held`
    # activity will contain a `meeting` property.
    module Activity
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::Activity::ActivityCallOccurred,
            Moonbase::Activity::ActivityFormSubmitted,
            Moonbase::Activity::ActivityInboxMessageSent,
            Moonbase::Activity::ActivityItemCreated,
            Moonbase::Activity::ActivityItemMentioned,
            Moonbase::Activity::ActivityItemMerged,
            Moonbase::Activity::ActivityMeetingHeld,
            Moonbase::Activity::ActivityMeetingScheduled,
            Moonbase::Activity::ActivityNoteCreated,
            Moonbase::Activity::ActivityProgramMessageBounced,
            Moonbase::Activity::ActivityProgramMessageClicked,
            Moonbase::Activity::ActivityProgramMessageComplained,
            Moonbase::Activity::ActivityProgramMessageFailed,
            Moonbase::Activity::ActivityProgramMessageOpened,
            Moonbase::Activity::ActivityProgramMessageSent,
            Moonbase::Activity::ActivityProgramMessageShielded,
            Moonbase::Activity::ActivityProgramMessageUnsubscribed
          )
        end

      class ActivityCallOccurred < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityCallOccurred,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityCallOccurred::Links) }
        attr_reader :links

        sig do
          params(
            links: Moonbase::Activity::ActivityCallOccurred::Links::OrHash
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
        sig do
          returns(T.nilable(Moonbase::Activity::ActivityCallOccurred::Call))
        end
        attr_reader :call

        sig do
          params(
            call: Moonbase::Activity::ActivityCallOccurred::Call::OrHash
          ).void
        end
        attr_writer :call

        # Represents an event that occurs when an incoming or outgoing call is logged.
        sig do
          params(
            id: String,
            links: Moonbase::Activity::ActivityCallOccurred::Links::OrHash,
            occurred_at: Time,
            call: Moonbase::Activity::ActivityCallOccurred::Call::OrHash,
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
              links: Moonbase::Activity::ActivityCallOccurred::Links,
              occurred_at: Time,
              type: Symbol,
              call: Moonbase::Activity::ActivityCallOccurred::Call
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityCallOccurred::Links,
                Moonbase::Internal::AnyHash
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

        class Call < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityCallOccurred::Call,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # The `Call` object associated with this event.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityFormSubmitted < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityFormSubmitted,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityFormSubmitted::Links) }
        attr_reader :links

        sig do
          params(
            links: Moonbase::Activity::ActivityFormSubmitted::Links::OrHash
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
        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityFormSubmitted::Collection)
          )
        end
        attr_reader :collection

        sig do
          params(
            collection:
              Moonbase::Activity::ActivityFormSubmitted::Collection::OrHash
          ).void
        end
        attr_writer :collection

        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityFormSubmitted::RelatedItem)
          )
        end
        attr_reader :related_item

        sig do
          params(
            related_item:
              Moonbase::Activity::ActivityFormSubmitted::RelatedItem::OrHash
          ).void
        end
        attr_writer :related_item

        # Represents an event that occurs when a `Form` is submitted.
        sig do
          params(
            id: String,
            links: Moonbase::Activity::ActivityFormSubmitted::Links::OrHash,
            occurred_at: Time,
            collection:
              Moonbase::Activity::ActivityFormSubmitted::Collection::OrHash,
            related_item:
              Moonbase::Activity::ActivityFormSubmitted::RelatedItem::OrHash,
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
          related_item: nil,
          # The type of activity. Always `activity/form_submitted`.
          type: :"activity/form_submitted"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityFormSubmitted::Links,
              occurred_at: Time,
              type: Symbol,
              collection: Moonbase::Activity::ActivityFormSubmitted::Collection,
              related_item:
                Moonbase::Activity::ActivityFormSubmitted::RelatedItem
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityFormSubmitted::Links,
                Moonbase::Internal::AnyHash
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

        class Collection < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityFormSubmitted::Collection,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # The `Collection` the new item was added to.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class RelatedItem < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityFormSubmitted::RelatedItem,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityInboxMessageSent < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityInboxMessageSent,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityInboxMessageSent::Links) }
        attr_reader :links

        sig do
          params(
            links: Moonbase::Activity::ActivityInboxMessageSent::Links::OrHash
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
        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityInboxMessageSent::Message)
          )
        end
        attr_reader :message

        sig do
          params(
            message:
              Moonbase::Activity::ActivityInboxMessageSent::Message::OrHash
          ).void
        end
        attr_writer :message

        # Represents an event that occurs when a message is sent from an `Inbox`.
        sig do
          params(
            id: String,
            links: Moonbase::Activity::ActivityInboxMessageSent::Links::OrHash,
            occurred_at: Time,
            message:
              Moonbase::Activity::ActivityInboxMessageSent::Message::OrHash,
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
          # The type of activity. Always `activity/inbox_message_sent`.
          type: :"activity/inbox_message_sent"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityInboxMessageSent::Links,
              occurred_at: Time,
              type: Symbol,
              message: Moonbase::Activity::ActivityInboxMessageSent::Message
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityInboxMessageSent::Links,
                Moonbase::Internal::AnyHash
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

        class Message < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityInboxMessageSent::Message,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # The `EmailMessage` that was sent.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityItemCreated < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityItemCreated,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityItemCreated::Links) }
        attr_reader :links

        sig do
          params(
            links: Moonbase::Activity::ActivityItemCreated::Links::OrHash
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
        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityItemCreated::Collection)
          )
        end
        attr_reader :collection

        sig do
          params(
            collection:
              Moonbase::Activity::ActivityItemCreated::Collection::OrHash
          ).void
        end
        attr_writer :collection

        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityItemCreated::CreatedItem)
          )
        end
        attr_reader :created_item

        sig do
          params(
            created_item:
              Moonbase::Activity::ActivityItemCreated::CreatedItem::OrHash
          ).void
        end
        attr_writer :created_item

        # Represents an event that occurs when an `Item` is created.
        sig do
          params(
            id: String,
            links: Moonbase::Activity::ActivityItemCreated::Links::OrHash,
            occurred_at: Time,
            collection:
              Moonbase::Activity::ActivityItemCreated::Collection::OrHash,
            created_item:
              Moonbase::Activity::ActivityItemCreated::CreatedItem::OrHash,
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
          created_item: nil,
          # The type of activity. Always `activity/item_created`.
          type: :"activity/item_created"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityItemCreated::Links,
              occurred_at: Time,
              type: Symbol,
              collection: Moonbase::Activity::ActivityItemCreated::Collection,
              created_item: Moonbase::Activity::ActivityItemCreated::CreatedItem
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemCreated::Links,
                Moonbase::Internal::AnyHash
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

        class Collection < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemCreated::Collection,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # The `Collection` the item was added to.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class CreatedItem < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemCreated::CreatedItem,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityItemMentioned < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityItemMentioned,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityItemMentioned::Links) }
        attr_reader :links

        sig do
          params(
            links: Moonbase::Activity::ActivityItemMentioned::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/item_mentioned`.
        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          returns(T.nilable(Moonbase::Activity::ActivityItemMentioned::Author))
        end
        attr_reader :author

        sig do
          params(
            author: Moonbase::Activity::ActivityItemMentioned::Author::OrHash
          ).void
        end
        attr_writer :author

        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityItemMentioned::MentionedItem)
          )
        end
        attr_reader :mentioned_item

        sig do
          params(
            mentioned_item:
              Moonbase::Activity::ActivityItemMentioned::MentionedItem::OrHash
          ).void
        end
        attr_writer :mentioned_item

        sig do
          returns(T.nilable(Moonbase::Activity::ActivityItemMentioned::Note))
        end
        attr_reader :note

        sig do
          params(
            note: Moonbase::Activity::ActivityItemMentioned::Note::OrHash
          ).void
        end
        attr_writer :note

        # Represents an event that occurs when an `Item` is mentioned.
        sig do
          params(
            id: String,
            links: Moonbase::Activity::ActivityItemMentioned::Links::OrHash,
            occurred_at: Time,
            author: Moonbase::Activity::ActivityItemMentioned::Author::OrHash,
            mentioned_item:
              Moonbase::Activity::ActivityItemMentioned::MentionedItem::OrHash,
            note: Moonbase::Activity::ActivityItemMentioned::Note::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          author: nil,
          mentioned_item: nil,
          note: nil,
          # The type of activity. Always `activity/item_mentioned`.
          type: :"activity/item_mentioned"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityItemMentioned::Links,
              occurred_at: Time,
              type: Symbol,
              author: Moonbase::Activity::ActivityItemMentioned::Author,
              mentioned_item:
                Moonbase::Activity::ActivityItemMentioned::MentionedItem,
              note: Moonbase::Activity::ActivityItemMentioned::Note
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemMentioned::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Person` who mentioned the item.
          sig { returns(T.nilable(String)) }
          attr_reader :author

          sig { params(author: String).void }
          attr_writer :author

          # A link to the `Item` that was mentioned.
          sig { returns(T.nilable(String)) }
          attr_reader :item

          sig { params(item: String).void }
          attr_writer :item

          # A link to the `Note` where the item was mentioned.
          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig do
            params(
              self_: String,
              author: String,
              item: String,
              note: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Person` who mentioned the item.
            author: nil,
            # A link to the `Item` that was mentioned.
            item: nil,
            # A link to the `Note` where the item was mentioned.
            note: nil
          )
          end

          sig do
            override.returns(
              { self_: String, author: String, item: String, note: String }
            )
          end
          def to_hash
          end
        end

        class Author < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemMentioned::Author,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class MentionedItem < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemMentioned::MentionedItem,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Note < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemMentioned::Note,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityItemMerged < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityItemMerged,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityItemMerged::Links) }
        attr_reader :links

        sig do
          params(
            links: Moonbase::Activity::ActivityItemMerged::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/item_merged`.
        sig { returns(Symbol) }
        attr_accessor :type

        # A pointer to the `Item` that the data was merged into.
        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityItemMerged::Destination)
          )
        end
        attr_reader :destination

        sig do
          params(
            destination:
              Moonbase::Activity::ActivityItemMerged::Destination::OrHash
          ).void
        end
        attr_writer :destination

        # The person that performed the merge.
        sig do
          returns(T.nilable(Moonbase::Activity::ActivityItemMerged::Initiator))
        end
        attr_reader :initiator

        sig do
          params(
            initiator: Moonbase::Activity::ActivityItemMerged::Initiator::OrHash
          ).void
        end
        attr_writer :initiator

        # A pointer to the source `Item`.
        sig do
          returns(T.nilable(Moonbase::Activity::ActivityItemMerged::Source))
        end
        attr_reader :source

        sig do
          params(
            source: Moonbase::Activity::ActivityItemMerged::Source::OrHash
          ).void
        end
        attr_writer :source

        # Represents an event that occurs when an `Item` is merged into another item.
        sig do
          params(
            id: String,
            links: Moonbase::Activity::ActivityItemMerged::Links::OrHash,
            occurred_at: Time,
            destination:
              Moonbase::Activity::ActivityItemMerged::Destination::OrHash,
            initiator:
              Moonbase::Activity::ActivityItemMerged::Initiator::OrHash,
            source: Moonbase::Activity::ActivityItemMerged::Source::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # A pointer to the `Item` that the data was merged into.
          destination: nil,
          # The person that performed the merge.
          initiator: nil,
          # A pointer to the source `Item`.
          source: nil,
          # The type of activity. Always `activity/item_merged`.
          type: :"activity/item_merged"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityItemMerged::Links,
              occurred_at: Time,
              type: Symbol,
              destination: Moonbase::Activity::ActivityItemMerged::Destination,
              initiator: Moonbase::Activity::ActivityItemMerged::Initiator,
              source: Moonbase::Activity::ActivityItemMerged::Source
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemMerged::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Item` that received the data from the source.
          sig { returns(T.nilable(String)) }
          attr_reader :destination

          sig { params(destination: String).void }
          attr_writer :destination

          # A link to the person that performed the merge.
          sig { returns(T.nilable(String)) }
          attr_reader :initiator

          sig { params(initiator: String).void }
          attr_writer :initiator

          sig do
            params(
              self_: String,
              destination: String,
              initiator: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Item` that received the data from the source.
            destination: nil,
            # A link to the person that performed the merge.
            initiator: nil
          )
          end

          sig do
            override.returns(
              { self_: String, destination: String, initiator: String }
            )
          end
          def to_hash
          end
        end

        class Destination < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemMerged::Destination,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # A pointer to the `Item` that the data was merged into.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Initiator < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemMerged::Initiator,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # The person that performed the merge.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Source < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityItemMerged::Source,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # A pointer to the source `Item`.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityMeetingHeld < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityMeetingHeld,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityMeetingHeld::Links) }
        attr_reader :links

        sig do
          params(
            links: Moonbase::Activity::ActivityMeetingHeld::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/meeting_held`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Meeting` object associated with this event.
        sig do
          returns(T.nilable(Moonbase::Activity::ActivityMeetingHeld::Meeting))
        end
        attr_reader :meeting

        sig do
          params(
            meeting: Moonbase::Activity::ActivityMeetingHeld::Meeting::OrHash
          ).void
        end
        attr_writer :meeting

        # Represents an event that occurs when a `Meeting` has concluded.
        sig do
          params(
            id: String,
            links: Moonbase::Activity::ActivityMeetingHeld::Links::OrHash,
            occurred_at: Time,
            meeting: Moonbase::Activity::ActivityMeetingHeld::Meeting::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
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
              links: Moonbase::Activity::ActivityMeetingHeld::Links,
              occurred_at: Time,
              type: Symbol,
              meeting: Moonbase::Activity::ActivityMeetingHeld::Meeting
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityMeetingHeld::Links,
                Moonbase::Internal::AnyHash
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

        class Meeting < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityMeetingHeld::Meeting,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # The `Meeting` object associated with this event.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityMeetingScheduled < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityMeetingScheduled,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityMeetingScheduled::Links) }
        attr_reader :links

        sig do
          params(
            links: Moonbase::Activity::ActivityMeetingScheduled::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/meeting_scheduled`.
        sig { returns(Symbol) }
        attr_accessor :type

        # The `Meeting` object associated with this event.
        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityMeetingScheduled::Meeting)
          )
        end
        attr_reader :meeting

        sig do
          params(
            meeting:
              Moonbase::Activity::ActivityMeetingScheduled::Meeting::OrHash
          ).void
        end
        attr_writer :meeting

        # Represents an event that occurs when a `Meeting` is scheduled.
        sig do
          params(
            id: String,
            links: Moonbase::Activity::ActivityMeetingScheduled::Links::OrHash,
            occurred_at: Time,
            meeting:
              Moonbase::Activity::ActivityMeetingScheduled::Meeting::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          # The `Meeting` object associated with this event.
          meeting: nil,
          # The type of activity. Always `activity/meeting_scheduled`.
          type: :"activity/meeting_scheduled"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityMeetingScheduled::Links,
              occurred_at: Time,
              type: Symbol,
              meeting: Moonbase::Activity::ActivityMeetingScheduled::Meeting
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityMeetingScheduled::Links,
                Moonbase::Internal::AnyHash
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

        class Meeting < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityMeetingScheduled::Meeting,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # The `Meeting` object associated with this event.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityNoteCreated < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityNoteCreated,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityNoteCreated::Links) }
        attr_reader :links

        sig do
          params(
            links: Moonbase::Activity::ActivityNoteCreated::Links::OrHash
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
        sig do
          returns(T.nilable(Moonbase::Activity::ActivityNoteCreated::Note))
        end
        attr_reader :note

        sig do
          params(
            note: Moonbase::Activity::ActivityNoteCreated::Note::OrHash
          ).void
        end
        attr_writer :note

        # The `Item` this note is related to, if any.
        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityNoteCreated::RelatedItem)
          )
        end
        attr_reader :related_item

        sig do
          params(
            related_item:
              Moonbase::Activity::ActivityNoteCreated::RelatedItem::OrHash
          ).void
        end
        attr_writer :related_item

        # The `Meeting` this note is related to, if any.
        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityNoteCreated::RelatedMeeting)
          )
        end
        attr_reader :related_meeting

        sig do
          params(
            related_meeting:
              Moonbase::Activity::ActivityNoteCreated::RelatedMeeting::OrHash
          ).void
        end
        attr_writer :related_meeting

        # Represents an event that occurs when a `Note` is created.
        sig do
          params(
            id: String,
            links: Moonbase::Activity::ActivityNoteCreated::Links::OrHash,
            occurred_at: Time,
            note: Moonbase::Activity::ActivityNoteCreated::Note::OrHash,
            related_item:
              Moonbase::Activity::ActivityNoteCreated::RelatedItem::OrHash,
            related_meeting:
              Moonbase::Activity::ActivityNoteCreated::RelatedMeeting::OrHash,
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
              links: Moonbase::Activity::ActivityNoteCreated::Links,
              occurred_at: Time,
              type: Symbol,
              note: Moonbase::Activity::ActivityNoteCreated::Note,
              related_item:
                Moonbase::Activity::ActivityNoteCreated::RelatedItem,
              related_meeting:
                Moonbase::Activity::ActivityNoteCreated::RelatedMeeting
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityNoteCreated::Links,
                Moonbase::Internal::AnyHash
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

        class Note < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityNoteCreated::Note,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # The `Note` object that was created.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class RelatedItem < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityNoteCreated::RelatedItem,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # The `Item` this note is related to, if any.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class RelatedMeeting < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityNoteCreated::RelatedMeeting,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # The `Meeting` this note is related to, if any.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageBounced < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityProgramMessageBounced,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(Moonbase::Activity::ActivityProgramMessageBounced::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              Moonbase::Activity::ActivityProgramMessageBounced::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_bounced`.
        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :bounce_type

        sig { params(bounce_type: String).void }
        attr_writer :bounce_type

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :bounced_recipient_emails

        sig { params(bounced_recipient_emails: T::Array[String]).void }
        attr_writer :bounced_recipient_emails

        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageBounced::ProgramMessage
            )
          )
        end
        attr_reader :program_message

        sig do
          params(
            program_message:
              Moonbase::Activity::ActivityProgramMessageBounced::ProgramMessage::OrHash
          ).void
        end
        attr_writer :program_message

        # A link to the `Address` of the recipient whose message bounced.
        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageBounced::Recipient
            )
          )
        end
        attr_reader :recipient

        sig do
          params(
            recipient:
              Moonbase::Activity::ActivityProgramMessageBounced::Recipient::OrHash
          ).void
        end
        attr_writer :recipient

        # Represents an event that occurs when a `ProgramMessage` bounces.
        sig do
          params(
            id: String,
            links:
              Moonbase::Activity::ActivityProgramMessageBounced::Links::OrHash,
            occurred_at: Time,
            bounce_type: String,
            bounced_recipient_emails: T::Array[String],
            program_message:
              Moonbase::Activity::ActivityProgramMessageBounced::ProgramMessage::OrHash,
            recipient:
              Moonbase::Activity::ActivityProgramMessageBounced::Recipient::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          bounce_type: nil,
          bounced_recipient_emails: nil,
          program_message: nil,
          # A link to the `Address` of the recipient whose message bounced.
          recipient: nil,
          # The type of activity. Always `activity/program_message_bounced`.
          type: :"activity/program_message_bounced"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityProgramMessageBounced::Links,
              occurred_at: Time,
              type: Symbol,
              bounce_type: String,
              bounced_recipient_emails: T::Array[String],
              program_message:
                Moonbase::Activity::ActivityProgramMessageBounced::ProgramMessage,
              recipient:
                Moonbase::Activity::ActivityProgramMessageBounced::Recipient
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageBounced::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Address` of the recipient whose message bounced.
          sig { returns(T.nilable(String)) }
          attr_reader :recipient

          sig { params(recipient: String).void }
          attr_writer :recipient

          sig do
            params(self_: String, recipient: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Address` of the recipient whose message bounced.
            recipient: nil
          )
          end

          sig { override.returns({ self_: String, recipient: String }) }
          def to_hash
          end
        end

        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageBounced::ProgramMessage,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Recipient < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageBounced::Recipient,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # A link to the `Address` of the recipient whose message bounced.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageClicked < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityProgramMessageClicked,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(Moonbase::Activity::ActivityProgramMessageClicked::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              Moonbase::Activity::ActivityProgramMessageClicked::Links::OrHash
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

        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageClicked::ProgramMessage
            )
          )
        end
        attr_reader :program_message

        sig do
          params(
            program_message:
              Moonbase::Activity::ActivityProgramMessageClicked::ProgramMessage::OrHash
          ).void
        end
        attr_writer :program_message

        # A link to the `Address` of the recipient who clicked the link.
        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageClicked::Recipient
            )
          )
        end
        attr_reader :recipient

        sig do
          params(
            recipient:
              Moonbase::Activity::ActivityProgramMessageClicked::Recipient::OrHash
          ).void
        end
        attr_writer :recipient

        # Represents an event that occurs when a recipient clicks a tracked link in a
        # `ProgramMessage`.
        sig do
          params(
            id: String,
            links:
              Moonbase::Activity::ActivityProgramMessageClicked::Links::OrHash,
            occurred_at: Time,
            link_text: String,
            link_url_unsafe: String,
            program_message:
              Moonbase::Activity::ActivityProgramMessageClicked::ProgramMessage::OrHash,
            recipient:
              Moonbase::Activity::ActivityProgramMessageClicked::Recipient::OrHash,
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
          program_message: nil,
          # A link to the `Address` of the recipient who clicked the link.
          recipient: nil,
          # The type of activity. Always `activity/program_message_clicked`.
          type: :"activity/program_message_clicked"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityProgramMessageClicked::Links,
              occurred_at: Time,
              type: Symbol,
              link_text: String,
              link_url_unsafe: String,
              program_message:
                Moonbase::Activity::ActivityProgramMessageClicked::ProgramMessage,
              recipient:
                Moonbase::Activity::ActivityProgramMessageClicked::Recipient
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageClicked::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Address` of the recipient who clicked the link.
          sig { returns(T.nilable(String)) }
          attr_reader :recipient

          sig { params(recipient: String).void }
          attr_writer :recipient

          sig do
            params(self_: String, recipient: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Address` of the recipient who clicked the link.
            recipient: nil
          )
          end

          sig { override.returns({ self_: String, recipient: String }) }
          def to_hash
          end
        end

        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageClicked::ProgramMessage,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Recipient < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageClicked::Recipient,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # A link to the `Address` of the recipient who clicked the link.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageComplained < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityProgramMessageComplained,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(Moonbase::Activity::ActivityProgramMessageComplained::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              Moonbase::Activity::ActivityProgramMessageComplained::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_complained`.
        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageComplained::ProgramMessage
            )
          )
        end
        attr_reader :program_message

        sig do
          params(
            program_message:
              Moonbase::Activity::ActivityProgramMessageComplained::ProgramMessage::OrHash
          ).void
        end
        attr_writer :program_message

        # A link to the `Address` of the recipient who complained.
        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageComplained::Recipient
            )
          )
        end
        attr_reader :recipient

        sig do
          params(
            recipient:
              Moonbase::Activity::ActivityProgramMessageComplained::Recipient::OrHash
          ).void
        end
        attr_writer :recipient

        # Represents an event that occurs when a recipient marks a `ProgramMessage` as
        # spam.
        sig do
          params(
            id: String,
            links:
              Moonbase::Activity::ActivityProgramMessageComplained::Links::OrHash,
            occurred_at: Time,
            program_message:
              Moonbase::Activity::ActivityProgramMessageComplained::ProgramMessage::OrHash,
            recipient:
              Moonbase::Activity::ActivityProgramMessageComplained::Recipient::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          program_message: nil,
          # A link to the `Address` of the recipient who complained.
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
                Moonbase::Activity::ActivityProgramMessageComplained::Links,
              occurred_at: Time,
              type: Symbol,
              program_message:
                Moonbase::Activity::ActivityProgramMessageComplained::ProgramMessage,
              recipient:
                Moonbase::Activity::ActivityProgramMessageComplained::Recipient
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageComplained::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Address` of the recipient who complained.
          sig { returns(T.nilable(String)) }
          attr_reader :recipient

          sig { params(recipient: String).void }
          attr_writer :recipient

          sig do
            params(self_: String, recipient: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Address` of the recipient who complained.
            recipient: nil
          )
          end

          sig { override.returns({ self_: String, recipient: String }) }
          def to_hash
          end
        end

        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageComplained::ProgramMessage,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Recipient < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageComplained::Recipient,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # A link to the `Address` of the recipient who complained.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageFailed < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityProgramMessageFailed,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityProgramMessageFailed::Links) }
        attr_reader :links

        sig do
          params(
            links:
              Moonbase::Activity::ActivityProgramMessageFailed::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_failed`.
        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageFailed::ProgramMessage
            )
          )
        end
        attr_reader :program_message

        sig do
          params(
            program_message:
              Moonbase::Activity::ActivityProgramMessageFailed::ProgramMessage::OrHash
          ).void
        end
        attr_writer :program_message

        sig { returns(T.nilable(String)) }
        attr_reader :reason_code

        sig { params(reason_code: String).void }
        attr_writer :reason_code

        # A link to the `Address` of the recipient whose message failed.
        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageFailed::Recipient
            )
          )
        end
        attr_reader :recipient

        sig do
          params(
            recipient:
              Moonbase::Activity::ActivityProgramMessageFailed::Recipient::OrHash
          ).void
        end
        attr_writer :recipient

        # Represents an event that occurs when a `ProgramMessage` fails to be delivered
        # for a technical reason.
        sig do
          params(
            id: String,
            links:
              Moonbase::Activity::ActivityProgramMessageFailed::Links::OrHash,
            occurred_at: Time,
            program_message:
              Moonbase::Activity::ActivityProgramMessageFailed::ProgramMessage::OrHash,
            reason_code: String,
            recipient:
              Moonbase::Activity::ActivityProgramMessageFailed::Recipient::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          program_message: nil,
          reason_code: nil,
          # A link to the `Address` of the recipient whose message failed.
          recipient: nil,
          # The type of activity. Always `activity/program_message_failed`.
          type: :"activity/program_message_failed"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityProgramMessageFailed::Links,
              occurred_at: Time,
              type: Symbol,
              program_message:
                Moonbase::Activity::ActivityProgramMessageFailed::ProgramMessage,
              reason_code: String,
              recipient:
                Moonbase::Activity::ActivityProgramMessageFailed::Recipient
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageFailed::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Address` of the recipient whose message failed.
          sig { returns(T.nilable(String)) }
          attr_reader :recipient

          sig { params(recipient: String).void }
          attr_writer :recipient

          sig do
            params(self_: String, recipient: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Address` of the recipient whose message failed.
            recipient: nil
          )
          end

          sig { override.returns({ self_: String, recipient: String }) }
          def to_hash
          end
        end

        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageFailed::ProgramMessage,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Recipient < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageFailed::Recipient,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # A link to the `Address` of the recipient whose message failed.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageOpened < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityProgramMessageOpened,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityProgramMessageOpened::Links) }
        attr_reader :links

        sig do
          params(
            links:
              Moonbase::Activity::ActivityProgramMessageOpened::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_opened`.
        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageOpened::ProgramMessage
            )
          )
        end
        attr_reader :program_message

        sig do
          params(
            program_message:
              Moonbase::Activity::ActivityProgramMessageOpened::ProgramMessage::OrHash
          ).void
        end
        attr_writer :program_message

        # A link to the `Address` of the recipient who opened the message.
        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageOpened::Recipient
            )
          )
        end
        attr_reader :recipient

        sig do
          params(
            recipient:
              Moonbase::Activity::ActivityProgramMessageOpened::Recipient::OrHash
          ).void
        end
        attr_writer :recipient

        # Represents an event that occurs when a recipient opens a `ProgramMessage`.
        sig do
          params(
            id: String,
            links:
              Moonbase::Activity::ActivityProgramMessageOpened::Links::OrHash,
            occurred_at: Time,
            program_message:
              Moonbase::Activity::ActivityProgramMessageOpened::ProgramMessage::OrHash,
            recipient:
              Moonbase::Activity::ActivityProgramMessageOpened::Recipient::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          program_message: nil,
          # A link to the `Address` of the recipient who opened the message.
          recipient: nil,
          # The type of activity. Always `activity/program_message_opened`.
          type: :"activity/program_message_opened"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityProgramMessageOpened::Links,
              occurred_at: Time,
              type: Symbol,
              program_message:
                Moonbase::Activity::ActivityProgramMessageOpened::ProgramMessage,
              recipient:
                Moonbase::Activity::ActivityProgramMessageOpened::Recipient
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageOpened::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Address` of the recipient who opened the message.
          sig { returns(T.nilable(String)) }
          attr_reader :recipient

          sig { params(recipient: String).void }
          attr_writer :recipient

          sig do
            params(self_: String, recipient: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Address` of the recipient who opened the message.
            recipient: nil
          )
          end

          sig { override.returns({ self_: String, recipient: String }) }
          def to_hash
          end
        end

        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageOpened::ProgramMessage,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Recipient < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageOpened::Recipient,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # A link to the `Address` of the recipient who opened the message.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageSent < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityProgramMessageSent,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Moonbase::Activity::ActivityProgramMessageSent::Links) }
        attr_reader :links

        sig do
          params(
            links: Moonbase::Activity::ActivityProgramMessageSent::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_sent`.
        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageSent::ProgramMessage
            )
          )
        end
        attr_reader :program_message

        sig do
          params(
            program_message:
              Moonbase::Activity::ActivityProgramMessageSent::ProgramMessage::OrHash
          ).void
        end
        attr_writer :program_message

        # A link to the `Address` of the recipient the message was sent to.
        sig do
          returns(
            T.nilable(Moonbase::Activity::ActivityProgramMessageSent::Recipient)
          )
        end
        attr_reader :recipient

        sig do
          params(
            recipient:
              Moonbase::Activity::ActivityProgramMessageSent::Recipient::OrHash
          ).void
        end
        attr_writer :recipient

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :recipient_emails

        sig { params(recipient_emails: T::Array[String]).void }
        attr_writer :recipient_emails

        # Represents an event that occurs when a `ProgramMessage` is successfully sent.
        sig do
          params(
            id: String,
            links:
              Moonbase::Activity::ActivityProgramMessageSent::Links::OrHash,
            occurred_at: Time,
            program_message:
              Moonbase::Activity::ActivityProgramMessageSent::ProgramMessage::OrHash,
            recipient:
              Moonbase::Activity::ActivityProgramMessageSent::Recipient::OrHash,
            recipient_emails: T::Array[String],
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          program_message: nil,
          # A link to the `Address` of the recipient the message was sent to.
          recipient: nil,
          recipient_emails: nil,
          # The type of activity. Always `activity/program_message_sent`.
          type: :"activity/program_message_sent"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityProgramMessageSent::Links,
              occurred_at: Time,
              type: Symbol,
              program_message:
                Moonbase::Activity::ActivityProgramMessageSent::ProgramMessage,
              recipient:
                Moonbase::Activity::ActivityProgramMessageSent::Recipient,
              recipient_emails: T::Array[String]
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageSent::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Address` of the recipient the message was sent to.
          sig { returns(T.nilable(String)) }
          attr_reader :recipient

          sig { params(recipient: String).void }
          attr_writer :recipient

          sig do
            params(self_: String, recipient: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Address` of the recipient the message was sent to.
            recipient: nil
          )
          end

          sig { override.returns({ self_: String, recipient: String }) }
          def to_hash
          end
        end

        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageSent::ProgramMessage,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Recipient < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageSent::Recipient,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # A link to the `Address` of the recipient the message was sent to.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageShielded < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityProgramMessageShielded,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(Moonbase::Activity::ActivityProgramMessageShielded::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              Moonbase::Activity::ActivityProgramMessageShielded::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_shielded`.
        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageShielded::ProgramMessage
            )
          )
        end
        attr_reader :program_message

        sig do
          params(
            program_message:
              Moonbase::Activity::ActivityProgramMessageShielded::ProgramMessage::OrHash
          ).void
        end
        attr_writer :program_message

        sig { returns(T.nilable(String)) }
        attr_reader :reason_code

        sig { params(reason_code: String).void }
        attr_writer :reason_code

        # A link to the `Address` of the recipient whose message was shielded.
        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageShielded::Recipient
            )
          )
        end
        attr_reader :recipient

        sig do
          params(
            recipient:
              Moonbase::Activity::ActivityProgramMessageShielded::Recipient::OrHash
          ).void
        end
        attr_writer :recipient

        # Represents an event that occurs when a `ProgramMessage` is prevented from being
        # sent by a delivery protection rule.
        sig do
          params(
            id: String,
            links:
              Moonbase::Activity::ActivityProgramMessageShielded::Links::OrHash,
            occurred_at: Time,
            program_message:
              Moonbase::Activity::ActivityProgramMessageShielded::ProgramMessage::OrHash,
            reason_code: String,
            recipient:
              Moonbase::Activity::ActivityProgramMessageShielded::Recipient::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          program_message: nil,
          reason_code: nil,
          # A link to the `Address` of the recipient whose message was shielded.
          recipient: nil,
          # The type of activity. Always `activity/program_message_shielded`.
          type: :"activity/program_message_shielded"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              links: Moonbase::Activity::ActivityProgramMessageShielded::Links,
              occurred_at: Time,
              type: Symbol,
              program_message:
                Moonbase::Activity::ActivityProgramMessageShielded::ProgramMessage,
              reason_code: String,
              recipient:
                Moonbase::Activity::ActivityProgramMessageShielded::Recipient
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageShielded::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Address` of the recipient whose message was shielded.
          sig { returns(T.nilable(String)) }
          attr_reader :recipient

          sig { params(recipient: String).void }
          attr_writer :recipient

          sig do
            params(self_: String, recipient: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Address` of the recipient whose message was shielded.
            recipient: nil
          )
          end

          sig { override.returns({ self_: String, recipient: String }) }
          def to_hash
          end
        end

        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageShielded::ProgramMessage,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Recipient < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageShielded::Recipient,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # A link to the `Address` of the recipient whose message was shielded.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      class ActivityProgramMessageUnsubscribed < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityProgramMessageUnsubscribed,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(Moonbase::Activity::ActivityProgramMessageUnsubscribed::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              Moonbase::Activity::ActivityProgramMessageUnsubscribed::Links::OrHash
          ).void
        end
        attr_writer :links

        # The time at which the event occurred, as an RFC 3339 timestamp.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # The type of activity. Always `activity/program_message_unsubscribed`.
        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageUnsubscribed::ProgramMessage
            )
          )
        end
        attr_reader :program_message

        sig do
          params(
            program_message:
              Moonbase::Activity::ActivityProgramMessageUnsubscribed::ProgramMessage::OrHash
          ).void
        end
        attr_writer :program_message

        # A link to the `Address` of the recipient who unsubscribed.
        sig do
          returns(
            T.nilable(
              Moonbase::Activity::ActivityProgramMessageUnsubscribed::Recipient
            )
          )
        end
        attr_reader :recipient

        sig do
          params(
            recipient:
              Moonbase::Activity::ActivityProgramMessageUnsubscribed::Recipient::OrHash
          ).void
        end
        attr_writer :recipient

        # Represents an event that occurs when a recipient unsubscribes after receiving a
        # `ProgramMessage`.
        sig do
          params(
            id: String,
            links:
              Moonbase::Activity::ActivityProgramMessageUnsubscribed::Links::OrHash,
            occurred_at: Time,
            email: String,
            program_message:
              Moonbase::Activity::ActivityProgramMessageUnsubscribed::ProgramMessage::OrHash,
            recipient:
              Moonbase::Activity::ActivityProgramMessageUnsubscribed::Recipient::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          links:,
          # The time at which the event occurred, as an RFC 3339 timestamp.
          occurred_at:,
          email: nil,
          program_message: nil,
          # A link to the `Address` of the recipient who unsubscribed.
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
                Moonbase::Activity::ActivityProgramMessageUnsubscribed::Links,
              occurred_at: Time,
              type: Symbol,
              email: String,
              program_message:
                Moonbase::Activity::ActivityProgramMessageUnsubscribed::ProgramMessage,
              recipient:
                Moonbase::Activity::ActivityProgramMessageUnsubscribed::Recipient
            }
          )
        end
        def to_hash
        end

        class Links < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageUnsubscribed::Links,
                Moonbase::Internal::AnyHash
              )
            end

          # The canonical URL for this object.
          sig { returns(String) }
          attr_accessor :self_

          # A link to the `Address` of the recipient who unsubscribed.
          sig { returns(T.nilable(String)) }
          attr_reader :recipient

          sig { params(recipient: String).void }
          attr_writer :recipient

          sig do
            params(self_: String, recipient: String).returns(T.attached_class)
          end
          def self.new(
            # The canonical URL for this object.
            self_:,
            # A link to the `Address` of the recipient who unsubscribed.
            recipient: nil
          )
          end

          sig { override.returns({ self_: String, recipient: String }) }
          def to_hash
          end
        end

        class ProgramMessage < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageUnsubscribed::ProgramMessage,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end

        class Recipient < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Activity::ActivityProgramMessageUnsubscribed::Recipient,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :type

          # A link to the `Address` of the recipient who unsubscribed.
          sig { params(id: String, type: String).returns(T.attached_class) }
          def self.new(id:, type:)
          end

          sig { override.returns({ id: String, type: String }) }
          def to_hash
          end
        end
      end

      sig { override.returns(T::Array[Moonbase::Activity::Variants]) }
      def self.variants
      end
    end
  end
end
