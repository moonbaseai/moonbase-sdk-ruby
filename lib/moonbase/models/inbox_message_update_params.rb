# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxMessages#update
    class InboxMessageUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute lock_version
      #   The current lock version of the draft for optimistic concurrency control.
      #
      #   @return [Integer]
      required :lock_version, Integer

      # @!attribute bcc
      #   A list of the BCC recipients.
      #
      #   @return [Array<Moonbase::Models::InboxMessageUpdateParams::Bcc>, nil]
      optional :bcc, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::InboxMessageUpdateParams::Bcc] }

      # @!attribute body
      #   The email body.
      #
      #   @return [Moonbase::Models::FormattedText, nil]
      optional :body, -> { Moonbase::FormattedText }

      # @!attribute cc
      #   A list of the CC recipients.
      #
      #   @return [Array<Moonbase::Models::InboxMessageUpdateParams::Cc>, nil]
      optional :cc, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::InboxMessageUpdateParams::Cc] }

      # @!attribute subject
      #   The subject line of the email.
      #
      #   @return [String, nil]
      optional :subject, String

      # @!attribute to
      #   A list of the recipients.
      #
      #   @return [Array<Moonbase::Models::InboxMessageUpdateParams::To>, nil]
      optional :to, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::InboxMessageUpdateParams::To] }

      # @!method initialize(lock_version:, bcc: nil, body: nil, cc: nil, subject: nil, to: nil, request_options: {})
      #   @param lock_version [Integer] The current lock version of the draft for optimistic concurrency control.
      #
      #   @param bcc [Array<Moonbase::Models::InboxMessageUpdateParams::Bcc>] A list of the BCC recipients.
      #
      #   @param body [Moonbase::Models::FormattedText] The email body.
      #
      #   @param cc [Array<Moonbase::Models::InboxMessageUpdateParams::Cc>] A list of the CC recipients.
      #
      #   @param subject [String] The subject line of the email.
      #
      #   @param to [Array<Moonbase::Models::InboxMessageUpdateParams::To>] A list of the recipients.
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
