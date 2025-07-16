# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::InboxConversations#retrieve
    class InboxConversationRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `addresses` and `tags`.
      #
      #   @return [Array<Symbol, MoonbaseSDK::Models::InboxConversationRetrieveParams::Include>, nil]
      optional :include,
               -> {
                 MoonbaseSDK::Internal::Type::ArrayOf[enum: MoonbaseSDK::InboxConversationRetrieveParams::Include]
               }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::InboxConversationRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, MoonbaseSDK::Models::InboxConversationRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        ADDRESSES = :addresses
        TAGS = :tags

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
