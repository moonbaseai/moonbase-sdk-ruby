# frozen_string_literal: true

module Moonbase
  module Resources
    class InboxMessages
      # Manage your inboxes, conversations, and messages
      class Attachments
        # Add an attachment to a draft message. You can send either a multipart/form-data
        # request with the raw file content, or a JSON request with a file ID.
        #
        # @overload create(inbox_message_id, file: nil, file_id: nil, request_options: {})
        #
        # @param inbox_message_id [String] The ID of the Message.
        #
        # @param file [Pathname, StringIO, IO, String, Moonbase::FilePart]
        #
        # @param file_id [String]
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Moonbase::Models::MessageAttachment]
        #
        # @see Moonbase::Models::InboxMessages::AttachmentCreateParams
        def create(inbox_message_id, params = {})
          parsed, options = Moonbase::InboxMessages::AttachmentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["inbox_messages/%1$s/attachments", inbox_message_id],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: Moonbase::MessageAttachment,
            options: options
          )
        end

        # Removes an attachment from a draft message.
        #
        # @overload delete(id, inbox_message_id:, request_options: {})
        #
        # @param id [String] The ID of the attachment to remove.
        #
        # @param inbox_message_id [String] The ID of the Message.
        #
        # @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Moonbase::Models::InboxMessages::AttachmentDeleteParams
        def delete(id, params)
          parsed, options = Moonbase::InboxMessages::AttachmentDeleteParams.dump_request(params)
          inbox_message_id =
            parsed.delete(:inbox_message_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["inbox_messages/%1$s/attachments/%2$s", inbox_message_id, id],
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [Moonbase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
