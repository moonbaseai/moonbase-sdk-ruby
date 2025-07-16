# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::CallsTest < MoonbaseSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.calls.create(
        direction: :incoming,
        participants: [{phone: "+14155551212", role: :caller}, {phone: "+16505551212", role: :callee}],
        provider: "openphone",
        provider_id: "openphone_id_000000000002",
        start_at: "2025-07-15T08:23:09.649Z",
        status: :completed
      )

    assert_pattern do
      response => MoonbaseSDK::Call
    end

    assert_pattern do
      response => {
        id: String,
        direction: MoonbaseSDK::Call::Direction,
        participants: ^(MoonbaseSDK::Internal::Type::ArrayOf[MoonbaseSDK::Call::Participant]),
        provider: String,
        provider_id: String,
        start_at: Time,
        status: MoonbaseSDK::Call::Status,
        type: Symbol,
        answered_at: Time | nil,
        created_at: Time | nil,
        end_at: Time | nil,
        provider_metadata: ^(MoonbaseSDK::Internal::Type::HashOf[MoonbaseSDK::Internal::Type::Unknown]) | nil,
        updated_at: Time | nil
      }
    end
  end
end
