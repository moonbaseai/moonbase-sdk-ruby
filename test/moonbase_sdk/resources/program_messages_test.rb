# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::ProgramMessagesTest < MoonbaseSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.program_messages.create(
        person: {email: "person-38@example-38.com"},
        program_template_id: "1CR8ZUMdHCn5A2KyfRv3Tz"
      )

    assert_pattern do
      response => MoonbaseSDK::Models::ProgramMessageCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        links: MoonbaseSDK::Models::ProgramMessageCreateResponse::Links,
        program_template: MoonbaseSDK::ProgramTemplate,
        type: Symbol,
        updated_at: Time
      }
    end
  end
end
