# typed: strong

module Moonbase
  module Models
    # The Email Message object represents a single email within a `Conversation`.
    module InboxMessageRetrieveResponse
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias { T.any(Moonbase::EmailMessage, Moonbase::SlackMessage) }

      sig do
        override.returns(
          T::Array[Moonbase::Models::InboxMessageRetrieveResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
