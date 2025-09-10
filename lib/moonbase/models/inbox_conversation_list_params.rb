# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxConversations#list
    class InboxConversationListParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute after
      #   When specified, returns results starting immediately after the item identified
      #   by this cursor. Use the cursor value from the previous response's metadata to
      #   fetch the next page of results.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   When specified, returns results starting immediately before the item identified
      #   by this cursor. Use the cursor value from the response's metadata to fetch the
      #   previous page of results.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute filter
      #
      #   @return [Moonbase::Models::InboxConversationListParams::Filter, nil]
      optional :filter, -> { Moonbase::InboxConversationListParams::Filter }

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `inbox`, `messages`, and `messages.addresses`.
      #
      #   @return [Array<Symbol, Moonbase::Models::InboxConversationListParams::Include>, nil]
      optional :include,
               -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::InboxConversationListParams::Include] }

      # @!attribute limit
      #   Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #   to 20 if not specified.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(after: nil, before: nil, filter: nil, include: nil, limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxConversationListParams} for more details.
      #
      #   @param after [String] When specified, returns results starting immediately after the item identified b
      #
      #   @param before [String] When specified, returns results starting immediately before the item identified
      #
      #   @param filter [Moonbase::Models::InboxConversationListParams::Filter]
      #
      #   @param include [Array<Symbol, Moonbase::Models::InboxConversationListParams::Include>] Specifies which related objects to include in the response. Valid options are `i
      #
      #   @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Moonbase::Internal::Type::BaseModel
        # @!attribute conversation_id
        #
        #   @return [Moonbase::Models::InboxConversationListParams::Filter::ConversationID, nil]
        optional :conversation_id, -> { Moonbase::InboxConversationListParams::Filter::ConversationID }

        # @!attribute inbox_id
        #
        #   @return [Moonbase::Models::InboxConversationListParams::Filter::InboxID, nil]
        optional :inbox_id, -> { Moonbase::InboxConversationListParams::Filter::InboxID }

        # @!method initialize(conversation_id: nil, inbox_id: nil)
        #   @param conversation_id [Moonbase::Models::InboxConversationListParams::Filter::ConversationID]
        #   @param inbox_id [Moonbase::Models::InboxConversationListParams::Filter::InboxID]

        # @see Moonbase::Models::InboxConversationListParams::Filter#conversation_id
        class ConversationID < Moonbase::Internal::Type::BaseModel
          # @!attribute eq
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String]
        end

        # @see Moonbase::Models::InboxConversationListParams::Filter#inbox_id
        class InboxID < Moonbase::Internal::Type::BaseModel
          # @!attribute eq
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String]
        end
      end

      module Include
        extend Moonbase::Internal::Type::Enum

        INBOX = :inbox
        MESSAGES = :messages
        MESSAGES_ADDRESSES = :"messages.addresses"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
