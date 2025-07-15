# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::CallsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.calls.create(
        direction: :incoming,
        participants: [{phone: "phone", role: :caller}],
        provider: "provider",
        provider_id: "provider_id",
        start_at: "2019-12-27T18:11:19.117Z",
        status: :queued
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
