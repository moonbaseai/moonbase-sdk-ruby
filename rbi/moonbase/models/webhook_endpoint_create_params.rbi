# typed: strong

module Moonbase
  module Models
    class WebhookEndpointCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Moonbase::WebhookEndpointCreateParams,
            Moonbase::Internal::AnyHash
          )
        end

      # Indicates whether the endpoint is enabled.
      sig { returns(Moonbase::WebhookEndpointCreateParams::Status::OrSymbol) }
      attr_accessor :status

      # The HTTPS URL where webhook events will be sent.
      sig { returns(String) }
      attr_accessor :url

      # An array of event types that this endpoint should receive notifications for.
      sig do
        returns(
          T.nilable(
            T::Array[Moonbase::WebhookEndpointCreateParams::Subscription]
          )
        )
      end
      attr_reader :subscriptions

      sig do
        params(
          subscriptions:
            T::Array[
              Moonbase::WebhookEndpointCreateParams::Subscription::OrHash
            ]
        ).void
      end
      attr_writer :subscriptions

      sig do
        params(
          status: Moonbase::WebhookEndpointCreateParams::Status::OrSymbol,
          url: String,
          subscriptions:
            T::Array[
              Moonbase::WebhookEndpointCreateParams::Subscription::OrHash
            ],
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Indicates whether the endpoint is enabled.
        status:,
        # The HTTPS URL where webhook events will be sent.
        url:,
        # An array of event types that this endpoint should receive notifications for.
        subscriptions: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: Moonbase::WebhookEndpointCreateParams::Status::OrSymbol,
            url: String,
            subscriptions:
              T::Array[Moonbase::WebhookEndpointCreateParams::Subscription],
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Indicates whether the endpoint is enabled.
      module Status
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Moonbase::WebhookEndpointCreateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED =
          T.let(
            :disabled,
            Moonbase::WebhookEndpointCreateParams::Status::TaggedSymbol
          )
        ENABLED =
          T.let(
            :enabled,
            Moonbase::WebhookEndpointCreateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::WebhookEndpointCreateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Subscription < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::WebhookEndpointCreateParams::Subscription,
              Moonbase::Internal::AnyHash
            )
          end

        # The type of event that will trigger notifications to the endpoint (e.g.,
        # `activity/item_created`).
        sig do
          returns(
            Moonbase::WebhookEndpointCreateParams::Subscription::EventType::OrSymbol
          )
        end
        attr_accessor :event_type

        # Parameters for creating a webhook subscription.
        sig do
          params(
            event_type:
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of event that will trigger notifications to the endpoint (e.g.,
          # `activity/item_created`).
          event_type:
        )
        end

        sig do
          override.returns(
            {
              event_type:
                Moonbase::WebhookEndpointCreateParams::Subscription::EventType::OrSymbol
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
            T.type_alias do
              T.all(
                Symbol,
                Moonbase::WebhookEndpointCreateParams::Subscription::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVITY_CALL_OCCURRED =
            T.let(
              :"activity/call_occurred",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_FORM_SUBMITTED =
            T.let(
              :"activity/form_submitted",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_INBOX_MESSAGE_SENT =
            T.let(
              :"activity/inbox_message_sent",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_ITEM_CREATED =
            T.let(
              :"activity/item_created",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_ITEM_MENTIONED =
            T.let(
              :"activity/item_mentioned",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_ITEM_MERGED =
            T.let(
              :"activity/item_merged",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_MEETING_HELD =
            T.let(
              :"activity/meeting_held",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_MEETING_SCHEDULED =
            T.let(
              :"activity/meeting_scheduled",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_NOTE_CREATED =
            T.let(
              :"activity/note_created",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_BOUNCED =
            T.let(
              :"activity/program_message_bounced",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_CLICKED =
            T.let(
              :"activity/program_message_clicked",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_COMPLAINED =
            T.let(
              :"activity/program_message_complained",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_FAILED =
            T.let(
              :"activity/program_message_failed",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_OPENED =
            T.let(
              :"activity/program_message_opened",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_SENT =
            T.let(
              :"activity/program_message_sent",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_SHIELDED =
            T.let(
              :"activity/program_message_shielded",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_UNSUBSCRIBED =
            T.let(
              :"activity/program_message_unsubscribed",
              Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::WebhookEndpointCreateParams::Subscription::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
