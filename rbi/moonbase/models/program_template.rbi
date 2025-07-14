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
      sig { returns(String) }
      attr_accessor :body

      sig { returns(Moonbase::ProgramTemplate::Links) }
      attr_reader :links

      sig { params(links: Moonbase::ProgramTemplate::Links::OrHash).void }
      attr_writer :links

      # The subject line of the email, which can include Liquid variables.
      sig { returns(String) }
      attr_accessor :subject

      # String representing the object’s type. Always `program_template` for this
      # object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The `Program` that uses this template.
      sig { returns(T.nilable(Moonbase::Program)) }
      attr_reader :program

      sig { params(program: Moonbase::Program).void }
      attr_writer :program

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The ProgramTemplate object defines the content of a message sent by a `Program`,
      # including support for Liquid templating.
      sig do
        params(
          id: String,
          body: String,
          links: Moonbase::ProgramTemplate::Links::OrHash,
          subject: String,
          created_at: Time,
          program: Moonbase::Program,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The body content of the email, which can include Liquid variables.
        body:,
        links:,
        # The subject line of the email, which can include Liquid variables.
        subject:,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # The `Program` that uses this template.
        program: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `program_template` for this
        # object.
        type: :program_template
      )
      end

      sig do
        override.returns(
          {
            id: String,
            body: String,
            links: Moonbase::ProgramTemplate::Links,
            subject: String,
            type: Symbol,
            created_at: Time,
            program: Moonbase::Program,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::ProgramTemplate::Links, Moonbase::Internal::AnyHash)
          end

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        # A link to the `Program` using this template.
        sig { returns(T.nilable(String)) }
        attr_reader :program

        sig { params(program: String).void }
        attr_writer :program

        sig { params(self_: String, program: String).returns(T.attached_class) }
        def self.new(
          # The canonical URL for this object.
          self_:,
          # A link to the `Program` using this template.
          program: nil
        )
        end

        sig { override.returns({ self_: String, program: String }) }
        def to_hash
        end
      end
    end
  end
end
