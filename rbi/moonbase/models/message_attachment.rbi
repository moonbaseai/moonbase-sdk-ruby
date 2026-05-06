# typed: strong

module Moonbase
  module Models
    class MessageAttachment < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::MessageAttachment, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # A temporary, signed URL to download the file content. The URL expires after one
      # hour.
      sig { returns(String) }
      attr_accessor :download_url

      # The original name of the uploaded file, including its extension.
      sig { returns(String) }
      attr_accessor :filename

      # The size of the file in bytes.
      sig { returns(Integer) }
      attr_accessor :size

      # String representing the object’s type. Always `message_attachment` for this
      # object.
      sig { returns(Symbol) }
      attr_accessor :type

      # The Attachment object represents a file attached to a message. You can download
      # the file content via the `download_url`.
      sig do
        params(
          id: String,
          created_at: Time,
          download_url: String,
          filename: String,
          size: Integer,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # A temporary, signed URL to download the file content. The URL expires after one
        # hour.
        download_url:,
        # The original name of the uploaded file, including its extension.
        filename:,
        # The size of the file in bytes.
        size:,
        # String representing the object’s type. Always `message_attachment` for this
        # object.
        type: :message_attachment
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            download_url: String,
            filename: String,
            size: Integer,
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
