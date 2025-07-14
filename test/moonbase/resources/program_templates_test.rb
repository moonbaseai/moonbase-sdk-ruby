# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ProgramTemplatesTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.program_templates.retrieve("id")

    assert_pattern do
      response => Moonbase::ProgramTemplate
    end

    assert_pattern do
      response => {
        id: String,
        body: String,
        links: Moonbase::ProgramTemplate::Links,
        subject: String,
        type: Symbol,
        created_at: Time | nil,
        program: Moonbase::Program | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    response = @moonbase.program_templates.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::ProgramTemplate
    end

    assert_pattern do
      row => {
        id: String,
        body: String,
        links: Moonbase::ProgramTemplate::Links,
        subject: String,
        type: Symbol,
        created_at: Time | nil,
        program: Moonbase::Program | nil,
        updated_at: Time | nil
      }
    end
  end
end
