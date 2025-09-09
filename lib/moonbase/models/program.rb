# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Programs#retrieve
    class Program < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute status
      #   The current status of the program. Can be `draft`, `published`, `paused`, or
      #   `archived`.
      #
      #   @return [Symbol, Moonbase::Models::Program::Status]
      required :status, enum: -> { Moonbase::Program::Status }

      # @!attribute track_clicks
      #   `true` if link clicks are tracked for this program.
      #
      #   @return [Boolean]
      required :track_clicks, Moonbase::Internal::Type::Boolean

      # @!attribute track_opens
      #   `true` if email opens are tracked for this program.
      #
      #   @return [Boolean]
      required :track_opens, Moonbase::Internal::Type::Boolean

      # @!attribute trigger
      #   The sending trigger for the program. Can be `api` for transactional sends or
      #   `broadcast` for scheduled sends.
      #
      #   @return [Symbol, Moonbase::Models::Program::Trigger]
      required :trigger, enum: -> { Moonbase::Program::Trigger }

      # @!attribute type
      #   String representing the object’s type. Always `program` for this object.
      #
      #   @return [Symbol, :program]
      required :type, const: :program

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute activity_metrics
      #   A `ProgramActivityMetrics` object summarizing engagement for this program.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::Program::ActivityMetrics, nil]
      optional :activity_metrics, -> { Moonbase::Program::ActivityMetrics }

      # @!attribute display_name
      #   The user-facing name of the program.
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute program_template
      #   The `ProgramTemplate` used for messages in this program.
      #
      #   **Note:** Only present when requested using the `include` query parameter.
      #
      #   @return [Moonbase::Models::ProgramTemplate, nil]
      optional :program_template, -> { Moonbase::ProgramTemplate }

      # @!attribute scheduled_at
      #   For `broadcast` programs, the time the program is scheduled to send, as an ISO
      #   8601 timestamp in UTC.
      #
      #   @return [Time, nil]
      optional :scheduled_at, Time

      # @!method initialize(id:, created_at:, status:, track_clicks:, track_opens:, trigger:, updated_at:, activity_metrics: nil, display_name: nil, program_template: nil, scheduled_at: nil, type: :program)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::Program} for more details.
      #
      #   The Program object represents an email campaign. It defines the sending behavior
      #   and tracks engagement metrics.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param status [Symbol, Moonbase::Models::Program::Status] The current status of the program. Can be `draft`, `published`, `paused`, or `ar
      #
      #   @param track_clicks [Boolean] `true` if link clicks are tracked for this program.
      #
      #   @param track_opens [Boolean] `true` if email opens are tracked for this program.
      #
      #   @param trigger [Symbol, Moonbase::Models::Program::Trigger] The sending trigger for the program. Can be `api` for transactional sends or `br
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param activity_metrics [Moonbase::Models::Program::ActivityMetrics] A `ProgramActivityMetrics` object summarizing engagement for this program.
      #
      #   @param display_name [String] The user-facing name of the program.
      #
      #   @param program_template [Moonbase::Models::ProgramTemplate] The `ProgramTemplate` used for messages in this program.
      #
      #   @param scheduled_at [Time] For `broadcast` programs, the time the program is scheduled to send, as an ISO 8
      #
      #   @param type [Symbol, :program] String representing the object’s type. Always `program` for this object.

      # The current status of the program. Can be `draft`, `published`, `paused`, or
      # `archived`.
      #
      # @see Moonbase::Models::Program#status
      module Status
        extend Moonbase::Internal::Type::Enum

        DRAFT = :draft
        PUBLISHED = :published
        PAUSED = :paused
        ARCHIVED = :archived

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The sending trigger for the program. Can be `api` for transactional sends or
      # `broadcast` for scheduled sends.
      #
      # @see Moonbase::Models::Program#trigger
      module Trigger
        extend Moonbase::Internal::Type::Enum

        API = :api
        BROADCAST = :broadcast

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Moonbase::Models::Program#activity_metrics
      class ActivityMetrics < Moonbase::Internal::Type::BaseModel
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
        #   A `ProgramActivityMetrics` object summarizing engagement for this program.
        #
        #   **Note:** Only present when requested using the `include` query parameter.
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
end
