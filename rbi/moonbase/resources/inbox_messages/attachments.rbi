# typed: strong

module Moonbase
  module Resources
    class InboxMessages
      # Manage your inboxes, conversations, and messages
      class Attachments
        # Add an attachment to a draft message. You can send either a multipart/form-data
        # request with the raw file content, or a JSON request with a file ID.
        sig do
          params(
            inbox_message_id: String,
            file: Moonbase::Internal::FileInput,
            file_id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(Moonbase::MessageAttachment)
        end
        def create(
          # The ID of the Message.
          inbox_message_id,
          file: nil,
          file_id: nil,
          request_options: {}
        )
        end

        # Removes an attachment from a draft message.
        sig do
          params(
            id: String,
            inbox_message_id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The ID of the attachment to remove.
          id,
          # The ID of the Message.
          inbox_message_id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Moonbase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
