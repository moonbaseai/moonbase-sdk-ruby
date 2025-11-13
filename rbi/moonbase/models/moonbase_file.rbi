# typed: strong

module Moonbase
  module Models
    class MoonbaseFile < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::MoonbaseFile, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # A list of items this file is associated with.
      sig { returns(T::Array[Moonbase::ItemPointer]) }
      attr_accessor :associations

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # A temporary, signed URL to download the file content. The URL expires after one
      # hour.
      sig { returns(String) }
      attr_accessor :download_url

      # The original filename of the uploaded file.
      sig { returns(String) }
      attr_accessor :filename

      # The display name of the file.
      sig { returns(String) }
      attr_accessor :name

      # The size of the file in bytes.
      sig { returns(Float) }
      attr_accessor :size

      # String representing the object’s type. Always `file` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The File object represents a file that has been uploaded to your library.
      sig do
        params(
          id: String,
          associations: T::Array[Moonbase::ItemPointer::OrHash],
          created_at: Time,
          download_url: String,
          filename: String,
          name: String,
          size: Float,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # A list of items this file is associated with.
        associations:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # A temporary, signed URL to download the file content. The URL expires after one
        # hour.
        download_url:,
        # The original filename of the uploaded file.
        filename:,
        # The display name of the file.
        name:,
        # The size of the file in bytes.
        size:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # String representing the object’s type. Always `file` for this object.
        type: :file
      )
      end

      sig do
        override.returns(
          {
            id: String,
            associations: T::Array[Moonbase::ItemPointer],
            created_at: Time,
            download_url: String,
            filename: String,
            name: String,
            size: Float,
            type: Symbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
