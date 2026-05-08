# frozen_string_literal: true

module Moonbase
  module Models
    module InboxMessages
      # @see Moonbase::Resources::InboxMessages::Attachments#create
      class AttachmentCreateParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        # @!attribute inbox_message_id
        #
        #   @return [String]
        required :inbox_message_id, String

        # @!attribute file
        #
        #   @return [Pathname, StringIO, IO, String, Moonbase::FilePart, nil]
        optional :file, Moonbase::Internal::Type::FileInput

        # @!attribute file_id
        #
        #   @return [String, nil]
        optional :file_id, String

        # @!method initialize(inbox_message_id:, file: nil, file_id: nil, request_options: {})
        #   @param inbox_message_id [String]
        #   @param file [Pathname, StringIO, IO, String, Moonbase::FilePart]
        #   @param file_id [String]
        #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
