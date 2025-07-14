# typed: strong

module MoonbaseSDK
  module Models
    class Program < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Program, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(MoonbaseSDK::Program::Links) }
      attr_reader :links

      sig { params(links: MoonbaseSDK::Program::Links::OrHash).void }
      attr_writer :links

      # The current status of the program. Can be `draft`, `published`, `paused`, or
      # `archived`.
      sig { returns(MoonbaseSDK::Program::Status::TaggedSymbol) }
      attr_accessor :status

      # The sending trigger for the program. Can be `api` for transactional sends or
      # `broadcast` for scheduled sends.
      sig { returns(MoonbaseSDK::Program::Trigger::TaggedSymbol) }
      attr_accessor :trigger

      # String representing the object’s type. Always `program` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A `ProgramActivityMetrics` object summarizing engagement for this program.
      sig { returns(T.nilable(MoonbaseSDK::Program::ActivityMetrics)) }
      attr_reader :activity_metrics

      sig do
        params(
          activity_metrics: MoonbaseSDK::Program::ActivityMetrics::OrHash
        ).void
      end
      attr_writer :activity_metrics

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The user-facing name of the program.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # The `ProgramTemplate` used for messages in this program.
      sig { returns(T.nilable(MoonbaseSDK::ProgramTemplate)) }
      attr_reader :program_template

      sig { params(program_template: MoonbaseSDK::ProgramTemplate).void }
      attr_writer :program_template

      # For `broadcast` programs, the time the program is scheduled to send, as an RFC
      # 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :scheduled_at

      sig { params(scheduled_at: Time).void }
      attr_writer :scheduled_at

      # `true` if link clicks are tracked for this program.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :track_clicks

      sig { params(track_clicks: T::Boolean).void }
      attr_writer :track_clicks

      # `true` if email opens are tracked for this program.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :track_opens

      sig { params(track_opens: T::Boolean).void }
      attr_writer :track_opens

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The Program object represents an email campaign. It defines the sending behavior
      # and tracks engagement metrics.
      sig do
        params(
          id: String,
          links: MoonbaseSDK::Program::Links::OrHash,
          status: MoonbaseSDK::Program::Status::OrSymbol,
          trigger: MoonbaseSDK::Program::Trigger::OrSymbol,
          activity_metrics: MoonbaseSDK::Program::ActivityMetrics::OrHash,
          created_at: Time,
          display_name: String,
          program_template: MoonbaseSDK::ProgramTemplate,
          scheduled_at: Time,
          track_clicks: T::Boolean,
          track_opens: T::Boolean,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        links:,
        # The current status of the program. Can be `draft`, `published`, `paused`, or
        # `archived`.
        status:,
        # The sending trigger for the program. Can be `api` for transactional sends or
        # `broadcast` for scheduled sends.
        trigger:,
        # A `ProgramActivityMetrics` object summarizing engagement for this program.
        activity_metrics: nil,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # The user-facing name of the program.
        display_name: nil,
        # The `ProgramTemplate` used for messages in this program.
        program_template: nil,
        # For `broadcast` programs, the time the program is scheduled to send, as an RFC
        # 3339 timestamp.
        scheduled_at: nil,
        # `true` if link clicks are tracked for this program.
        track_clicks: nil,
        # `true` if email opens are tracked for this program.
        track_opens: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `program` for this object.
        type: :program
      )
      end

      sig do
        override.returns(
          {
            id: String,
            links: MoonbaseSDK::Program::Links,
            status: MoonbaseSDK::Program::Status::TaggedSymbol,
            trigger: MoonbaseSDK::Program::Trigger::TaggedSymbol,
            type: Symbol,
            activity_metrics: MoonbaseSDK::Program::ActivityMetrics,
            created_at: Time,
            display_name: String,
            program_template: MoonbaseSDK::ProgramTemplate,
            scheduled_at: Time,
            track_clicks: T::Boolean,
            track_opens: T::Boolean,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Program::Links, MoonbaseSDK::Internal::AnyHash)
          end

        # A link to the `ProgramTemplate` for this program.
        sig { returns(String) }
        attr_accessor :program_template

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        sig do
          params(program_template: String, self_: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # A link to the `ProgramTemplate` for this program.
          program_template:,
          # The canonical URL for this object.
          self_:
        )
        end

        sig { override.returns({ program_template: String, self_: String }) }
        def to_hash
        end
      end

      # The current status of the program. Can be `draft`, `published`, `paused`, or
      # `archived`.
      module Status
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MoonbaseSDK::Program::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, MoonbaseSDK::Program::Status::TaggedSymbol)
        PUBLISHED =
          T.let(:published, MoonbaseSDK::Program::Status::TaggedSymbol)
        PAUSED = T.let(:paused, MoonbaseSDK::Program::Status::TaggedSymbol)
        ARCHIVED = T.let(:archived, MoonbaseSDK::Program::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[MoonbaseSDK::Program::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      # The sending trigger for the program. Can be `api` for transactional sends or
      # `broadcast` for scheduled sends.
      module Trigger
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MoonbaseSDK::Program::Trigger) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        API = T.let(:api, MoonbaseSDK::Program::Trigger::TaggedSymbol)
        BROADCAST =
          T.let(:broadcast, MoonbaseSDK::Program::Trigger::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MoonbaseSDK::Program::Trigger::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ActivityMetrics < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Program::ActivityMetrics,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # The number of emails that could not be delivered.
        sig { returns(T.nilable(Integer)) }
        attr_reader :bounced

        sig { params(bounced: Integer).void }
        attr_writer :bounced

        # The number of recipients who clicked at least one link.
        sig { returns(T.nilable(Integer)) }
        attr_reader :clicked

        sig { params(clicked: Integer).void }
        attr_writer :clicked

        # The number of recipients who marked the email as spam.
        sig { returns(T.nilable(Integer)) }
        attr_reader :complained

        sig { params(complained: Integer).void }
        attr_writer :complained

        # The number of emails that failed to send due to a technical issue.
        sig { returns(T.nilable(Integer)) }
        attr_reader :failed

        sig { params(failed: Integer).void }
        attr_writer :failed

        # The number of recipients who opened the email.
        sig { returns(T.nilable(Integer)) }
        attr_reader :opened

        sig { params(opened: Integer).void }
        attr_writer :opened

        # The total number of emails successfully sent.
        sig { returns(T.nilable(Integer)) }
        attr_reader :sent

        sig { params(sent: Integer).void }
        attr_writer :sent

        # The number of emails blocked by delivery protection rules.
        sig { returns(T.nilable(Integer)) }
        attr_reader :shielded

        sig { params(shielded: Integer).void }
        attr_writer :shielded

        # The number of recipients who unsubscribed.
        sig { returns(T.nilable(Integer)) }
        attr_reader :unsubscribed

        sig { params(unsubscribed: Integer).void }
        attr_writer :unsubscribed

        # A `ProgramActivityMetrics` object summarizing engagement for this program.
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
          bounced: nil,
          # The number of recipients who clicked at least one link.
          clicked: nil,
          # The number of recipients who marked the email as spam.
          complained: nil,
          # The number of emails that failed to send due to a technical issue.
          failed: nil,
          # The number of recipients who opened the email.
          opened: nil,
          # The total number of emails successfully sent.
          sent: nil,
          # The number of emails blocked by delivery protection rules.
          shielded: nil,
          # The number of recipients who unsubscribed.
          unsubscribed: nil
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
end
