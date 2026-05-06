# typed: strong

module Moonbase
  module Models
    module InboxMessages
      class AttachmentCreateParams < Moonbase::Models::MessageAttachmentCreateParams
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Moonbase::InboxMessages::AttachmentCreateParams,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :inbox_message_id

        sig do
          params(
            inbox_message_id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(inbox_message_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              inbox_message_id: String,
              request_options: Moonbase::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
