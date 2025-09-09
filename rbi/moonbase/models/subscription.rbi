# typed: strong

module Moonbase
  module Models
    class Subscription < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::Subscription, Moonbase::Internal::AnyHash)
        end

      # The type of event that will trigger notifications to the endpoint (e.g.,
      # `activity/item_created`).
      sig { returns(Moonbase::Subscription::EventType::TaggedSymbol) }
      attr_accessor :event_type

      # String representing the object’s type. Always `webhook_subscription` for this
      # object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A Webhook Subscription defines which event type should be sent to a specific
      # webhook endpoint.
      sig do
        params(
          event_type: Moonbase::Subscription::EventType::OrSymbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The type of event that will trigger notifications to the endpoint (e.g.,
        # `activity/item_created`).
        event_type:,
        # String representing the object’s type. Always `webhook_subscription` for this
        # object.
        type: :webhook_subscription
      )
      end

      sig do
        override.returns(
          {
            event_type: Moonbase::Subscription::EventType::TaggedSymbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      # The type of event that will trigger notifications to the endpoint (e.g.,
      # `activity/item_created`).
      module EventType
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::Subscription::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVITY_CALL_OCCURRED =
          T.let(
            :"activity/call_occurred",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_FORM_SUBMITTED =
          T.let(
            :"activity/form_submitted",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_INBOX_MESSAGE_SENT =
          T.let(
            :"activity/inbox_message_sent",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_ITEM_CREATED =
          T.let(
            :"activity/item_created",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_ITEM_MENTIONED =
          T.let(
            :"activity/item_mentioned",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_ITEM_MERGED =
          T.let(
            :"activity/item_merged",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_MEETING_HELD =
          T.let(
            :"activity/meeting_held",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_MEETING_SCHEDULED =
          T.let(
            :"activity/meeting_scheduled",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_NOTE_CREATED =
          T.let(
            :"activity/note_created",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_BOUNCED =
          T.let(
            :"activity/program_message_bounced",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_CLICKED =
          T.let(
            :"activity/program_message_clicked",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_COMPLAINED =
          T.let(
            :"activity/program_message_complained",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_FAILED =
          T.let(
            :"activity/program_message_failed",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_OPENED =
          T.let(
            :"activity/program_message_opened",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_SENT =
          T.let(
            :"activity/program_message_sent",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_SHIELDED =
          T.let(
            :"activity/program_message_shielded",
            Moonbase::Subscription::EventType::TaggedSymbol
          )
        ACTIVITY_PROGRAM_MESSAGE_UNSUBSCRIBED =
          T.let(
            :"activity/program_message_unsubscribed",
            Moonbase::Subscription::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Moonbase::Subscription::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
