# typed: strong

module Moonbase
  module Models
    class Activity < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Activity, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # An array of entities involved along with each entity's relation to the activity.
      sig { returns(T::Array[Moonbase::Constituent]) }
      attr_accessor :constituents

      # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # The type of activity.
      sig { returns(Moonbase::Activity::Type::TaggedSymbol) }
      attr_accessor :type

      # The Activity object represents a specific event that has occurred, such as a
      # meeting being scheduled or a form being submitted.
      sig do
        params(
          id: String,
          constituents: T::Array[Moonbase::Constituent::OrHash],
          occurred_at: Time,
          type: Moonbase::Activity::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # An array of entities involved along with each entity's relation to the activity.
        constituents:,
        # The time at which the event occurred, as an ISO 8601 timestamp in UTC.
        occurred_at:,
        # The type of activity.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            constituents: T::Array[Moonbase::Constituent],
            occurred_at: Time,
            type: Moonbase::Activity::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of activity.
      module Type
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::Activity::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVITY_CALL_OCCURRED =
          T.let(
            :"activity/call_occurred",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_FILE_CREATED =
          T.let(
            :"activity/file_created",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_FORM_SUBMITTED =
          T.let(
            :"activity/form_submitted",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_INBOX_MESSAGE_SENT =
          T.let(
            :"activity/inbox_message_sent",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_ITEM_CREATED =
          T.let(
            :"activity/item_created",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_ITEM_MENTIONED =
          T.let(
            :"activity/item_mentioned",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_ITEM_MERGED =
          T.let(:"activity/item_merged", Moonbase::Activity::Type::TaggedSymbol)
        ACTIVITY_MEETING_HELD =
          T.let(
            :"activity/meeting_held",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_MEETING_SCHEDULED =
          T.let(
            :"activity/meeting_scheduled",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_NOTE_CREATED =
          T.let(
            :"activity/note_created",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_BOUNCED =
          T.let(
            :"activity/program_message_bounced",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_CLICKED =
          T.let(
            :"activity/program_message_clicked",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_COMPLAINED =
          T.let(
            :"activity/program_message_complained",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_FAILED =
          T.let(
            :"activity/program_message_failed",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_OPENED =
          T.let(
            :"activity/program_message_opened",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_SENT =
          T.let(
            :"activity/program_message_sent",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_SHIELDED =
          T.let(
            :"activity/program_message_shielded",
            Moonbase::Activity::Type::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_UNSUBSCRIBED =
          T.let(
            :"activity/program_message_unsubscribed",
            Moonbase::Activity::Type::TaggedSymbol
          )

        sig do
          override.returns(T::Array[Moonbase::Activity::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
