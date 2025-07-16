# frozen_string_literal: true

require_relative "../test_helper"

class MoonbaseSDK::Test::Resources::ViewsTest < MoonbaseSDK::Test::ResourceTest
  def test_retrieve
    response = @moonbase.views.retrieve("id")

    assert_pattern do
      response => MoonbaseSDK::View
    end

    assert_pattern do
      response => {
        id: String,
        links: MoonbaseSDK::View::Links,
        name: String,
        type: Symbol,
        collection: MoonbaseSDK::Collection | nil,
        view_type: MoonbaseSDK::View::ViewType | nil
      }
    end
  end
end
