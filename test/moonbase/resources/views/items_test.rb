# frozen_string_literal: true

require_relative "../../test_helper"

class Moonbase::Test::Resources::Views::ItemsTest < Moonbase::Test::ResourceTest
  def test_list
    response = @moonbase.views.items.list("id")

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Item
    end

    assert_pattern do
      row => {
        id: String,
        type: Symbol,
        values: ^(Moonbase::Internal::Type::HashOf[union: Moonbase::FieldValue])
      }
    end
  end
end
