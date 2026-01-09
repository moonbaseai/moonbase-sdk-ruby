# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::ItemsTest < Moonbase::Test::ResourceTest
  def test_search_required_params
    response = @moonbase.items.search(query: "query")

    assert_pattern do
      response => Moonbase::Models::ItemSearchResponse
    end

    assert_pattern do
      response => {
        data: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::Item]),
        type: Symbol
      }
    end
  end
end
