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

      # @!attribute inbox_id
      #
      #   @return [Moonbase::Models::InboxConversationListParams::InboxID, nil]
      optional :inbox_id, -> { Moonbase::InboxConversationListParams::InboxID }

      # @!attribute limit
      #   Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #   to 20 if not specified.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(after: nil, before: nil, inbox_id: nil, limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxConversationListParams} for more details.
      #
      #   @param after [String] When specified, returns results starting immediately after the item identified b
      #
      #   @param before [String] When specified, returns results starting immediately before the item identified
      #
      #   @param inbox_id [Moonbase::Models::InboxConversationListParams::InboxID]
      #
      #   @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      class InboxID < Moonbase::Internal::Type::BaseModel
        # @!attribute eq
        #
        #   @return [String, nil]
        optional :eq, String

        # @!method initialize(eq: nil)
        #   @param eq [String]
      end
    end
  end
end
