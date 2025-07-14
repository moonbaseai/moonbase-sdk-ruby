# typed: strong

module MoonbaseSDK
  module Models
    class CallCreateParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::CallCreateParams, MoonbaseSDK::Internal::AnyHash)
        end

      # The direction of the call, either `incoming` or `outgoing`.
      sig { returns(MoonbaseSDK::CallCreateParams::Direction::OrSymbol) }
      attr_accessor :direction

      # An array of participants involved in the call.
      sig { returns(T::Array[MoonbaseSDK::CallCreateParams::Participant]) }
      attr_accessor :participants

      # The name of the phone provider that handled the call (e.g., `openphone`).
      sig { returns(String) }
      attr_accessor :provider

      # The unique identifier for the call from the provider's system.
      sig { returns(String) }
      attr_accessor :provider_id

      # The time the call started, as an RFC 3339 timestamp.
      sig { returns(Time) }
      attr_accessor :start_at

      # The status of the call.
      sig { returns(MoonbaseSDK::CallCreateParams::Status::OrSymbol) }
      attr_accessor :status

      # The time the call was answered, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :answered_at

      sig { params(answered_at: Time).void }
      attr_writer :answered_at

      # The time the call ended, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :end_at

      sig { params(end_at: Time).void }
      attr_writer :end_at

      # A hash of additional metadata from the provider.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :provider_metadata

      sig { params(provider_metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :provider_metadata

      sig do
        params(
          direction: MoonbaseSDK::CallCreateParams::Direction::OrSymbol,
          participants:
            T::Array[MoonbaseSDK::CallCreateParams::Participant::OrHash],
          provider: String,
          provider_id: String,
          start_at: Time,
          status: MoonbaseSDK::CallCreateParams::Status::OrSymbol,
          answered_at: Time,
          end_at: Time,
          provider_metadata: T::Hash[Symbol, T.anything],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The direction of the call, either `incoming` or `outgoing`.
        direction:,
        # An array of participants involved in the call.
        participants:,
        # The name of the phone provider that handled the call (e.g., `openphone`).
        provider:,
        # The unique identifier for the call from the provider's system.
        provider_id:,
        # The time the call started, as an RFC 3339 timestamp.
        start_at:,
        # The status of the call.
        status:,
        # The time the call was answered, as an RFC 3339 timestamp.
        answered_at: nil,
        # The time the call ended, as an RFC 3339 timestamp.
        end_at: nil,
        # A hash of additional metadata from the provider.
        provider_metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            direction: MoonbaseSDK::CallCreateParams::Direction::OrSymbol,
            participants: T::Array[MoonbaseSDK::CallCreateParams::Participant],
            provider: String,
            provider_id: String,
            start_at: Time,
            status: MoonbaseSDK::CallCreateParams::Status::OrSymbol,
            answered_at: Time,
            end_at: Time,
            provider_metadata: T::Hash[Symbol, T.anything],
            request_options: MoonbaseSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The direction of the call, either `incoming` or `outgoing`.
      module Direction
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MoonbaseSDK::CallCreateParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCOMING =
          T.let(
            :incoming,
            MoonbaseSDK::CallCreateParams::Direction::TaggedSymbol
          )
        OUTGOING =
          T.let(
            :outgoing,
            MoonbaseSDK::CallCreateParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[MoonbaseSDK::CallCreateParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Participant < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::CallCreateParams::Participant,
              MoonbaseSDK::Internal::AnyHash
            )
          end

        # The E.164 formatted phone number of the participant.
        sig { returns(String) }
        attr_accessor :phone

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        sig do
          returns(MoonbaseSDK::CallCreateParams::Participant::Role::OrSymbol)
        end
        attr_accessor :role

        # Parameters for creating a `Participant` object.
        sig do
          params(
            phone: String,
            role: MoonbaseSDK::CallCreateParams::Participant::Role::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The E.164 formatted phone number of the participant.
          phone:,
          # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
          role:
        )
        end

        sig do
          override.returns(
            {
              phone: String,
              role: MoonbaseSDK::CallCreateParams::Participant::Role::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The role of the participant in the call. Can be `caller`, `callee`, or `other`.
        module Role
          extend MoonbaseSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MoonbaseSDK::CallCreateParams::Participant::Role)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALLER =
            T.let(
              :caller,
              MoonbaseSDK::CallCreateParams::Participant::Role::TaggedSymbol
            )
          CALLEE =
            T.let(
              :callee,
              MoonbaseSDK::CallCreateParams::Participant::Role::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              MoonbaseSDK::CallCreateParams::Participant::Role::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MoonbaseSDK::CallCreateParams::Participant::Role::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The status of the call.
      module Status
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MoonbaseSDK::CallCreateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED =
          T.let(:queued, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        INITIATED =
          T.let(:initiated, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        RINGING =
          T.let(:ringing, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        IN_PROGRESS =
          T.let(
            :in_progress,
            MoonbaseSDK::CallCreateParams::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(:completed, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        BUSY = T.let(:busy, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        FAILED =
          T.let(:failed, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        NO_ANSWER =
          T.let(:no_answer, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        CANCELED =
          T.let(:canceled, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        MISSED =
          T.let(:missed, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        ANSWERED =
          T.let(:answered, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        FORWARDED =
          T.let(:forwarded, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)
        ABANDONED =
          T.let(:abandoned, MoonbaseSDK::CallCreateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MoonbaseSDK::CallCreateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
