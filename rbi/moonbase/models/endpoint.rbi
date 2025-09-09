# typed: strong

module Moonbase
  module Models
    class Endpoint < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Endpoint, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # Indicates whether the endpoint is enabled.
      sig { returns(Moonbase::Endpoint::Status::TaggedSymbol) }
      attr_accessor :status

      # An array of `WebhookSubscription` objects representing the events this endpoint
      # will receive.
      sig { returns(T::Array[Moonbase::Subscription]) }
      attr_accessor :subscriptions

      # String representing the object’s type. Always `webhook_endpoint` for this
      # object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The HTTPS URL where webhook events will be sent.
      sig { returns(String) }
      attr_accessor :url

      # The signing secret used to verify webhook authenticity. This value is only shown
      # when creating the endpoint and starts with `whsec_`.
      sig { returns(T.nilable(String)) }
      attr_reader :secret

      sig { params(secret: String).void }
      attr_writer :secret

      # A Webhook Endpoint is an HTTP endpoint that receives webhooks. You can configure
      # which events are sent to each endpoint by creating `WebhookSubscription`
      # objects.
      sig do
        params(
          id: String,
          created_at: Time,
          status: Moonbase::Endpoint::Status::OrSymbol,
          subscriptions: T::Array[Moonbase::Subscription::OrHash],
          updated_at: Time,
          url: String,
          secret: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # Indicates whether the endpoint is enabled.
        status:,
        # An array of `WebhookSubscription` objects representing the events this endpoint
        # will receive.
        subscriptions:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # The HTTPS URL where webhook events will be sent.
        url:,
        # The signing secret used to verify webhook authenticity. This value is only shown
        # when creating the endpoint and starts with `whsec_`.
        secret: nil,
        # String representing the object’s type. Always `webhook_endpoint` for this
        # object.
        type: :webhook_endpoint
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            status: Moonbase::Endpoint::Status::TaggedSymbol,
            subscriptions: T::Array[Moonbase::Subscription],
            type: Symbol,
            updated_at: Time,
            url: String,
            secret: String
          }
        )
      end
      def to_hash
      end

      # Indicates whether the endpoint is enabled.
      module Status
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::Endpoint::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED = T.let(:disabled, Moonbase::Endpoint::Status::TaggedSymbol)
        ENABLED = T.let(:enabled, Moonbase::Endpoint::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::Endpoint::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
