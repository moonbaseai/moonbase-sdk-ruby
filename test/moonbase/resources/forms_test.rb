# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::FormsTest < Moonbase::Test::ResourceTest
  def test_create_required_params
    response = @moonbase.forms.create(name: "Contact Us")

    assert_pattern do
      response => Moonbase::Form
    end

    assert_pattern do
      response => {
        id: String,
        business_email_required: Moonbase::Internal::Type::Boolean,
        collection: Moonbase::Collection,
        created_at: Time,
        name: String,
        pages_enabled: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        updated_at: Time,
        pages_url: String | nil,
        redirect_url: String | nil
      }
    end
  end

  def test_retrieve
    response = @moonbase.forms.retrieve("id")

    assert_pattern do
      response => Moonbase::Form
    end

    assert_pattern do
      response => {
        id: String,
        business_email_required: Moonbase::Internal::Type::Boolean,
        collection: Moonbase::Collection,
        created_at: Time,
        name: String,
        pages_enabled: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        updated_at: Time,
        pages_url: String | nil,
        redirect_url: String | nil
      }
    end
  end

  def test_update
    response = @moonbase.forms.update("id")

    assert_pattern do
      response => Moonbase::Form
    end

    assert_pattern do
      response => {
        id: String,
        business_email_required: Moonbase::Internal::Type::Boolean,
        collection: Moonbase::Collection,
        created_at: Time,
        name: String,
        pages_enabled: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        updated_at: Time,
        pages_url: String | nil,
        redirect_url: String | nil
      }
    end
  end

  def test_list
    response = @moonbase.forms.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::Form
    end

    assert_pattern do
      row => {
        id: String,
        business_email_required: Moonbase::Internal::Type::Boolean,
        collection: Moonbase::Collection,
        created_at: Time,
        name: String,
        pages_enabled: Moonbase::Internal::Type::Boolean,
        type: Symbol,
        updated_at: Time,
        pages_url: String | nil,
        redirect_url: String | nil
      }
    end
  end

  def test_delete
    response = @moonbase.forms.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
