# typed: strong

module Moonbase
  module Models
    module InboxMessages
      class AttachmentCreateParams < Moonbase::Internal::Type::BaseModel
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

        sig { returns(T.nilable(Moonbase::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: Moonbase::Internal::FileInput).void }
        attr_writer :file

        sig { returns(T.nilable(String)) }
        attr_reader :file_id

        sig { params(file_id: String).void }
        attr_writer :file_id

        sig do
          params(
            inbox_message_id: String,
            file: Moonbase::Internal::FileInput,
            file_id: String,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          inbox_message_id:,
          file: nil,
          file_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              inbox_message_id: String,
              file: Moonbase::Internal::FileInput,
              file_id: String,
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
