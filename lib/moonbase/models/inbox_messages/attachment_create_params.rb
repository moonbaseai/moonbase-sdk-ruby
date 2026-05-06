# frozen_string_literal: true

module Moonbase
  module Models
    module InboxMessages
      # @see Moonbase::Resources::InboxMessages::Attachments#create
      class AttachmentCreateParams < Moonbase::Models::MessageAttachmentCreateParams
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        # @!attribute inbox_message_id
        #
        #   @return [String]
        required :inbox_message_id, String

        # @!method initialize(inbox_message_id:, request_options: {})
        #   @param inbox_message_id [String]
        #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
