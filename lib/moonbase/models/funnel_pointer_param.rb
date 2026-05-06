# frozen_string_literal: true

module Moonbase
  module Models
    class FunnelPointerParam < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the funnel.
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #   String representing the object's type. Always `funnel` for this parameter.
      #
      #   @return [Symbol, :funnel]
      required :type, const: :funnel

      # @!method initialize(id:, type: :funnel)
      #   A pointer to a Funnel, used as a parameter.
      #
      #   @param id [String] The ID of the funnel.
      #
      #   @param type [Symbol, :funnel] String representing the object's type. Always `funnel` for this parameter.
    end
  end
end
