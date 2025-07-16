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

      # @!attribute filename
      #   The original filename of the uploaded file.
      #
      #   @return [String]
      required :filename, String

      # @!attribute links
      #
      #   @return [Moonbase::Models::MoonbaseFile::Links]
      required :links, -> { Moonbase::MoonbaseFile::Links }

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

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, filename:, links:, name:, size:, created_at: nil, updated_at: nil, type: :file)
      #   The File object represents a file that has been uploaded to your library.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param filename [String] The original filename of the uploaded file.
      #
      #   @param links [Moonbase::Models::MoonbaseFile::Links]
      #
      #   @param name [String] The display name of the file.
      #
      #   @param size [Float] The size of the file in bytes.
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @param type [Symbol, :file] String representing the object’s type. Always `file` for this object.

      # @see Moonbase::Models::MoonbaseFile#links
      class Links < Moonbase::Internal::Type::BaseModel
        # @!attribute download_url
        #   A temporary, signed URL to download the file content. The URL expires after one
        #   hour.
        #
        #   @return [String]
        required :download_url, String

        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!method initialize(download_url:, self_:)
        #   Some parameter documentations has been truncated, see
        #   {Moonbase::Models::MoonbaseFile::Links} for more details.
        #
        #   @param download_url [String] A temporary, signed URL to download the file content. The URL expires after one
        #
        #   @param self_ [String] The canonical URL for this object.
      end
    end
  end
end
