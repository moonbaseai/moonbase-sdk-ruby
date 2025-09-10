# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxMessages#list
    class InboxMessageListParams < Moonbase::Internal::Type::BaseModel
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
      #   @return [Moonbase::Models::InboxMessageListParams::Filter, nil]
      optional :filter, -> { Moonbase::InboxMessageListParams::Filter }

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `addresses`, `attachments`, and `conversation`.
      #
      #   @return [Array<Symbol, Moonbase::Models::InboxMessageListParams::Include>, nil]
      optional :include,
               -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::InboxMessageListParams::Include] }

      # @!attribute limit
      #   Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #   to 20 if not specified.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(after: nil, before: nil, filter: nil, include: nil, limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxMessageListParams} for more details.
      #
      #   @param after [String] When specified, returns results starting immediately after the item identified b
      #
      #   @param before [String] When specified, returns results starting immediately before the item identified
      #
      #   @param filter [Moonbase::Models::InboxMessageListParams::Filter]
      #
      #   @param include [Array<Symbol, Moonbase::Models::InboxMessageListParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      #   @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Moonbase::Internal::Type::BaseModel
        # @!attribute conversation_id
        #
        #   @return [Moonbase::Models::InboxMessageListParams::Filter::ConversationID, nil]
        optional :conversation_id, -> { Moonbase::InboxMessageListParams::Filter::ConversationID }

        # @!attribute inbox_id
        #
        #   @return [Moonbase::Models::InboxMessageListParams::Filter::InboxID, nil]
        optional :inbox_id, -> { Moonbase::InboxMessageListParams::Filter::InboxID }

        # @!method initialize(conversation_id: nil, inbox_id: nil)
        #   @param conversation_id [Moonbase::Models::InboxMessageListParams::Filter::ConversationID]
        #   @param inbox_id [Moonbase::Models::InboxMessageListParams::Filter::InboxID]

        # @see Moonbase::Models::InboxMessageListParams::Filter#conversation_id
        class ConversationID < Moonbase::Internal::Type::BaseModel
          # @!attribute eq
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String]
        end

        # @see Moonbase::Models::InboxMessageListParams::Filter#inbox_id
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

        ADDRESSES = :addresses
        ATTACHMENTS = :attachments
        CONVERSATION = :conversation

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
