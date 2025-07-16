# typed: strong

module MoonbaseSDK
  module Models
    class ProgramMessageCreateResponse < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MoonbaseSDK::Models::ProgramMessageCreateResponse,
            MoonbaseSDK::Internal::AnyHash
          )
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the message was created and enqueued for sending, as an RFC 3339
      # timestamp.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(MoonbaseSDK::Models::ProgramMessageCreateResponse::Links) }
      attr_reader :links

      sig do
        params(
          links:
            MoonbaseSDK::Models::ProgramMessageCreateResponse::Links::OrHash
        ).void
      end
      attr_writer :links

      # The `ProgramTemplate` used to generate this message.
      sig { returns(MoonbaseSDK::ProgramTemplate) }
      attr_reader :program_template

      sig do
        params(program_template: MoonbaseSDK::ProgramTemplate::OrHash).void
      end
      attr_writer :program_template

      # String representing the object’s type. Always `program_message` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Represents a single message sent as part of a `Program`.
      sig do
        params(
          id: String,
          created_at: Time,
          links:
            MoonbaseSDK::Models::ProgramMessageCreateResponse::Links::OrHash,
          program_template: MoonbaseSDK::ProgramTemplate::OrHash,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the message was created and enqueued for sending, as an RFC 3339
        # timestamp.
        created_at:,
        links:,
        # The `ProgramTemplate` used to generate this message.
        program_template:,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
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
            links: MoonbaseSDK::Models::ProgramMessageCreateResponse::Links,
            program_template: MoonbaseSDK::ProgramTemplate,
            type: Symbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Models::ProgramMessageCreateResponse::Links,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # A link to the `ProgramTemplate` used.
        sig { returns(String) }
        attr_accessor :program_template

        sig { params(program_template: String).returns(T.attached_class) }
        def self.new(
          # A link to the `ProgramTemplate` used.
          program_template:
        )
        end

        sig { override.returns({ program_template: String }) }
        def to_hash
        end
      end
    end
  end
end
