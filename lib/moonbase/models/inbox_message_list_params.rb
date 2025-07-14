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

      # @!attribute conversation
      #   Filter messages by one or more conversation IDs.
      #
      #   @return [Array<String>, nil]
      optional :conversation, Moonbase::Internal::Type::ArrayOf[String]

      # @!attribute inbox
      #   Filter messages by one or more inbox IDs.
      #
      #   @return [Array<String>, nil]
      optional :inbox, Moonbase::Internal::Type::ArrayOf[String]

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

      # @!method initialize(after: nil, before: nil, conversation: nil, inbox: nil, include: nil, limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxMessageListParams} for more details.
      #
      #   @param after [String] When specified, returns results starting immediately after the item identified b
      #
      #   @param before [String] When specified, returns results starting immediately before the item identified
      #
      #   @param conversation [Array<String>] Filter messages by one or more conversation IDs.
      #
      #   @param inbox [Array<String>] Filter messages by one or more inbox IDs.
      #
      #   @param include [Array<Symbol, Moonbase::Models::InboxMessageListParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      #   @param limit [Integer] Maximum number of items to return per page. Must be between 1 and 100. Defaults
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

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
