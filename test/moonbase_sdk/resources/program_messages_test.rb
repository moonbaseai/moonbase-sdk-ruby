# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::ProgramMessagesTest < MoonbaseSDK::Test::ResourceTest
  def test_send__required_params
    response =
      @moonbase.program_messages.send_(
        person: {email: "person-71@example-71.com"},
        program_template_id: "1CR2QLhLQPX9WCiWH3cXCe"
      )

    assert_pattern do
      response => MoonbaseSDK::Models::ProgramMessageSendResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        links: MoonbaseSDK::Models::ProgramMessageSendResponse::Links,
        program_template: MoonbaseSDK::ProgramTemplate,
        type: Symbol,
        updated_at: Time
      }
    end
  end
end
