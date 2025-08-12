# typed: strong

module Moonbase
  module Resources
    class Calls
      # Logs a phone call.
      sig do
        params(
          direction: Moonbase::CallCreateParams::Direction::OrSymbol,
          participants:
            T::Array[Moonbase::CallCreateParams::Participant::OrHash],
          provider: String,
          provider_id: String,
          start_at: Time,
          status: Moonbase::CallCreateParams::Status::OrSymbol,
          answered_at: Time,
          end_at: Time,
          provider_metadata: T::Hash[Symbol, T.anything],
          recordings: T::Array[Moonbase::CallCreateParams::Recording::OrHash],
          transcript: Moonbase::CallCreateParams::Transcript::OrHash,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(Moonbase::Call)
      end
      def create(
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
        # Any recordings associated with the call.
        recordings: nil,
        # A transcript of the call.
        transcript: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Moonbase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
