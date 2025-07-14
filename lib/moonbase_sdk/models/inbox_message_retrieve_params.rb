# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::InboxMessages#retrieve
    class InboxMessageRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid options are
      #   `addresses`, `attachments`, and `conversation`.
      #
      #   @return [Array<Symbol, MoonbaseSDK::Models::InboxMessageRetrieveParams::Include>, nil]
      optional :include,
               -> {
                 MoonbaseSDK::Internal::Type::ArrayOf[enum: MoonbaseSDK::InboxMessageRetrieveParams::Include]
               }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::InboxMessageRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, MoonbaseSDK::Models::InboxMessageRetrieveParams::Include>] Specifies which related objects to include in the response. Valid options are `a
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        ADDRESSES = :addresses
        ATTACHMENTS = :attachments
        CONVERSATION = :conversation

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
