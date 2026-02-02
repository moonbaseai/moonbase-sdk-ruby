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
            Moonbase::ActivityCallOccurred,
            Moonbase::ActivityFormSubmitted,
            Moonbase::ActivityInboxMessageSent,
            Moonbase::ActivityItemCreated,
            Moonbase::ActivityItemMentioned,
            Moonbase::ActivityItemMerged,
            Moonbase::Activity::ActivityFileCreated,
            Moonbase::ActivityMeetingHeld,
            Moonbase::ActivityMeetingScheduled,
            Moonbase::ActivityNoteCreated,
            Moonbase::ActivityProgramMessageBounced,
            Moonbase::ActivityProgramMessageClicked,
            Moonbase::ActivityProgramMessageComplained,
            Moonbase::ActivityProgramMessageFailed,
            Moonbase::ActivityProgramMessageOpened,
            Moonbase::ActivityProgramMessageSent,
            Moonbase::ActivityProgramMessageShielded,
            Moonbase::ActivityProgramMessageUnsubscribed
          )
        end

      class ActivityFileCreated < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Activity::ActivityFileCreated,
              Moonbase::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # A lightweight reference to another resource.
        sig { returns(T.nilable(Moonbase::Pointer)) }
        attr_reader :file

        sig { params(file: T.nilable(Moonbase::Pointer::OrHash)).void }
        attr_writer :file

        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # A reference to an `Item` within a specific `Collection`, providing the context
        # needed to locate the item.
        sig { returns(T.nilable(Moonbase::ItemPointer)) }
        attr_reader :related_item

        sig do
          params(related_item: T.nilable(Moonbase::ItemPointer::OrHash)).void
        end
        attr_writer :related_item

        # The type of activity. Always `activity/file_created`.
        sig { returns(Symbol) }
        attr_accessor :type

        # Represents an event that occurs when a `File` is created.
        sig do
          params(
            id: String,
            file: T.nilable(Moonbase::Pointer::OrHash),
            occurred_at: Time,
            related_item: T.nilable(Moonbase::ItemPointer::OrHash),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # A lightweight reference to another resource.
          file:,
          # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
          occurred_at:,
          # A reference to an `Item` within a specific `Collection`, providing the context
          # needed to locate the item.
          related_item:,
          # The type of activity. Always `activity/file_created`.
          type: :"activity/file_created"
        )
        end

        sig do
          override.returns(
            {
              id: String,
              file: T.nilable(Moonbase::Pointer),
              occurred_at: Time,
              related_item: T.nilable(Moonbase::ItemPointer),
              type: Symbol
            }
          )
        end
        def to_hash
        end
      end

      sig { override.returns(T::Array[Moonbase::Activity::Variants]) }
      def self.variants
      end
    end
  end
end
