# typed: strong

module Moonbase
  module Models
    class Call < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Call, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The direction of the call, either `incoming` or `outgoing`.
      sig { returns(Moonbase::Call::Direction::TaggedSymbol) }
      attr_accessor :direction

      # The participants involved in the call.
      sig { returns(T::Array[Moonbase::Call::Participant]) }
      attr_accessor :participants

      # The name of the phone provider that handled the call.
      sig { returns(Moonbase::Call::Provider::TaggedSymbol) }
      attr_accessor :provider

      # The unique identifier for the call from the provider's system.
      sig { returns(String) }
      attr_accessor :provider_id

      # The current status of the call.
      sig { returns(String) }
      attr_accessor :provider_status

      # The time the call started, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :start_at

      # String representing the object’s type. Always `call` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The time the call was answered, if available, as an ISO 8601 timestamp in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :answered_at

      sig { params(answered_at: Time).void }
      attr_writer :answered_at

      # The time the call ended, if available, as an ISO 8601 timestamp in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :end_at

      sig { params(end_at: Time).void }
      attr_writer :end_at

      # The Note object represents a block of text content, often used for meeting notes
      # or summaries.
      sig { returns(T.nilable(Moonbase::Note)) }
      attr_reader :note

      sig { params(note: Moonbase::Note::OrHash).void }
      attr_writer :note

      # A hash of additional metadata from the provider.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :provider_metadata

      sig { params(provider_metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :provider_metadata

      # The Note object represents a block of text content, often used for meeting notes
      # or summaries.
      sig { returns(T.nilable(Moonbase::Note)) }
      attr_reader :summary

      sig { params(summary: Moonbase::Note::OrHash).void }
      attr_writer :summary

      sig { returns(T.nilable(Moonbase::Call::Transcript)) }
      attr_reader :transcript

      sig do
        params(transcript: T.nilable(Moonbase::Call::Transcript::OrHash)).void
      end
      attr_writer :transcript

      # The Call object represents a phone call that has been logged in the system. It
      # contains details about the participants, timing, and outcome of the call.
      sig do
        params(
          id: String,
          created_at: Time,
          direction: Moonbase::Call::Direction::OrSymbol,
          participants: T::Array[Moonbase::Call::Participant::OrHash],
          provider: Moonbase::Call::Provider::OrSymbol,
          provider_id: String,
          provider_status: String,
          start_at: Time,
          updated_at: Time,
          answered_at: Time,
          end_at: Time,
          note: Moonbase::Note::OrHash,
          provider_metadata: T::Hash[Symbol, T.anything],
          summary: Moonbase::Note::OrHash,
          transcript: T.nilable(Moonbase::Call::Transcript::OrHash),
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The direction of the call, either `incoming` or `outgoing`.
        direction:,
        # The participants involved in the call.
        participants:,
        # The name of the phone provider that handled the call.
        provider:,
        # The unique identifier for the call from the provider's system.
        provider_id:,
        # The current status of the call.
        provider_status:,
        # The time the call started, as an ISO 8601 timestamp in UTC.
        start_at:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # The time the call was answered, if available, as an ISO 8601 timestamp in UTC.
        answered_at: nil,
        # The time the call ended, if available, as an ISO 8601 timestamp in UTC.
        end_at: nil,
        # The Note object represents a block of text content, often used for meeting notes
        # or summaries.
        note: nil,
        # A hash of additional metadata from the provider.
        provider_metadata: nil,
        # The Note object represents a block of text content, often used for meeting notes
        # or summaries.
        summary: nil,
        transcript: nil,
        # String representing the object’s type. Always `call` for this object.
        type: :call
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            direction: Moonbase::Call::Direction::TaggedSymbol,
            participants: T::Array[Moonbase::Call::Participant],
            provider: Moonbase::Call::Provider::TaggedSymbol,
            provider_id: String,
            provider_status: String,
            start_at: Time,
            type: Symbol,
            updated_at: Time,
            answered_at: Time,
            end_at: Time,
            note: Moonbase::Note,
            provider_metadata: T::Hash[Symbol, T.anything],
            summary: Moonbase::Note,
            transcript: T.nilable(Moonbase::Call::Transcript)
          }
        )
      end
      def to_hash
      end

      # The direction of the call, either `incoming` or `outgoing`.
      module Direction
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::Call::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCOMING = T.let(:incoming, Moonbase::Call::Direction::TaggedSymbol)
        OUTGOING = T.let(:outgoing, Moonbase::Call::Direction::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::Call::Direction::TaggedSymbol])
        end
        def self.values
        end
      end

      class Participant < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Call::Participant, Moonbase::Internal::AnyHash)
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The E.164 formatted phone number of the participant.
        sig { returns(String) }
        attr_accessor :phone

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        sig { returns(Moonbase::Call::Participant::Role::TaggedSymbol) }
        attr_accessor :role

        # String representing the object’s type. Always `call_participant` for this
        # object.
        sig { returns(Symbol) }
        attr_accessor :type

        # A lightweight reference to another resource.
        sig { returns(T.nilable(Moonbase::Pointer)) }
        attr_reader :organization

        sig { params(organization: Moonbase::Pointer::OrHash).void }
        attr_writer :organization

        # A lightweight reference to another resource.
        sig { returns(T.nilable(Moonbase::Pointer)) }
        attr_reader :person

        sig { params(person: Moonbase::Pointer::OrHash).void }
        attr_writer :person

        # Represents a participant in a call.
        sig do
          params(
            id: String,
            phone: String,
            role: Moonbase::Call::Participant::Role::OrSymbol,
            organization: Moonbase::Pointer::OrHash,
            person: Moonbase::Pointer::OrHash,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # The E.164 formatted phone number of the participant.
          phone:,
          # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
          role:,
          # A lightweight reference to another resource.
          organization: nil,
          # A lightweight reference to another resource.
          person: nil,
          # String representing the object’s type. Always `call_participant` for this
          # object.
          type: :call_participant
        )
        end

        sig do
          override.returns(
            {
              id: String,
              phone: String,
              role: Moonbase::Call::Participant::Role::TaggedSymbol,
              type: Symbol,
              organization: Moonbase::Pointer,
              person: Moonbase::Pointer
            }
          )
        end
        def to_hash
        end

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        module Role
          extend Moonbase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Moonbase::Call::Participant::Role) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALLER =
            T.let(:caller, Moonbase::Call::Participant::Role::TaggedSymbol)
          CALLEE =
            T.let(:callee, Moonbase::Call::Participant::Role::TaggedSymbol)
          OTHER = T.let(:other, Moonbase::Call::Participant::Role::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Moonbase::Call::Participant::Role::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # The name of the phone provider that handled the call.
      module Provider
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::Call::Provider) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPENPHONE = T.let(:openphone, Moonbase::Call::Provider::TaggedSymbol)
        USER = T.let(:user, Moonbase::Call::Provider::TaggedSymbol)
        ZOOM_PHONE = T.let(:zoom_phone, Moonbase::Call::Provider::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::Call::Provider::TaggedSymbol])
        end
        def self.values
        end
      end

      class Transcript < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Call::Transcript, Moonbase::Internal::AnyHash)
          end

        sig { returns(T::Array[Moonbase::Call::Transcript::Cue]) }
        attr_accessor :cues

        sig do
          params(
            cues: T::Array[Moonbase::Call::Transcript::Cue::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(cues:)
        end

        sig do
          override.returns({ cues: T::Array[Moonbase::Call::Transcript::Cue] })
        end
        def to_hash
        end

        class Cue < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::Call::Transcript::Cue,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :from

          sig { returns(Moonbase::Call::Transcript::Cue::Speaker) }
          attr_reader :speaker

          sig do
            params(
              speaker: Moonbase::Call::Transcript::Cue::Speaker::OrHash
            ).void
          end
          attr_writer :speaker

          sig { returns(String) }
          attr_accessor :text

          sig { returns(Float) }
          attr_accessor :to

          sig do
            params(
              from: Float,
              speaker: Moonbase::Call::Transcript::Cue::Speaker::OrHash,
              text: String,
              to: Float
            ).returns(T.attached_class)
          end
          def self.new(from:, speaker:, text:, to:)
          end

          sig do
            override.returns(
              {
                from: Float,
                speaker: Moonbase::Call::Transcript::Cue::Speaker,
                text: String,
                to: Float
              }
            )
          end
          def to_hash
          end

          class Speaker < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Call::Transcript::Cue::Speaker,
                  Moonbase::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :attendee_id

            sig { params(attendee_id: String).void }
            attr_writer :attendee_id

            sig { returns(T.nilable(String)) }
            attr_reader :label

            sig { params(label: String).void }
            attr_writer :label

            sig do
              params(attendee_id: String, label: String).returns(
                T.attached_class
              )
            end
            def self.new(attendee_id: nil, label: nil)
            end

            sig { override.returns({ attendee_id: String, label: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
