# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxMessages#create
    class InboxMessageCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

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

      # @!attribute conversation_id
      #   The ID of the conversation, if responding to an existing conversation.
      #
      #   @return [String, nil]
      optional :conversation_id, String

      # @!attribute subject
      #   The subject line of the email.
      #
      #   @return [String, nil]
      optional :subject, String

      # @!attribute to
      #   A list of recipients.
      #
      #   @return [Array<Moonbase::Models::EmailMessageAddressParams>, nil]
      optional :to, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailMessageAddressParams] }

      # @!method initialize(body:, inbox_id:, bcc: nil, cc: nil, conversation_id: nil, subject: nil, to: nil, request_options: {})
      #   @param body [Moonbase::Models::FormattedText] The email body.
      #
      #   @param inbox_id [String] The inbox to use for sending the email.
      #
      #   @param bcc [Array<Moonbase::Models::EmailMessageAddressParams>] A list of the BCC recipients.
      #
      #   @param cc [Array<Moonbase::Models::EmailMessageAddressParams>] A list of the CC recipients.
      #
      #   @param conversation_id [String] The ID of the conversation, if responding to an existing conversation.
      #
      #   @param subject [String] The subject line of the email.
      #
      #   @param to [Array<Moonbase::Models::EmailMessageAddressParams>] A list of recipients.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
