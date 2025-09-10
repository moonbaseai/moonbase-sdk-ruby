# typed: strong

module Moonbase
  module Models
    class ProgramTemplate < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ProgramTemplate, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The body content of the email, which can include Liquid variables.
      sig { returns(Moonbase::FormattedText) }
      attr_reader :body

      sig { params(body: Moonbase::FormattedText::OrHash).void }
      attr_writer :body

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The subject line of the email, which can include Liquid variables.
      sig { returns(String) }
      attr_accessor :subject

      # String representing the object’s type. Always `program_template` for this
      # object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The `Program` that uses this template.
      #
      # **Note:** Only present when requested using the `include` query parameter.
      sig { returns(T.nilable(Moonbase::Program)) }
      attr_reader :program

      sig { params(program: Moonbase::Program).void }
      attr_writer :program

      # The ProgramTemplate object defines the content of a message sent by a `Program`,
      # including support for Liquid templating.
      sig do
        params(
          id: String,
          body: Moonbase::FormattedText::OrHash,
          created_at: Time,
          subject: String,
          updated_at: Time,
          program: Moonbase::Program,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The body content of the email, which can include Liquid variables.
        body:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The subject line of the email, which can include Liquid variables.
        subject:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # The `Program` that uses this template.
        #
        # **Note:** Only present when requested using the `include` query parameter.
        program: nil,
        # String representing the object’s type. Always `program_template` for this
        # object.
        type: :program_template
      )
      end

      sig do
        override.returns(
          {
            id: String,
            body: Moonbase::FormattedText,
            created_at: Time,
            subject: String,
            type: Symbol,
            updated_at: Time,
            program: Moonbase::Program
          }
        )
      end
      def to_hash
      end
    end
  end
end
