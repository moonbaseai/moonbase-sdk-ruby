# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::FunnelsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response = @moonbase.funnels.create(name: "Sales Pipeline")

    assert_pattern do
      response => Moonbase::Funnel
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        steps: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::FunnelStep]),
        type: Symbol,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    response = @moonbase.funnels.retrieve("id")

    assert_pattern do
      response => Moonbase::Funnel
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        steps: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::FunnelStep]),
        type: Symbol,
        updated_at: Time
      }
    end
  end

  def test_update
    response = @moonbase.funnels.update("id")

    assert_pattern do
      response => Moonbase::Funnel
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        steps: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::FunnelStep]),
        type: Symbol,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @moonbase.funnels.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Funnel
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        name: String,
        steps: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::FunnelStep]),
        type: Symbol,
        updated_at: Time
      }
    end
  end

  def test_delete
    response = @moonbase.funnels.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
