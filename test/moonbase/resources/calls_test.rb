# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::CallsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.calls.create(
        direction: :incoming,
        participants: [{phone: "+14155551212", role: :caller}, {phone: "+16505551212", role: :callee}],
        provider: "openphone",
        provider_id: "openphone_id_000000000006",
        provider_status: "completed",
        start_at: "2025-02-17T15:00:00.000Z"
      )

    assert_pattern do
      response => Moonbase::Call
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        direction: Moonbase::Call::Direction,
        participants: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Call::Participant]),
        provider: String,
        provider_id: String,
        provider_status: String,
        start_at: Time,
        type: Symbol,
        updated_at: Time,
        answered_at: Time | nil,
        end_at: Time | nil,
        provider_metadata: ^(Moonbase::Internal::Type::HashOf[Moonbase::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_upsert_required_params
    response =
      @moonbase.calls.upsert(
        direction: :incoming,
        participants: [{phone: "+14155551212", role: :caller}, {phone: "+16505551212", role: :callee}],
        provider: "openphone",
        provider_id: "openphone_id_000000000003",
        provider_status: "completed",
        start_at: "2025-02-17T15:00:00.000Z"
      )

    assert_pattern do
      response => Moonbase::Call
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        direction: Moonbase::Call::Direction,
        participants: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Call::Participant]),
        provider: String,
        provider_id: String,
        provider_status: String,
        start_at: Time,
        type: Symbol,
        updated_at: Time,
        answered_at: Time | nil,
        end_at: Time | nil,
        provider_metadata: ^(Moonbase::Internal::Type::HashOf[Moonbase::Internal::Type::Unknown]) | nil
      }
    end
  end
end
