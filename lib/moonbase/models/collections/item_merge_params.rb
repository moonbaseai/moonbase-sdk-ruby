# frozen_string_literal: true

module Moonbase
  module Models
    module Collections
      # @see Moonbase::Resources::Collections::Items#merge
      class ItemMergeParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        # @!attribute collection_id
        #
        #   @return [String]
        required :collection_id, String

        # @!attribute destination
        #   The destination item pointer. This will be the remaining merged item.
        #
        #   @return [Moonbase::Models::ItemPointerParam]
        required :destination, -> { Moonbase::ItemPointerParam }

        # @!attribute source
        #   The source item pointer. This item will be deleted.
        #
        #   @return [Moonbase::Models::ItemPointerParam]
        required :source, -> { Moonbase::ItemPointerParam }

        # @!method initialize(collection_id:, destination:, source:, request_options: {})
        #   @param collection_id [String]
        #
        #   @param destination [Moonbase::Models::ItemPointerParam] The destination item pointer. This will be the remaining merged item.
        #
        #   @param source [Moonbase::Models::ItemPointerParam] The source item pointer. This item will be deleted.
        #
        #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
