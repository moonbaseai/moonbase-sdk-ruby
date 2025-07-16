# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::ProgramTemplatesTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.program_templates.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::ProgramTemplate
    end

    assert_pattern do
      response => {
        id: String,
        body: String,
        links: MoonbaseSDK::ProgramTemplate::Links,
        subject: String,
        type: Symbol,
        created_at: Time | nil,
        program: MoonbaseSDK::Program | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.program_templates.list

    assert_pattern do
      response => MoonbaseSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MoonbaseSDK::ProgramTemplate
    end

    assert_pattern do
      row => {
        id: String,
        body: String,
        links: MoonbaseSDK::ProgramTemplate::Links,
        subject: String,
        type: Symbol,
        created_at: Time | nil,
        program: MoonbaseSDK::Program | nil,
        updated_at: Time | nil
      }
    end
  end
end
