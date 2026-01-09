# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Items#search
    class ItemSearchResponse < Moonbase::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Moonbase::Models::Item>]
      required :data, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Item] }

      # @!attribute type
      #
      #   @return [Symbol, :list]
      required :type, const: :list

      # @!method initialize(data:, type: :list)
      #   @param data [Array<Moonbase::Models::Item>]
      #   @param type [Symbol, :list]
    end
  end
end
