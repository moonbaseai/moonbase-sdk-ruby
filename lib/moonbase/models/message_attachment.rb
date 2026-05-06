# frozen_string_literal: true

module Moonbase
  module Models
    class MessageAttachment < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

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
      #   The original name of the uploaded file, including its extension.
      #
      #   @return [String]
      required :filename, String

      # @!attribute size
      #   The size of the file in bytes.
      #
      #   @return [Integer]
      required :size, Integer

      # @!attribute type
      #   String representing the object’s type. Always `message_attachment` for this
      #   object.
      #
      #   @return [Symbol, :message_attachment]
      required :type, const: :message_attachment

      # @!method initialize(id:, created_at:, download_url:, filename:, size:, type: :message_attachment)
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::MessageAttachment} for more details.
      #
      #   The Attachment object represents a file attached to a message. You can download
      #   the file content via the `download_url`.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param download_url [String] A temporary, signed URL to download the file content. The URL expires after one
      #
      #   @param filename [String] The original name of the uploaded file, including its extension.
      #
      #   @param size [Integer] The size of the file in bytes.
      #
      #   @param type [Symbol, :message_attachment] String representing the object’s type. Always `message_attachment` for this obje
    end
  end
end
