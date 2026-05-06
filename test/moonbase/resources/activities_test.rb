# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ActivitiesTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.activities.retrieve("id")

    assert_pattern do
      response => Moonbase::Activity
    end

    assert_pattern do
      response => {
        id: String,
        constituents: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Constituent]),
        occurred_at: Time,
        type: Moonbase::Activity::Type
      }
    end
  end

  def test_list
    response = @moonbase.activities.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Activity
    end

    assert_pattern do
      row => {
        id: String,
        constituents: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Constituent]),
        occurred_at: Time,
        type: Moonbase::Activity::Type
      }
    end
  end
end
