# typed: strong

module MoonbaseSDK
  module Resources
    class Calls
      # Logs a phone call.
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
        ).returns(MoonbaseSDK::Call)
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
        request_options: {}
      )
      end

      # @api private
      sig { params(client: MoonbaseSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
