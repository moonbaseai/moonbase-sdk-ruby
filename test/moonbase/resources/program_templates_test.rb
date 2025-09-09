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
        body: Moonbase::FormattedText,
        created_at: Time,
        subject: String,
        type: Symbol,
        updated_at: Time,
        program: Moonbase::Program | nil
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
        body: Moonbase::FormattedText,
        created_at: Time,
        subject: String,
        type: Symbol,
        updated_at: Time,
        program: Moonbase::Program | nil
      }
    end
  end
end
