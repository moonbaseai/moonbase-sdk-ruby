# frozen_string_literal: true

module Moonbase
  module Models
    class SlackMessageAddressParams < Moonbase::Internal::Type::BaseModel
      # @!attribute provider_id
      #   The Slack channel ID.
      #
      #   @return [String]
      required :provider_id, String

      # @!attribute type
      #
      #   @return [Symbol, :slack_channel]
      required :type, const: :slack_channel

      # @!attribute name
      #   The channel name name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(provider_id:, name: nil, type: :slack_channel)
      #   @param provider_id [String] The Slack channel ID.
      #
      #   @param name [String] The channel name name.
      #
      #   @param type [Symbol, :slack_channel]
    end
  end
end
