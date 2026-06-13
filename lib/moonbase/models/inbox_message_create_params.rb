# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxMessages#create
    class InboxMessageCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute body
      #   Parameters for creating an email message draft. Provide either the fields for a
      #   new conversation, or a `conversation_id` to reply to an existing conversation.
      #
      #   @return [Moonbase::Models::InboxMessageCreateParams::Body::EmailMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Body::EmailMessageReplyCreateParams]
      required :body, union: -> { Moonbase::InboxMessageCreateParams::Body }

      # @!method initialize(body:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxMessageCreateParams} for more details.
      #
      #   @param body [Moonbase::Models::InboxMessageCreateParams::Body::EmailMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Body::EmailMessageReplyCreateParams] Parameters for creating an email message draft. Provide either the fields for a
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      # Parameters for creating an email message draft. Provide either the fields for a
      # new conversation, or a `conversation_id` to reply to an existing conversation.
      module Body
        extend Moonbase::Internal::Type::Union

        # Parameters for creating a draft in a new conversation.
        variant -> { Moonbase::InboxMessageCreateParams::Body::EmailMessageNewConversationCreateParams }

        # Parameters for creating a draft reply in an existing conversation.
        variant -> { Moonbase::InboxMessageCreateParams::Body::EmailMessageReplyCreateParams }

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

          # @!method initialize(body:, inbox_id:, subject:, to:, bcc: nil, cc: nil)
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

          # @!method initialize(body:, conversation_id:, inbox_id:, bcc: nil, cc: nil, to: nil)
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
        end

        # @!method self.variants
        #   @return [Array(Moonbase::Models::InboxMessageCreateParams::Body::EmailMessageNewConversationCreateParams, Moonbase::Models::InboxMessageCreateParams::Body::EmailMessageReplyCreateParams)]
      end
    end
  end
end
