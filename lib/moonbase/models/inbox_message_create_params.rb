# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxMessages#create
    class InboxMessageCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute message
      #   Parameters for creating an email message draft. Provide either the fields for a
      #   new conversation, or a `conversation_id` to reply to an existing conversation.
      #
      #   @return [Moonbase::Models::InboxMessageCreateParams::Message::EmailMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::SlackMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::EmailMessageReplyCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::SlackMessageReplyCreateParams]
      required :message, union: -> { Moonbase::InboxMessageCreateParams::Message }

      # @!method initialize(message:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxMessageCreateParams} for more details.
      #
      #   @param message [Moonbase::Models::InboxMessageCreateParams::Message::EmailMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::SlackMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::EmailMessageReplyCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::SlackMessageReplyCreateParams] Parameters for creating an email message draft. Provide either the fields for a
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      # Parameters for creating an email message draft. Provide either the fields for a
      # new conversation, or a `conversation_id` to reply to an existing conversation.
      module Message
        extend Moonbase::Internal::Type::Union

        # Parameters for creating a draft in a new conversation.
        variant -> { Moonbase::InboxMessageCreateParams::Message::EmailMessageNewConversationCreateParams }

        # Parameters for creating a draft in a new conversation.
        variant -> { Moonbase::InboxMessageCreateParams::Message::SlackMessageNewConversationCreateParams }

        # Parameters for creating a draft reply in an existing conversation.
        variant -> { Moonbase::InboxMessageCreateParams::Message::EmailMessageReplyCreateParams }

        # Parameters for creating a draft reply in an existing conversation.
        variant -> { Moonbase::InboxMessageCreateParams::Message::SlackMessageReplyCreateParams }

        class EmailMessageNewConversationCreateParams < Moonbase::Internal::Type::BaseModel
          # @!attribute body
          #   The email body.
          #
          #   @return [Moonbase::Models::FormattedText]
          required :body, -> { Moonbase::FormattedText }

          # @!attribute inbox_id
          #   The inbox to use for sending the email.
          #
          #   @return [String]
          required :inbox_id, String

          # @!attribute subject
          #   The subject line of the email.
          #
          #   @return [String]
          required :subject, String

          # @!attribute to
          #   A list of recipients.
          #
          #   @return [Array<Moonbase::Models::EmailMessageAddressParams>]
          required :to, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddressParams] }

          # @!attribute type
          #
          #   @return [Symbol, :email_message]
          required :type, const: :email_message

          # @!attribute bcc
          #   A list of the BCC recipients.
          #
          #   @return [Array<Moonbase::Models::EmailMessageAddressParams>, nil]
          optional :bcc, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddressParams] }

          # @!attribute cc
          #   A list of the CC recipients.
          #
          #   @return [Array<Moonbase::Models::EmailMessageAddressParams>, nil]
          optional :cc, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddressParams] }

          # @!method initialize(body:, inbox_id:, subject:, to:, bcc: nil, cc: nil, type: :email_message)
          #   Parameters for creating a draft in a new conversation.
          #
          #   @param body [Moonbase::Models::FormattedText] The email body.
          #
          #   @param inbox_id [String] The inbox to use for sending the email.
          #
          #   @param subject [String] The subject line of the email.
          #
          #   @param to [Array<Moonbase::Models::EmailMessageAddressParams>] A list of recipients.
          #
          #   @param bcc [Array<Moonbase::Models::EmailMessageAddressParams>] A list of the BCC recipients.
          #
          #   @param cc [Array<Moonbase::Models::EmailMessageAddressParams>] A list of the CC recipients.
          #
          #   @param type [Symbol, :email_message]
        end

        class SlackMessageNewConversationCreateParams < Moonbase::Internal::Type::BaseModel
          # @!attribute body
          #   The message body.
          #
          #   @return [Moonbase::Models::FormattedText]
          required :body, -> { Moonbase::FormattedText }

          # @!attribute inbox_id
          #   The inbox to use for sending the Slack message.
          #
          #   @return [String]
          required :inbox_id, String

          # @!attribute subject
          #   The subject line of the conversation (not included in actual Slack message).
          #
          #   @return [String]
          required :subject, String

          # @!attribute to
          #   The Slack channel to post the message in.
          #
          #   @return [Array<Moonbase::Models::SlackMessageAddressParams>]
          required :to, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::SlackMessageAddressParams] }

          # @!attribute type
          #
          #   @return [Symbol, :slack_message]
          required :type, const: :slack_message

          # @!method initialize(body:, inbox_id:, subject:, to:, type: :slack_message)
          #   Parameters for creating a draft in a new conversation.
          #
          #   @param body [Moonbase::Models::FormattedText] The message body.
          #
          #   @param inbox_id [String] The inbox to use for sending the Slack message.
          #
          #   @param subject [String] The subject line of the conversation (not included in actual Slack message).
          #
          #   @param to [Array<Moonbase::Models::SlackMessageAddressParams>] The Slack channel to post the message in.
          #
          #   @param type [Symbol, :slack_message]
        end

        class EmailMessageReplyCreateParams < Moonbase::Internal::Type::BaseModel
          # @!attribute body
          #   The email body.
          #
          #   @return [Moonbase::Models::FormattedText]
          required :body, -> { Moonbase::FormattedText }

          # @!attribute conversation_id
          #   The ID of the conversation to reply to.
          #
          #   @return [String]
          required :conversation_id, String

          # @!attribute inbox_id
          #   The inbox to use for sending the email.
          #
          #   @return [String]
          required :inbox_id, String

          # @!attribute type
          #
          #   @return [Symbol, :email_message]
          required :type, const: :email_message

          # @!attribute bcc
          #   A list of the BCC recipients.
          #
          #   @return [Array<Moonbase::Models::EmailMessageAddressParams>, nil]
          optional :bcc, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddressParams] }

          # @!attribute cc
          #   A list of the CC recipients.
          #
          #   @return [Array<Moonbase::Models::EmailMessageAddressParams>, nil]
          optional :cc, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddressParams] }

          # @!attribute to
          #   A list of recipients. If omitted, recipients are derived from the conversation.
          #
          #   @return [Array<Moonbase::Models::EmailMessageAddressParams>, nil]
          optional :to, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddressParams] }

          # @!method initialize(body:, conversation_id:, inbox_id:, bcc: nil, cc: nil, to: nil, type: :email_message)
          #   Parameters for creating a draft reply in an existing conversation.
          #
          #   @param body [Moonbase::Models::FormattedText] The email body.
          #
          #   @param conversation_id [String] The ID of the conversation to reply to.
          #
          #   @param inbox_id [String] The inbox to use for sending the email.
          #
          #   @param bcc [Array<Moonbase::Models::EmailMessageAddressParams>] A list of the BCC recipients.
          #
          #   @param cc [Array<Moonbase::Models::EmailMessageAddressParams>] A list of the CC recipients.
          #
          #   @param to [Array<Moonbase::Models::EmailMessageAddressParams>] A list of recipients. If omitted, recipients are derived from the conversation.
          #
          #   @param type [Symbol, :email_message]
        end

        class SlackMessageReplyCreateParams < Moonbase::Internal::Type::BaseModel
          # @!attribute body
          #   The message body.
          #
          #   @return [Moonbase::Models::FormattedText]
          required :body, -> { Moonbase::FormattedText }

          # @!attribute conversation_id
          #   The ID of the conversation to reply to.
          #
          #   @return [String]
          required :conversation_id, String

          # @!attribute inbox_id
          #   The inbox to use for sending the Slack message.
          #
          #   @return [String]
          required :inbox_id, String

          # @!attribute type
          #
          #   @return [Symbol, :slack_message]
          required :type, const: :slack_message

          # @!attribute to
          #   The Slack channel to post the message in.
          #
          #   @return [Array<Moonbase::Models::SlackMessageAddressParams>, nil]
          optional :to, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::SlackMessageAddressParams] }

          # @!method initialize(body:, conversation_id:, inbox_id:, to: nil, type: :slack_message)
          #   Parameters for creating a draft reply in an existing conversation.
          #
          #   @param body [Moonbase::Models::FormattedText] The message body.
          #
          #   @param conversation_id [String] The ID of the conversation to reply to.
          #
          #   @param inbox_id [String] The inbox to use for sending the Slack message.
          #
          #   @param to [Array<Moonbase::Models::SlackMessageAddressParams>] The Slack channel to post the message in.
          #
          #   @param type [Symbol, :slack_message]
        end

        # @!method self.variants
        #   @return [Array(Moonbase::Models::InboxMessageCreateParams::Message::EmailMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::SlackMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::EmailMessageReplyCreateParams, Moonbase::Models::InboxMessageCreateParams::Message::SlackMessageReplyCreateParams)]
      end
    end
  end
end
