# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ProgramMessagesTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response =
      @moonbase.program_messages.create(
        person: {email: "person-53@example-53.com"},
        program_template_id: "1CS2gt91vf74NCQpAnnfW1"
      )

    assert_pattern do
      response => Moonbase::Models::ProgramMessageCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        links: Moonbase::Models::ProgramMessageCreateResponse::Links,
        program_template: Moonbase::ProgramTemplate,
        type: Symbol,
        updated_at: Time
      }
    end
  end
end
