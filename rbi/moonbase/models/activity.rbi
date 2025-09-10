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

      sig { override.returns(T::Array[Moonbase::Activity::Variants]) }
      def self.variants
      end
    end
  end
end
