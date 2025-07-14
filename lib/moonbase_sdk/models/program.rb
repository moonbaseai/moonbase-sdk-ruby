# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Programs#retrieve
    class Program < MoonbaseSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute links
      #
      #   @return [MoonbaseSDK::Models::Program::Links]
      required :links, -> { MoonbaseSDK::Program::Links }

      # @!attribute status
      #   The current status of the program. Can be `draft`, `published`, `paused`, or
      #   `archived`.
      #
      #   @return [Symbol, MoonbaseSDK::Models::Program::Status]
      required :status, enum: -> { MoonbaseSDK::Program::Status }

      # @!attribute trigger
      #   The sending trigger for the program. Can be `api` for transactional sends or
      #   `broadcast` for scheduled sends.
      #
      #   @return [Symbol, MoonbaseSDK::Models::Program::Trigger]
      required :trigger, enum: -> { MoonbaseSDK::Program::Trigger }

      # @!attribute type
      #   String representing the object’s type. Always `program` for this object.
      #
      #   @return [Symbol, :program]
      required :type, const: :program

      # @!attribute activity_metrics
      #   A `ProgramActivityMetrics` object summarizing engagement for this program.
      #
      #   @return [MoonbaseSDK::Models::Program::ActivityMetrics, nil]
      optional :activity_metrics, -> { MoonbaseSDK::Program::ActivityMetrics }

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute display_name
      #   The user-facing name of the program.
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute program_template
      #   The `ProgramTemplate` used for messages in this program.
      #
      #   @return [MoonbaseSDK::Models::ProgramTemplate, nil]
      optional :program_template, -> { MoonbaseSDK::ProgramTemplate }

      # @!attribute scheduled_at
      #   For `broadcast` programs, the time the program is scheduled to send, as an RFC
      #   3339 timestamp.
      #
      #   @return [Time, nil]
      optional :scheduled_at, Time

      # @!attribute track_clicks
      #   `true` if link clicks are tracked for this program.
      #
      #   @return [Boolean, nil]
      optional :track_clicks, MoonbaseSDK::Internal::Type::Boolean

      # @!attribute track_opens
      #   `true` if email opens are tracked for this program.
      #
      #   @return [Boolean, nil]
      optional :track_opens, MoonbaseSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, links:, status:, trigger:, activity_metrics: nil, created_at: nil, display_name: nil, program_template: nil, scheduled_at: nil, track_clicks: nil, track_opens: nil, updated_at: nil, type: :program)
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::Program} for more details.
      #
      #   The Program object represents an email campaign. It defines the sending behavior
      #   and tracks engagement metrics.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param links [MoonbaseSDK::Models::Program::Links]
      #
      #   @param status [Symbol, MoonbaseSDK::Models::Program::Status] The current status of the program. Can be `draft`, `published`, `paused`, or `ar
      #
      #   @param trigger [Symbol, MoonbaseSDK::Models::Program::Trigger] The sending trigger for the program. Can be `api` for transactional sends or `br
      #
      #   @param activity_metrics [MoonbaseSDK::Models::Program::ActivityMetrics] A `ProgramActivityMetrics` object summarizing engagement for this program.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param display_name [String] The user-facing name of the program.
      #
      #   @param program_template [MoonbaseSDK::Models::ProgramTemplate] The `ProgramTemplate` used for messages in this program.
      #
      #   @param scheduled_at [Time] For `broadcast` programs, the time the program is scheduled to send, as an RFC 3
      #
      #   @param track_clicks [Boolean] `true` if link clicks are tracked for this program.
      #
      #   @param track_opens [Boolean] `true` if email opens are tracked for this program.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :program] String representing the object’s type. Always `program` for this object.

      # @see MoonbaseSDK::Models::Program#links
      class Links < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute program_template
        #   A link to the `ProgramTemplate` for this program.
        #
        #   @return [String]
        required :program_template, String

        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!method initialize(program_template:, self_:)
        #   @param program_template [String] A link to the `ProgramTemplate` for this program.
        #
        #   @param self_ [String] The canonical URL for this object.
      end

      # The current status of the program. Can be `draft`, `published`, `paused`, or
      # `archived`.
      #
      # @see MoonbaseSDK::Models::Program#status
      module Status
        extend MoonbaseSDK::Internal::Type::Enum

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
      # @see MoonbaseSDK::Models::Program#trigger
      module Trigger
        extend MoonbaseSDK::Internal::Type::Enum

        API = :api
        BROADCAST = :broadcast

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MoonbaseSDK::Models::Program#activity_metrics
      class ActivityMetrics < MoonbaseSDK::Internal::Type::BaseModel
        # @!attribute bounced
        #   The number of emails that could not be delivered.
        #
        #   @return [Integer, nil]
        optional :bounced, Integer

        # @!attribute clicked
        #   The number of recipients who clicked at least one link.
        #
        #   @return [Integer, nil]
        optional :clicked, Integer

        # @!attribute complained
        #   The number of recipients who marked the email as spam.
        #
        #   @return [Integer, nil]
        optional :complained, Integer

        # @!attribute failed
        #   The number of emails that failed to send due to a technical issue.
        #
        #   @return [Integer, nil]
        optional :failed, Integer

        # @!attribute opened
        #   The number of recipients who opened the email.
        #
        #   @return [Integer, nil]
        optional :opened, Integer

        # @!attribute sent
        #   The total number of emails successfully sent.
        #
        #   @return [Integer, nil]
        optional :sent, Integer

        # @!attribute shielded
        #   The number of emails blocked by delivery protection rules.
        #
        #   @return [Integer, nil]
        optional :shielded, Integer

        # @!attribute unsubscribed
        #   The number of recipients who unsubscribed.
        #
        #   @return [Integer, nil]
        optional :unsubscribed, Integer

        # @!method initialize(bounced: nil, clicked: nil, complained: nil, failed: nil, opened: nil, sent: nil, shielded: nil, unsubscribed: nil)
        #   A `ProgramActivityMetrics` object summarizing engagement for this program.
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
