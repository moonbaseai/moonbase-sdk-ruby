# typed: strong

module Moonbase
  module Models
    class FileUploadParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::FileUploadParams, Moonbase::Internal::AnyHash)
        end

      # The File object to be uploaded.
      sig { returns(Moonbase::Internal::FileInput) }
      attr_accessor :file

      # Link the File to Moonbase items like a person, organization, deal, task, or an
      # item in a custom collection.
      sig { returns(T.nilable(T::Array[Moonbase::ItemPointerParam])) }
      attr_reader :associations

      sig do
        params(associations: T::Array[Moonbase::ItemPointerParam::OrHash]).void
      end
      attr_writer :associations

      # The display name of the file.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          file: Moonbase::Internal::FileInput,
          associations: T::Array[Moonbase::ItemPointerParam::OrHash],
          name: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The File object to be uploaded.
        file:,
        # Link the File to Moonbase items like a person, organization, deal, task, or an
        # item in a custom collection.
        associations: nil,
        # The display name of the file.
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            file: Moonbase::Internal::FileInput,
            associations: T::Array[Moonbase::ItemPointerParam],
            name: String,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
