# typed: strong

module MoonbaseSDK
  module Resources
    class InboxConversations
      # Retrieves the details of an existing conversation.
      sig do
        params(
          id: String,
          include:
            T::Array[
              MoonbaseSDK::InboxConversationRetrieveParams::Include::OrSymbol
            ],
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(MoonbaseSDK::InboxConversation)
      end
      def retrieve(
        # The ID of the Conversation to retrieve.
        id,
        # Specifies which related objects to include in the response. Valid options are
        # `addresses` and `tags`.
        include: nil,
        request_options: {}
      )
      end

      # Returns a list of your conversations.
      sig do
        params(
          after: String,
          before: String,
          inbox: T::Array[String],
          include:
            T::Array[
              MoonbaseSDK::InboxConversationListParams::Include::OrSymbol
            ],
          limit: Integer,
          request_options: MoonbaseSDK::RequestOptions::OrHash
        ).returns(
          MoonbaseSDK::Internal::CursorPage[MoonbaseSDK::InboxConversation]
        )
      end
      def list(
        # When specified, returns results starting immediately after the item identified
        # by this cursor. Use the cursor value from the previous response's metadata to
        # fetch the next page of results.
        after: nil,
        # When specified, returns results starting immediately before the item identified
        # by this cursor. Use the cursor value from the response's metadata to fetch the
        # previous page of results.
        before: nil,
        # Filter conversations by one or more inbox IDs.
        inbox: nil,
        # Specifies which related objects to include in the response. Valid options are
        # `addresses` and `tags`.
        include: nil,
        # Maximum number of items to return per page. Must be between 1 and 100. Defaults
        # to 20 if not specified.
        limit: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: MoonbaseSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
