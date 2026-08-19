# frozen_string_literal: true

module Moonbase
  module Models
    # The Email Message object represents a single email within a `Conversation`.
    #
    # @see Moonbase::Resources::InboxMessages#create
    module InboxMessageCreateResponse
      extend Moonbase::Internal::Type::Union

      discriminator :type

      # The Email Message object represents a single email within a `Conversation`.
      variant :email_message, -> { Moonbase::EmailMessage }

      # The Slack Message object represents a single Slack post within a `Conversation`.
      variant :slack_message, -> { Moonbase::SlackMessage }

      # @!method self.variants
      #   @return [Array(Moonbase::Models::EmailMessage, Moonbase::Models::SlackMessage)]
    end
  end
end
