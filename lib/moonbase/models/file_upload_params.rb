# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Files#upload
    class FileUploadParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute file
      #   The File object to be uploaded.
      #
      #   @return [Pathname, StringIO, IO, String, Moonbase::FilePart]
      required :file, Moonbase::Internal::Type::FileInput

      # @!attribute associations
      #   Link the File to Moonbase items like a person, organization, deal, task, or an
      #   item in a custom collection.
      #
      #   @return [Array<Moonbase::Models::Pointer>, nil]
      optional :associations, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Pointer] }

      # @!attribute name
      #   The display name of the file.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(file:, associations: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::FileUploadParams} for more details.
      #
      #   @param file [Pathname, StringIO, IO, String, Moonbase::FilePart] The File object to be uploaded.
      #
      #   @param associations [Array<Moonbase::Models::Pointer>] Link the File to Moonbase items like a person, organization, deal, task, or an i
      #
      #   @param name [String] The display name of the file.
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
