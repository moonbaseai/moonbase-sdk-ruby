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
        links: Moonbase::View::Links,
        name: String,
        type: Symbol,
        collection: Moonbase::Collection | nil,
        view_type: Moonbase::View::ViewType | nil
      }
    end
  end
end
