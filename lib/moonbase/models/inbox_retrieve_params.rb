# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Inboxes#retrieve
    class InboxRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid option is
      #   `tagsets`.
      #
      #   @return [Array<Symbol, Moonbase::Models::InboxRetrieveParams::Include>, nil]
      optional :include, -> { Moonbase::Internal::Type::ArrayOf[enum: Moonbase::InboxRetrieveParams::Include] }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxRetrieveParams} for more details.
      #
      #   @param include [Array<Symbol, Moonbase::Models::InboxRetrieveParams::Include>] Specifies which related objects to include in the response. Valid option is `tag
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      module Include
        extend Moonbase::Internal::Type::Enum

        TAGSETS = :tagsets

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
