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
      sig { returns(T::Array[Moonbase::CallParticipant]) }
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

      # The tags currently applied to this call.
      sig { returns(T::Array[Moonbase::Tag]) }
      attr_accessor :tags

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

      sig { params(note: T.nilable(Moonbase::Note::OrHash)).void }
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

      sig { params(summary: T.nilable(Moonbase::Note::OrHash)).void }
      attr_writer :summary

      sig { returns(T.nilable(Moonbase::CallTranscript)) }
      attr_reader :transcript

      sig do
        params(transcript: T.nilable(Moonbase::CallTranscript::OrHash)).void
      end
      attr_writer :transcript

      # The Call object represents a phone call that has been logged in the system. It
      # contains details about the participants, timing, and outcome of the call.
      sig do
        params(
          id: String,
          created_at: Time,
          direction: Moonbase::Call::Direction::OrSymbol,
          participants: T::Array[Moonbase::CallParticipant::OrHash],
          provider: Moonbase::Call::Provider::OrSymbol,
          provider_id: String,
          provider_status: String,
          start_at: Time,
          tags: T::Array[Moonbase::Tag::OrHash],
          updated_at: Time,
          answered_at: Time,
          end_at: Time,
          note: T.nilable(Moonbase::Note::OrHash),
          provider_metadata: T::Hash[Symbol, T.anything],
          summary: T.nilable(Moonbase::Note::OrHash),
          transcript: T.nilable(Moonbase::CallTranscript::OrHash),
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
        # The tags currently applied to this call.
        tags:,
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
            participants: T::Array[Moonbase::CallParticipant],
            provider: Moonbase::Call::Provider::TaggedSymbol,
            provider_id: String,
            provider_status: String,
            start_at: Time,
            tags: T::Array[Moonbase::Tag],
            type: Symbol,
            updated_at: Time,
            answered_at: Time,
            end_at: Time,
            note: T.nilable(Moonbase::Note),
            provider_metadata: T::Hash[Symbol, T.anything],
            summary: T.nilable(Moonbase::Note),
            transcript: T.nilable(Moonbase::CallTranscript)
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
    end
  end
end
