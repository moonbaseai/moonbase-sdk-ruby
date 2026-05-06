# typed: strong

module Moonbase
  module Models
    class MessageAttachmentCreateParams < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::MessageAttachmentCreateParams,
            Moonbase::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Moonbase::Internal::FileInput)) }
      attr_reader :file

      sig { params(file: Moonbase::Internal::FileInput).void }
      attr_writer :file

      sig { returns(T.nilable(String)) }
      attr_reader :file_id

      sig { params(file_id: String).void }
      attr_writer :file_id

      sig do
        params(file: Moonbase::Internal::FileInput, file_id: String).returns(
          T.attached_class
        )
      end
      def self.new(file: nil, file_id: nil)
      end

      sig do
        override.returns(
          { file: Moonbase::Internal::FileInput, file_id: String }
        )
      end
      def to_hash
      end
    end
  end
end
