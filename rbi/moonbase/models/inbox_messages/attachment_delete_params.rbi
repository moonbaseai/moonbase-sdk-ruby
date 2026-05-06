# typed: strong

module Moonbase
  module Models
    module InboxMessages
      class AttachmentDeleteParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Moonbase::InboxMessages::AttachmentDeleteParams,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :inbox_message_id

        sig { returns(String) }
        attr_accessor :id

        sig do
          params(
            inbox_message_id: String,
            id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(inbox_message_id:, id:, request_options: {})
        end

        sig do
          override.returns(
            {
              inbox_message_id: String,
              id: String,
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
