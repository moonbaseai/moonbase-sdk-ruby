# frozen_string_literal: true

module MoonbaseSDK
  module Models
    # @see MoonbaseSDK::Resources::Inboxes#retrieve
    class InboxRetrieveParams < MoonbaseSDK::Internal::Type::BaseModel
      extend MoonbaseSDK::Internal::Type::RequestParameters::Converter
      include MoonbaseSDK::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid option is
      #   `tagset`.
      #
      #   @return [Symbol, MoonbaseSDK::Models::InboxRetrieveParams::Include, nil]
      optional :include, enum: -> { MoonbaseSDK::InboxRetrieveParams::Include }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MoonbaseSDK::Models::InboxRetrieveParams} for more details.
      #
      #   @param include [Symbol, MoonbaseSDK::Models::InboxRetrieveParams::Include] Specifies which related objects to include in the response. Valid option is `tag
      #
      #   @param request_options [MoonbaseSDK::RequestOptions, Hash{Symbol=>Object}]

      # Specifies which related objects to include in the response. Valid option is
      # `tagset`.
      module Include
        extend MoonbaseSDK::Internal::Type::Enum

        TAGSET = :tagset

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
