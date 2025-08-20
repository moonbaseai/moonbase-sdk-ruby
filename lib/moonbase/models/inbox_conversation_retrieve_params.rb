# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::InboxConversations#retrieve
    class InboxConversationRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `addresses` and `tags`.
      #
      #   @return [Array<Symbol, Moonbase::Models::InboxConversationRetrieveParams::Include>, nil]
      optional :include,
               -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::InboxConversationRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxConversationRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, Moonbase::Models::InboxConversationRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Moonbase::Internal::Type::Enum

        ADDRESSES = :addresses
        TAGS = :tags

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
