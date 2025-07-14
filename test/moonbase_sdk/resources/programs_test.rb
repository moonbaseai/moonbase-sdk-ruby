# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::ProgramsTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.programs.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::Program
    end

    assert_pattern do
      response => {
        id: String,
        links: MoonbaseSDK::Program::Links,
        status: MoonbaseSDK::Program::Status,
        trigger: MoonbaseSDK::Program::Trigger,
        type: Symbol,
        activity_metrics: MoonbaseSDK::Program::ActivityMetrics | nil,
        created_at: Time | nil,
        display_name: String | nil,
        program_template: MoonbaseSDK::ProgramTemplate | nil,
        scheduled_at: Time | nil,
        track_clicks: MoonbaseSDK::Internal::Type::Boolean | nil,
        track_opens: MoonbaseSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.programs.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::Program
    end

    assert_pattern do
      row => {
        id: String,
        links: MoonbaseSDK::Program::Links,
        status: MoonbaseSDK::Program::Status,
        trigger: MoonbaseSDK::Program::Trigger,
        type: Symbol,
        activity_metrics: MoonbaseSDK::Program::ActivityMetrics | nil,
        created_at: Time | nil,
        display_name: String | nil,
        program_template: MoonbaseSDK::ProgramTemplate | nil,
        scheduled_at: Time | nil,
        track_clicks: MoonbaseSDK::Internal::Type::Boolean | nil,
        track_opens: MoonbaseSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil
      }
    end
  end
end
