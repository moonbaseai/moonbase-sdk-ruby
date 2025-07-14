# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Inboxes#retrieve
    class InboxRetrieveParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      # @!attribute include
      #   Specifies which related objects to include in the response. Valid option is
      #   `tagset`.
      #
      #   @return [Symbol, Moonbase::Models::InboxRetrieveParams::Include, nil]
      optional :include, enum: -> { Moonbase::InboxRetrieveParams::Include }

      # @!method initialize(include: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::InboxRetrieveParams} for more details.
      #
      #   @param include [Symbol, Moonbase::Models::InboxRetrieveParams::Include] Specifies which related objects to include in the response. Valid option is `tag
      #
      #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

      # Specifies which related objects to include in the response. Valid option is
      # `tagset`.
      module Include
        extend Moonbase::Internal::Type::Enum

        TAGSET = :tagset

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
