# typed: strong

module Moonbase
  module Models
    class SlackMessageAddressParams < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::SlackMessageAddressParams,
            Moonbase::Internal::AnyHash
          )
        end

      # The Slack channel ID.
      sig { returns(String) }
      attr_accessor :provider_id

      sig { returns(Symbol) }
      attr_accessor :type

      # The channel name name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(provider_id: String, name: String, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # The Slack channel ID.
        provider_id:,
        # The channel name name.
        name: nil,
        type: :slack_channel
      )
      end

      sig do
        override.returns({ provider_id: String, type: Symbol, name: String })
      end
      def to_hash
      end
    end
  end
end
