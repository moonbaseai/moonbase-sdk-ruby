# typed: strong

module Moonbase
  module Models
    class Program < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Program, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The current status of the program. Can be `draft`, `published`, `paused`, or
      # `archived`.
      sig { returns(Moonbase::Program::Status::TaggedSymbol) }
      attr_accessor :status

      # `true` if link clicks are tracked for this program.
      sig { returns(T::Boolean) }
      attr_accessor :track_clicks

      # `true` if email opens are tracked for this program.
      sig { returns(T::Boolean) }
      attr_accessor :track_opens

      # The sending trigger for the program. Can be `api` for transactional sends or
      # `broadcast` for scheduled sends.
      sig { returns(Moonbase::Program::Trigger::TaggedSymbol) }
      attr_accessor :trigger

      # String representing the object’s type. Always `program` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # A `ProgramActivityMetrics` object summarizing engagement for this program.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(Moonbase::ProgramActivityMetrics)) }
      attr_reader :activity_metrics

      sig do
        params(activity_metrics: Moonbase::ProgramActivityMetrics::OrHash).void
      end
      attr_writer :activity_metrics

      # The user-facing name of the program.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # The `ProgramTemplate` used for messages in this program.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(Moonbase::ProgramTemplate)) }
      attr_reader :program_template

      sig { params(program_template: Moonbase::ProgramTemplate).void }
      attr_writer :program_template

      # For `broadcast` programs, the time the program is scheduled to send, as an ISO
      # 8601 timestamp in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :scheduled_at

      sig { params(scheduled_at: Time).void }
      attr_writer :scheduled_at

      # The Program object represents an email campaign. It defines the sending behavior
      # and tracks engagement metrics.
      sig do
        params(
          id: String,
          created_at: Time,
          status: Moonbase::Program::Status::OrSymbol,
          track_clicks: T::Boolean,
          track_opens: T::Boolean,
          trigger: Moonbase::Program::Trigger::OrSymbol,
          updated_at: Time,
          activity_metrics: Moonbase::ProgramActivityMetrics::OrHash,
          display_name: String,
          program_template: Moonbase::ProgramTemplate,
          scheduled_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The current status of the program. Can be `draft`, `published`, `paused`, or
        # `archived`.
        status:,
        # `true` if link clicks are tracked for this program.
        track_clicks:,
        # `true` if email opens are tracked for this program.
        track_opens:,
        # The sending trigger for the program. Can be `api` for transactional sends or
        # `broadcast` for scheduled sends.
        trigger:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # A `ProgramActivityMetrics` object summarizing engagement for this program.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        activity_metrics: nil,
        # The user-facing name of the program.
        display_name: nil,
        # The `ProgramTemplate` used for messages in this program.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        program_template: nil,
        # For `broadcast` programs, the time the program is scheduled to send, as an ISO
        # 8601 timestamp in UTC.
        scheduled_at: nil,
        # String representing the object’s type. Always `program` for this object.
        type: :program
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            status: Moonbase::Program::Status::TaggedSymbol,
            track_clicks: T::Boolean,
            track_opens: T::Boolean,
            trigger: Moonbase::Program::Trigger::TaggedSymbol,
            type: Symbol,
            updated_at: Time,
            activity_metrics: Moonbase::ProgramActivityMetrics,
            display_name: String,
            program_template: Moonbase::ProgramTemplate,
            scheduled_at: Time
          }
        )
      end
      def to_hash
      end

      # The current status of the program. Can be `draft`, `published`, `paused`, or
      # `archived`.
      module Status
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::Program::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, Moonbase::Program::Status::TaggedSymbol)
        PUBLISHED = T.let(:published, Moonbase::Program::Status::TaggedSymbol)
        PAUSED = T.let(:paused, Moonbase::Program::Status::TaggedSymbol)
        ARCHIVED = T.let(:archived, Moonbase::Program::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::Program::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      # The sending trigger for the program. Can be `api` for transactional sends or
      # `broadcast` for scheduled sends.
      module Trigger
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::Program::Trigger) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        API = T.let(:api, Moonbase::Program::Trigger::TaggedSymbol)
        BROADCAST = T.let(:broadcast, Moonbase::Program::Trigger::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::Program::Trigger::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
