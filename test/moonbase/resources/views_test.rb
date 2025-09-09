# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ViewsTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.views.retrieve("id")

    assert_pattern do
      response => Moonbase::View
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        type: Symbol,
        updated_at: Time,
        view_type: Moonbase::View::ViewType,
        collection: Moonbase::Collection | nil
      }
    end
  end
end
