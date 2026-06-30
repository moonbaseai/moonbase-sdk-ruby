# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxMessages#update
    class InboxMessageUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute message
      #   Parameters for updating a draft message in an existing conversation.
      #
      #   @return [Moonbase::Models::InboxMessageUpdateParams::Message::EmailMessageUpdateParams, Moonbase::Models::InboxMessageUpdateParams::Message::SlackMessageUpdateParams]
      required :message, union: -> { Moonbase::InboxMessageUpdateParams::Message }

      # @!method initialize(id:, message:, request_options: {})
      #   @param id [String]
      #
      #   @param message [Moonbase::Models::InboxMessageUpdateParams::Message::EmailMessageUpdateParams, Moonbase::Models::InboxMessageUpdateParams::Message::SlackMessageUpdateParams] Parameters for updating a draft message in an existing conversation.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      # Parameters for updating a draft message in an existing conversation.
      module Message
        extend Moonbase::Internal::Type::Union

        # Parameters for updating a draft message in an existing conversation.
        variant -> { Moonbase::InboxMessageUpdateParams::Message::EmailMessageUpdateParams }

        # Parameters for updating a draft message in an existing conversation.
        variant -> { Moonbase::InboxMessageUpdateParams::Message::SlackMessageUpdateParams }

        class EmailMessageUpdateParams < Moonbase::Internal::Type::BaseModel
          # @!attribute lock_version
          #   The current lock version of the draft for optimistic concurrency control.
          #
          #   @return [Integer]
          required :lock_version, Integer

          # @!attribute type
          #
          #   @return [Symbol, :email_message]
          required :type, const: :email_message

          # @!attribute bcc
          #   A list of the BCC recipients.
          #
          #   @return [Array<Moonbase::Models::EmailMessageAddressParams>, nil]
          optional :bcc, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddressParams] }

          # @!attribute body
          #   The email body.
          #
          #   @return [Moonbase::Models::FormattedText, nil]
          optional :body, -> { Moonbase::FormattedText }

          # @!attribute cc
          #   A list of the CC recipients.
          #
          #   @return [Array<Moonbase::Models::EmailMessageAddressParams>, nil]
          optional :cc, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddressParams] }

          # @!attribute subject
          #   The subject line of the email.
          #
          #   @return [String, nil]
          optional :subject, String

          # @!attribute to
          #   A list of the recipients.
          #
          #   @return [Array<Moonbase::Models::EmailMessageAddressParams>, nil]
          optional :to, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddressParams] }

          # @!method initialize(lock_version:, bcc: nil, body: nil, cc: nil, subject: nil, to: nil, type: :email_message)
          #   Parameters for updating a draft message in an existing conversation.
          #
          #   @param lock_version [Integer] The current lock version of the draft for optimistic concurrency control.
          #
          #   @param bcc [Array<Moonbase::Models::EmailMessageAddressParams>] A list of the BCC recipients.
          #
          #   @param body [Moonbase::Models::FormattedText] The email body.
          #
          #   @param cc [Array<Moonbase::Models::EmailMessageAddressParams>] A list of the CC recipients.
          #
          #   @param subject [String] The subject line of the email.
          #
          #   @param to [Array<Moonbase::Models::EmailMessageAddressParams>] A list of the recipients.
          #
          #   @param type [Symbol, :email_message]
        end

        class SlackMessageUpdateParams < Moonbase::Internal::Type::BaseModel
          # @!attribute lock_version
          #   The current lock version of the draft for optimistic concurrency control.
          #
          #   @return [Integer]
          required :lock_version, Integer

          # @!attribute type
          #
          #   @return [Symbol, :slack_message]
          required :type, const: :slack_message

          # @!attribute body
          #   The message body.
          #
          #   @return [Moonbase::Models::FormattedText, nil]
          optional :body, -> { Moonbase::FormattedText }

          # @!attribute subject
          #   The subject line of the conversation (not included in actual Slack message).
          #
          #   @return [String, nil]
          optional :subject, String

          # @!attribute to
          #   The Slack channel to post the message in.
          #
          #   @return [Array<Moonbase::Models::SlackMessageAddressParams>, nil]
          optional :to, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::SlackMessageAddressParams] }

          # @!method initialize(lock_version:, body: nil, subject: nil, to: nil, type: :slack_message)
          #   Parameters for updating a draft message in an existing conversation.
          #
          #   @param lock_version [Integer] The current lock version of the draft for optimistic concurrency control.
          #
          #   @param body [Moonbase::Models::FormattedText] The message body.
          #
          #   @param subject [String] The subject line of the conversation (not included in actual Slack message).
          #
          #   @param to [Array<Moonbase::Models::SlackMessageAddressParams>] The Slack channel to post the message in.
          #
          #   @param type [Symbol, :slack_message]
        end

        # @!method self.variants
        #   @return [Array(Moonbase::Models::InboxMessageUpdateParams::Message::EmailMessageUpdateParams, Moonbase::Models::InboxMessageUpdateParams::Message::SlackMessageUpdateParams)]
      end
    end
  end
end
