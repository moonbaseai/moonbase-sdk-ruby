# frozen_string_literal: true

require_relative "../test_helper"

class Moonbase::Test::Resources::FilesTest < Moonbase::Test::ResourceTest
  def test_retrieve
    response = @moonbase.files.retrieve("id")

    assert_pattern do
      response => Moonbase::MoonbaseFile
    end

    assert_pattern do
      response => {
        id: String,
        associations: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::ItemPointer]),
        created_at: Time,
        download_url: String,
        filename: String,
        name: String,
        size: Float,
        type: Symbol,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @moonbase.files.list

    assert_pattern do
      response => Moonbase::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Moonbase::MoonbaseFile
    end

    assert_pattern do
      row => {
        id: String,
        associations: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::ItemPointer]),
        created_at: Time,
        download_url: String,
        filename: String,
        name: String,
        size: Float,
        type: Symbol,
        updated_at: Time
      }
    end
  end

  def test_upload_required_params
    response = @moonbase.files.upload(file: Pathname(__FILE__))

    assert_pattern do
      response => Moonbase::MoonbaseFile
    end

    assert_pattern do
      response => {
        id: String,
        associations: ^(Moonbase::Internal::Type::ArrayOf[Moonbase::ItemPointer]),
        created_at: Time,
        download_url: String,
        filename: String,
        name: String,
        size: Float,
        type: Symbol,
        updated_at: Time
      }
    end
  end
end
