# frozen_string_literal: true

module Moonbase
  module Models
    # @see Moonbase::Resources::Funnels#create
    class Funnel < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   The name of the funnel.
      #
      #   @return [String]
      required :name, String

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

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, name:, steps:, updated_at:, type: :funnel)
      #   A Funnel represents a series of steps used to track progression.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param name [String] The name of the funnel.
      #
      #   @param steps [Array<Moonbase::Models::FunnelStep>] An ordered list of `FunnelStep` objects that make up the funnel.
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param type [Symbol, :funnel] String representing the object’s type. Always `funnel` for this object.
    end
  end
end
