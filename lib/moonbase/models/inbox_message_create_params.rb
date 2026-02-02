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
      #   @return [Array<Moonbase::Models::InboxMessageCreateParams::Bcc>, nil]
      optional :bcc, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::InboxMessageCreateParams::Bcc] }

      # @!attribute cc
      #   A list of the CC recipients.
      #
      #   @return [Array<Moonbase::Models::InboxMessageCreateParams::Cc>, nil]
      optional :cc, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::InboxMessageCreateParams::Cc] }

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
      #   @return [Array<Moonbase::Models::InboxMessageCreateParams::To>, nil]
      optional :to, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::InboxMessageCreateParams::To] }

      # @!method initialize(body:, inbox_id:, bcc: nil, cc: nil, conversation_id: nil, subject: nil, to: nil, request_options: {})
      #   @param body [Moonbase::Models::FormattedText] The email body.
      #
      #   @param inbox_id [String] The inbox to use for sending the email.
      #
      #   @param bcc [Array<Moonbase::Models::InboxMessageCreateParams::Bcc>] A list of the BCC recipients.
      #
      #   @param cc [Array<Moonbase::Models::InboxMessageCreateParams::Cc>] A list of the CC recipients.
      #
      #   @param conversation_id [String] The ID of the conversation, if responding to an existing conversation.
      #
      #   @param subject [String] The subject line of the email.
      #
      #   @param to [Array<Moonbase::Models::InboxMessageCreateParams::To>] A list of recipients.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Bcc < Moonbase::Internal::Type::BaseModel
        # @!attribute email
        #   The email address.
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #   The recipient's name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(email:, name: nil)
        #   @param email [String] The email address.
        #
        #   @param name [String] The recipient's name.
      end

      class Cc < Moonbase::Internal::Type::BaseModel
        # @!attribute email
        #   The email address.
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #   The recipient's name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(email:, name: nil)
        #   @param email [String] The email address.
        #
        #   @param name [String] The recipient's name.
      end

      class To < Moonbase::Internal::Type::BaseModel
        # @!attribute email
        #   The email address.
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #   The recipient's name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(email:, name: nil)
        #   @param email [String] The email address.
        #
        #   @param name [String] The recipient's name.
      end
    end
  end
end
