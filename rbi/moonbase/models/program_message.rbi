# typed: strong

module Moonbase
  module Models
    class ProgramMessage < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ProgramMessage, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the message was created and enqueued for sending, as an ISO 8601
      # timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The `ProgramTemplate` used to generate this message.
      sig { returns(Moonbase::ProgramTemplate) }
      attr_reader :program_template

      sig { params(program_template: Moonbase::ProgramTemplate::OrHash).void }
      attr_writer :program_template

      # String representing the object’s type. Always `program_message` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Represents a single message sent as part of a `Program`.
      sig do
        params(
          id: String,
          created_at: Time,
          program_template: Moonbase::ProgramTemplate::OrHash,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the message was created and enqueued for sending, as an ISO 8601
        # timestamp in UTC.
        created_at:,
        # The `ProgramTemplate` used to generate this message.
        program_template:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # String representing the object’s type. Always `program_message` for this object.
        type: :program_message
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            program_template: Moonbase::ProgramTemplate,
            type: Symbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
