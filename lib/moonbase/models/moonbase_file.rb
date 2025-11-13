# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Files#retrieve
    class MoonbaseFile < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute associations
      #   A list of items this file is associated with.
      #
      #   @return [Array<Moonbase::Models::ItemPointer>]
      required :associations, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::ItemPointer] }

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute download_url
      #   A temporary, signed URL to download the file content. The URL expires after one
      #   hour.
      #
      #   @return [String]
      required :download_url, String

      # @!attribute filename
      #   The original filename of the uploaded file.
      #
      #   @return [String]
      required :filename, String

      # @!attribute name
      #   The display name of the file.
      #
      #   @return [String]
      required :name, String

      # @!attribute size
      #   The size of the file in bytes.
      #
      #   @return [Float]
      required :size, Float

      # @!attribute type
      #   String representing the object’s type. Always `file` for this object.
      #
      #   @return [Symbol, :file]
      required :type, const: :file

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, associations:, created_at:, download_url:, filename:, name:, size:, updated_at:, type: :file)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::MoonbaseFile} for more details.
      #
      #   The File object represents a file that has been uploaded to your library.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param associations [Array<Moonbase::Models::ItemPointer>] A list of items this file is associated with.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param download_url [String] A temporary, signed URL to download the file content. The URL expires after one
      #
      #   @param filename [String] The original filename of the uploaded file.
      #
      #   @param name [String] The display name of the file.
      #
      #   @param size [Float] The size of the file in bytes.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, :file] String representing the object’s type. Always `file` for this object.
    end
  end
end
