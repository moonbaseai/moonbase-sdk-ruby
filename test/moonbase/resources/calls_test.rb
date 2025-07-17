# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::CallsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.calls.create(
        direction: :incoming,
        participants: [{phone: "+14155551212", role: :caller}, {phone: "+16505551212", role: :callee}],
        provider: "openphone",
        provider_id: "openphone_id_000000000002",
        start_at: "2025-07-17T22:11:01.781Z",
        status: :completed
      )

    assert_pattern do
      response => Moonbase::Call
    end

    assert_pattern do
      response => {
        id: String,
        direction: Moonbase::Call::Direction,
        participants: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Call::Participant]),
        provider: String,
        provider_id: String,
        start_at: Time,
        status: Moonbase::Call::Status,
        type: Symbol,
        answered_at: Time | nil,
        created_at: Time | nil,
        end_at: Time | nil,
        provider_metadata: ^(Moonbase::Internal::Type::HashOf[Moonbase::Internal::Type::Unknown]) | nil,
        updated_at: Time | nil
      }
    end
  end
end
