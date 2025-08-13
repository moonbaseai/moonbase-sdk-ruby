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
        start_at: "2025-08-11T21:11:10.467Z",
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

  def test_upsert_required_params
    response =
      @moonbase.calls.upsert(
        direction: :incoming,
        participants: [{phone: "+14155551212", role: :caller}, {phone: "+16505551212", role: :callee}],
        provider: "openphone",
        provider_id: "openphone_id_000000000001",
        start_at: "2025-08-11T21:10:54.916Z",
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
