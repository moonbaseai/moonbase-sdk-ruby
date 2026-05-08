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
      #   @return [Moonbase::Models::ProgramActivityMetrics, nil]
      optional :activity_metrics, -> { Moonbase::ProgramActivityMetrics }

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
      #   @param activity_metrics [Moonbase::Models::ProgramActivityMetrics] A `ProgramActivityMetrics` object summarizing engagement for this program.
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
    end
  end
end
