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

      # The original filename of the uploaded file.
      sig { returns(String) }
      attr_accessor :filename

      sig { returns(Moonbase::MoonbaseFile::Links) }
      attr_reader :links

      sig { params(links: Moonbase::MoonbaseFile::Links::OrHash).void }
      attr_writer :links

      # The display name of the file.
      sig { returns(String) }
      attr_accessor :name

      # The size of the file in bytes.
      sig { returns(Float) }
      attr_accessor :size

      # String representing the object’s type. Always `file` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The File object represents a file that has been uploaded to your library.
      sig do
        params(
          id: String,
          filename: String,
          links: Moonbase::MoonbaseFile::Links::OrHash,
          name: String,
          size: Float,
          created_at: Time,
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The original filename of the uploaded file.
        filename:,
        links:,
        # The display name of the file.
        name:,
        # The size of the file in bytes.
        size:,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil,
        # String representing the object’s type. Always `file` for this object.
        type: :file
      )
      end

      sig do
        override.returns(
          {
            id: String,
            filename: String,
            links: Moonbase::MoonbaseFile::Links,
            name: String,
            size: Float,
            type: Symbol,
            created_at: Time,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::MoonbaseFile::Links, Moonbase::Internal::AnyHash)
          end

        # A temporary, signed URL to download the file content. The URL expires after one
        # hour.
        sig { returns(String) }
        attr_accessor :download_url

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        sig do
          params(download_url: String, self_: String).returns(T.attached_class)
        end
        def self.new(
          # A temporary, signed URL to download the file content. The URL expires after one
          # hour.
          download_url:,
          # The canonical URL for this object.
          self_:
        )
        end

        sig { override.returns({ download_url: String, self_: String }) }
        def to_hash
        end
      end
    end
  end
end
