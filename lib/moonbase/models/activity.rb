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
      variant :"activity/call_occurred", -> { Moonbase::ActivityCallOccurred }

      # Represents an event that occurs when a `Form` is submitted.
      variant :"activity/form_submitted", -> { Moonbase::ActivityFormSubmitted }

      # Represents an event that occurs when a message is sent from an `Inbox`.
      variant :"activity/inbox_message_sent", -> { Moonbase::ActivityInboxMessageSent }

      # Represents an event that occurs when an `Item` is created.
      variant :"activity/item_created", -> { Moonbase::ActivityItemCreated }

      # Represents an event that occurs when an `Item` is mentioned.
      variant :"activity/item_mentioned", -> { Moonbase::ActivityItemMentioned }

      # Represents an event that occurs when an `Item` is merged into another item.
      variant :"activity/item_merged", -> { Moonbase::ActivityItemMerged }

      # Represents an event that occurs when a `Meeting` has concluded.
      variant :"activity/meeting_held", -> { Moonbase::ActivityMeetingHeld }

      # Represents an event that occurs when a `Meeting` is scheduled.
      variant :"activity/meeting_scheduled", -> { Moonbase::ActivityMeetingScheduled }

      # Represents an event that occurs when a `Note` is created.
      variant :"activity/note_created", -> { Moonbase::ActivityNoteCreated }

      # Represents an event that occurs when a `ProgramMessage` bounces.
      variant :"activity/program_message_bounced", -> { Moonbase::ActivityProgramMessageBounced }

      # Represents an event that occurs when a recipient clicks a tracked link in a `ProgramMessage`.
      variant :"activity/program_message_clicked", -> { Moonbase::ActivityProgramMessageClicked }

      # Represents an event that occurs when a recipient marks a `ProgramMessage` as spam.
      variant :"activity/program_message_complained", -> { Moonbase::ActivityProgramMessageComplained }

      # Represents an event that occurs when a `ProgramMessage` fails to be delivered for a technical reason.
      variant :"activity/program_message_failed", -> { Moonbase::ActivityProgramMessageFailed }

      # Represents an event that occurs when a recipient opens a `ProgramMessage`.
      variant :"activity/program_message_opened", -> { Moonbase::ActivityProgramMessageOpened }

      # Represents an event that occurs when a `ProgramMessage` is successfully sent.
      variant :"activity/program_message_sent", -> { Moonbase::ActivityProgramMessageSent }

      # Represents an event that occurs when a `ProgramMessage` is prevented from being sent by a delivery protection rule.
      variant :"activity/program_message_shielded", -> { Moonbase::ActivityProgramMessageShielded }

      # Represents an event that occurs when a recipient unsubscribes after receiving a `ProgramMessage`.
      variant :"activity/program_message_unsubscribed", -> { Moonbase::ActivityProgramMessageUnsubscribed }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::ActivityCallOccurred, Moonbase::Models::ActivityFormSubmitted, Moonbase::Models::ActivityInboxMessageSent, Moonbase::Models::ActivityItemCreated, Moonbase::Models::ActivityItemMentioned, Moonbase::Models::ActivityItemMerged, Moonbase::Models::ActivityMeetingHeld, Moonbase::Models::ActivityMeetingScheduled, Moonbase::Models::ActivityNoteCreated, Moonbase::Models::ActivityProgramMessageBounced, Moonbase::Models::ActivityProgramMessageClicked, Moonbase::Models::ActivityProgramMessageComplained, Moonbase::Models::ActivityProgramMessageFailed, Moonbase::Models::ActivityProgramMessageOpened, Moonbase::Models::ActivityProgramMessageSent, Moonbase::Models::ActivityProgramMessageShielded, Moonbase::Models::ActivityProgramMessageUnsubscribed)]
    end
  end
end
