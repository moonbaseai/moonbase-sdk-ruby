# frozen_string_literal: true

module Moonbase
  module Models
    class MessageAttachmentCreateParams < Moonbase::Internal::Type::BaseModel
      # @!attribute file
      #
      #   @return [Pathname, StringIO, IO, String, Moonbase::FilePart, nil]
      optional :file, Moonbase::Internal::Type::FileInput

      # @!attribute file_id
      #
      #   @return [String, nil]
      optional :file_id, String

      # @!method initialize(file: nil, file_id: nil)
      #   @param file [Pathname, StringIO, IO, String, Moonbase::FilePart]
      #   @param file_id [String]
    end
  end
end
