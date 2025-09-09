# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::WebhookEndpointsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response = @moonbase.webhook_endpoints.create(status: :enabled, url: "https://example.com/webhook")

    assert_pattern do
      response => Moonbase::Endpoint
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        status: Moonbase::Endpoint::Status,
        subscriptions: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Subscription]),
        type: Symbol,
        updated_at: Time,
        url: String,
        secret: String | nil
      }
    end
  end

  def test_retrieve
    response = @moonbase.webhook_endpoints.retrieve("id")

    assert_pattern do
      response => Moonbase::Endpoint
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        status: Moonbase::Endpoint::Status,
        subscriptions: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Subscription]),
        type: Symbol,
        updated_at: Time,
        url: String,
        secret: String | nil
      }
    end
  end

  def test_update
    response = @moonbase.webhook_endpoints.update("id")

    assert_pattern do
      response => Moonbase::Endpoint
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        status: Moonbase::Endpoint::Status,
        subscriptions: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Subscription]),
        type: Symbol,
        updated_at: Time,
        url: String,
        secret: String | nil
      }
    end
  end

  def test_list
    response = @moonbase.webhook_endpoints.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Endpoint
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        status: Moonbase::Endpoint::Status,
        subscriptions: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Subscription]),
        type: Symbol,
        updated_at: Time,
        url: String,
        secret: String | nil
      }
    end
  end

  def test_delete
    response = @moonbase.webhook_endpoints.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
