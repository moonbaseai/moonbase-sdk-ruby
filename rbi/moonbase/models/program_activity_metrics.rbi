# typed: strong

module Moonbase
  module Models
    class ProgramActivityMetrics < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ProgramActivityMetrics, Moonbase::Internal::AnyHash)
        end

      # The number of emails that could not be delivered.
      sig { returns(Integer) }
      attr_accessor :bounced

      # The number of recipients who clicked at least one link.
      sig { returns(Integer) }
      attr_accessor :clicked

      # The number of recipients who marked the email as spam.
      sig { returns(Integer) }
      attr_accessor :complained

      # The number of emails that failed to send due to a technical issue.
      sig { returns(Integer) }
      attr_accessor :failed

      # The number of recipients who opened the email.
      sig { returns(Integer) }
      attr_accessor :opened

      # The total number of emails successfully sent.
      sig { returns(Integer) }
      attr_accessor :sent

      # The number of emails blocked by delivery protection rules.
      sig { returns(Integer) }
      attr_accessor :shielded

      # The number of recipients who unsubscribed.
      sig { returns(Integer) }
      attr_accessor :unsubscribed

      # The ProgramActivityMetrics object provides a summary of engagement and delivery
      # statistics for a marketing program.
      sig do
        params(
          bounced: Integer,
          clicked: Integer,
          complained: Integer,
          failed: Integer,
          opened: Integer,
          sent: Integer,
          shielded: Integer,
          unsubscribed: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # The number of emails that could not be delivered.
        bounced:,
        # The number of recipients who clicked at least one link.
        clicked:,
        # The number of recipients who marked the email as spam.
        complained:,
        # The number of emails that failed to send due to a technical issue.
        failed:,
        # The number of recipients who opened the email.
        opened:,
        # The total number of emails successfully sent.
        sent:,
        # The number of emails blocked by delivery protection rules.
        shielded:,
        # The number of recipients who unsubscribed.
        unsubscribed:
      )
      end

      sig do
        override.returns(
          {
            bounced: Integer,
            clicked: Integer,
            complained: Integer,
            failed: Integer,
            opened: Integer,
            sent: Integer,
            shielded: Integer,
            unsubscribed: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
