# frozen_string_literal: true

module Moonbase
  module Models
    class Funnel < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute steps
      #   An ordered list of `FunnelStep` objects that make up the funnel.
      #
      #   @return [Array<Moonbase::Models::FunnelStep>]
      required :steps, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::FunnelStep] }

      # @!attribute type
      #   String representing the object’s type. Always `funnel` for this object.
      #
      #   @return [Symbol, :funnel]
      required :type, const: :funnel

      # @!method initialize(id:, steps:, type: :funnel)
      #   A Funnel represents a series of steps used to track progression.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param steps [Array<Moonbase::Models::FunnelStep>] An ordered list of `FunnelStep` objects that make up the funnel.
      #
      #   @param type [Symbol, :funnel] String representing the object’s type. Always `funnel` for this object.
    end
  end
end
