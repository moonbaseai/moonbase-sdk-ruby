# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ProgramsTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.programs.retrieve("id")

    assert_pattern do
      response => Moonbase::Program
    end

    assert_pattern do
      response => {
        id: String,
        links: Moonbase::Program::Links,
        status: Moonbase::Program::Status,
        trigger: Moonbase::Program::Trigger,
        type: Symbol,
        activity_metrics: Moonbase::Program::ActivityMetrics | nil,
        created_at: Time | nil,
        display_name: String | nil,
        program_template: Moonbase::ProgramTemplate | nil,
        scheduled_at: Time | nil,
        track_clicks: Moonbase::Internal::Type::Boolean | nil,
        track_opens: Moonbase::Internal::Type::Boolean | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.programs.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Program
    end

    assert_pattern do
      row => {
        id: String,
        links: Moonbase::Program::Links,
        status: Moonbase::Program::Status,
        trigger: Moonbase::Program::Trigger,
        type: Symbol,
        activity_metrics: Moonbase::Program::ActivityMetrics | nil,
        created_at: Time | nil,
        display_name: String | nil,
        program_template: Moonbase::ProgramTemplate | nil,
        scheduled_at: Time | nil,
        track_clicks: Moonbase::Internal::Type::Boolean | nil,
        track_opens: Moonbase::Internal::Type::Boolean | nil,
        updated_at: Time | nil
      }
    end
  end
end
