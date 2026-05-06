# typed: strong

module Moonbase
  module Models
    class InboxConversationListParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Moonbase::InboxConversationListParams,
            Moonbase::Internal::AnyHash
          )
        end

      # When specified, returns results starting immediately after the item identified
      # by this cursor. Use the cursor value from the previous response's metadata to
      # fetch the next page of results.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # When specified, returns results starting immediately before the item identified
      # by this cursor. Use the cursor value from the response's metadata to fetch the
      # previous page of results.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      sig { returns(T.nilable(Moonbase::InboxConversationListParams::InboxID)) }
      attr_reader :inbox_id

      sig do
        params(
          inbox_id: Moonbase::InboxConversationListParams::InboxID::OrHash
        ).void
      end
      attr_writer :inbox_id

      # Maximum number of items to return per page. Must be between 1 and 100. Defaults
      # to 20 if not specified.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          after: String,
          before: String,
          inbox_id: Moonbase::InboxConversationListParams::InboxID::OrHash,
          limit: Integer,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # When specified, returns results starting immediately after the item identified
        # by this cursor. Use the cursor value from the previous response's metadata to
        # fetch the next page of results.
        after: nil,
        # When specified, returns results starting immediately before the item identified
        # by this cursor. Use the cursor value from the response's metadata to fetch the
        # previous page of results.
        before: nil,
        inbox_id: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            inbox_id: Moonbase::InboxConversationListParams::InboxID,
            limit: Integer,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class InboxID < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::InboxConversationListParams::InboxID,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :eq

        sig { params(eq: String).void }
        attr_writer :eq

        sig { params(eq: String).returns(T.attached_class) }
        def self.new(eq: nil)
        end

        sig { override.returns({ eq: String }) }
        def to_hash
        end
      end
    end
  end
end
