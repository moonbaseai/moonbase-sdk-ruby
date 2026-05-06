# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::AgentSettingsTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.agent_settings.retrieve

    assert_pattern do
      response => Moonbase::Models::AgentSettingRetrieveResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        type: Symbol,
        updated_at: Time,
        deal_summary_prompt: String | nil,
        meeting_prebrief_prompt: String | nil,
        meeting_summary_prompt: String | nil,
        meeting_web_search: Moonbase::Internal::Type::Boolean | nil,
        organization_info: String | nil
      }
    end
  end

  def test_update
    response = @moonbase.agent_settings.update

    assert_pattern do
      response => Moonbase::Models::AgentSettingUpdateResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        type: Symbol,
        updated_at: Time,
        deal_summary_prompt: String | nil,
        meeting_prebrief_prompt: String | nil,
        meeting_summary_prompt: String | nil,
        meeting_web_search: Moonbase::Internal::Type::Boolean | nil,
        organization_info: String | nil
      }
    end
  end
end
