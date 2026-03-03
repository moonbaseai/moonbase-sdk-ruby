# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ProgramMessagesTest < Moonbase::Test::ResourceTest
  def test_send__required_params
    response =
      @moonbase.program_messages.send_(
        person: {email: "person-71@example-71.com"},
        program_template_id: "1CLJt2v6ZuRbtwPhmQtzxa"
      )

    assert_pattern do
      response => Moonbase::ProgramMessage
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        program_template: Moonbase::ProgramTemplate,
        type: Symbol,
        updated_at: Time
      }
    end
  end
end
