# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::UnsubscribesTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response = @moonbase.unsubscribes.create(email: "yoda@moonbase.ai")

    assert_pattern do
      response => Moonbase::Unsubscribe
    end

    assert_pattern do
      response => {
        created_at: Time,
        email: String,
        type: Symbol
      }
    end
  end

  def test_list
    response = @moonbase.unsubscribes.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Unsubscribe
    end

    assert_pattern do
      row => {
        created_at: Time,
        email: String,
        type: Symbol
      }
    end
  end

  def test_delete
    response = @moonbase.unsubscribes.delete("email")

    assert_pattern do
      response => nil
    end
  end
end
