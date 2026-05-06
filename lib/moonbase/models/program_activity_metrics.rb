# frozen_string_literal: true

module Moonbase
  module Models
    class ProgramActivityMetrics < Moonbase::Internal::Type::BaseModel
      # @!attribute bounced
      #   The number of emails that could not be delivered.
      #
      #   @return [Integer]
      required :bounced, Integer

      # @!attribute clicked
      #   The number of recipients who clicked at least one link.
      #
      #   @return [Integer]
      required :clicked, Integer

      # @!attribute complained
      #   The number of recipients who marked the email as spam.
      #
      #   @return [Integer]
      required :complained, Integer

      # @!attribute failed
      #   The number of emails that failed to send due to a technical issue.
      #
      #   @return [Integer]
      required :failed, Integer

      # @!attribute opened
      #   The number of recipients who opened the email.
      #
      #   @return [Integer]
      required :opened, Integer

      # @!attribute sent
      #   The total number of emails successfully sent.
      #
      #   @return [Integer]
      required :sent, Integer

      # @!attribute shielded
      #   The number of emails blocked by delivery protection rules.
      #
      #   @return [Integer]
      required :shielded, Integer

      # @!attribute unsubscribed
      #   The number of recipients who unsubscribed.
      #
      #   @return [Integer]
      required :unsubscribed, Integer

      # @!method initialize(bounced:, clicked:, complained:, failed:, opened:, sent:, shielded:, unsubscribed:)
      #   The ProgramActivityMetrics object provides a summary of engagement and delivery
      #   statistics for a marketing program.
      #
      #   @param bounced [Integer] The number of emails that could not be delivered.
      #
      #   @param clicked [Integer] The number of recipients who clicked at least one link.
      #
      #   @param complained [Integer] The number of recipients who marked the email as spam.
      #
      #   @param failed [Integer] The number of emails that failed to send due to a technical issue.
      #
      #   @param opened [Integer] The number of recipients who opened the email.
      #
      #   @param sent [Integer] The total number of emails successfully sent.
      #
      #   @param shielded [Integer] The number of emails blocked by delivery protection rules.
      #
      #   @param unsubscribed [Integer] The number of recipients who unsubscribed.
    end
  end
end
