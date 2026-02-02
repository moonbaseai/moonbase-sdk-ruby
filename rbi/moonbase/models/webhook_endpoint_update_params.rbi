# typed: strong

module Moonbase
  module Models
    class WebhookEndpointUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Moonbase::WebhookEndpointUpdateParams,
            Moonbase::Internal::AnyHash
          )
        end

      # Indicates whether the endpoint is enabled.
      sig do
        returns(
          T.nilable(Moonbase::WebhookEndpointUpdateParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Moonbase::WebhookEndpointUpdateParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # An array of event types that this endpoint should receive notifications for.
      sig do
        returns(
          T.nilable(
            T::Array[Moonbase::WebhookEndpointUpdateParams::Subscription]
          )
        )
      end
      attr_reader :subscriptions

      sig do
        params(
          subscriptions:
            T::Array[
              Moonbase::WebhookEndpointUpdateParams::Subscription::OrHash
            ]
        ).void
      end
      attr_writer :subscriptions

      # The HTTPS URL where webhook events will be sent.
      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      sig do
        params(
          status: Moonbase::WebhookEndpointUpdateParams::Status::OrSymbol,
          subscriptions:
            T::Array[
              Moonbase::WebhookEndpointUpdateParams::Subscription::OrHash
            ],
          url: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Indicates whether the endpoint is enabled.
        status: nil,
        # An array of event types that this endpoint should receive notifications for.
        subscriptions: nil,
        # The HTTPS URL where webhook events will be sent.
        url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: Moonbase::WebhookEndpointUpdateParams::Status::OrSymbol,
            subscriptions:
              T::Array[Moonbase::WebhookEndpointUpdateParams::Subscription],
            url: String,
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
            T.all(Symbol, Moonbase::WebhookEndpointUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED =
          T.let(
            :disabled,
            Moonbase::WebhookEndpointUpdateParams::Status::TaggedSymbol
          )
        ENABLED =
          T.let(
            :enabled,
            Moonbase::WebhookEndpointUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::WebhookEndpointUpdateParams::Status::TaggedSymbol
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
              Moonbase::WebhookEndpointUpdateParams::Subscription,
              Moonbase::Internal::AnyHash
            )
          end

        # The type of event that will trigger notifications to the endpoint (e.g.,
        # `activity/item_created`).
        sig do
          returns(
            Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::OrSymbol
          )
        end
        attr_accessor :event_type

        # Unique identifier for the object.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Parameters for updating a webhook subscription.
        sig do
          params(
            event_type:
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::OrSymbol,
            id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of event that will trigger notifications to the endpoint (e.g.,
          # `activity/item_created`).
          event_type:,
          # Unique identifier for the object.
          id: nil
        )
        end

        sig do
          override.returns(
            {
              event_type:
                Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::OrSymbol,
              id: String
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
                Moonbase::WebhookEndpointUpdateParams::Subscription::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVITY_CALL_OCCURRED =
            T.let(
              :"activity/call_occurred",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_FORM_SUBMITTED =
            T.let(
              :"activity/form_submitted",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_INBOX_MESSAGE_SENT =
            T.let(
              :"activity/inbox_message_sent",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_ITEM_CREATED =
            T.let(
              :"activity/item_created",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_ITEM_MENTIONED =
            T.let(
              :"activity/item_mentioned",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_ITEM_MERGED =
            T.let(
              :"activity/item_merged",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_FILE_CREATED =
            T.let(
              :"activity/file_created",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_MEETING_HELD =
            T.let(
              :"activity/meeting_held",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_MEETING_SCHEDULED =
            T.let(
              :"activity/meeting_scheduled",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_NOTE_CREATED =
            T.let(
              :"activity/note_created",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_BOUNCED =
            T.let(
              :"activity/program_message_bounced",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_CLICKED =
            T.let(
              :"activity/program_message_clicked",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_COMPLAINED =
            T.let(
              :"activity/program_message_complained",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_FAILED =
            T.let(
              :"activity/program_message_failed",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_OPENED =
            T.let(
              :"activity/program_message_opened",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_SENT =
            T.let(
              :"activity/program_message_sent",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_SHIELDED =
            T.let(
              :"activity/program_message_shielded",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )
          ACTIVITY_PROGRAM_MESSAGE_UNSUBSCRIBED =
            T.let(
              :"activity/program_message_unsubscribed",
              Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Moonbase::WebhookEndpointUpdateParams::Subscription::EventType::TaggedSymbol
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
