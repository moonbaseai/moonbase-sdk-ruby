# frozen_string_literal: true

module Moonbase
  module Models
    class StageFieldUpdateParams < Moonbase::Internal::Type::BaseModel
      # @!attribute type
      #   The field type. Must be `field/stage`.
      #
      #   @return [Symbol, :"field/stage"]
      required :type, const: :"field/stage"

      # @!attribute cardinality
      #   Updated cardinality: `one` or `many`.
      #
      #   @return [Symbol, Moonbase::Models::StageFieldUpdateParams::Cardinality, nil]
      optional :cardinality, enum: -> { Moonbase::StageFieldUpdateParams::Cardinality }

      # @!attribute default_values
      #
      #   @return [Array<Moonbase::Models::FunnelStepValueParam>, nil]
      optional :default_values,
               -> { Moonbase::Internal::Type::ArrayOf[Moonbase::FunnelStepValueParam] },
               nil?: true

      # @!attribute description
      #   An updated description, or `null` to clear it.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute funnel
      #   A new funnel to use for this field, or omit to keep the current funnel.
      #
      #   @return [Moonbase::Models::FunnelPointerParam, nil]
      optional :funnel, -> { Moonbase::FunnelPointerParam }

      # @!attribute name
      #   The new name for the field.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute required
      #   If `true`, items must have a value for this field.
      #
      #   @return [Boolean, nil]
      optional :required, Moonbase::Internal::Type::Boolean

      # @!attribute unique
      #   If `true`, values must be unique across all items.
      #
      #   @return [Boolean, nil]
      optional :unique, Moonbase::Internal::Type::Boolean

      # @!method initialize(cardinality: nil, default_values: nil, description: nil, funnel: nil, name: nil, required: nil, unique: nil, type: :"field/stage")
      #   Parameters for updating a stage field.
      #
      #   @param cardinality [Symbol, Moonbase::Models::StageFieldUpdateParams::Cardinality] Updated cardinality: `one` or `many`.
      #
      #   @param default_values [Array<Moonbase::Models::FunnelStepValueParam>, nil]
      #
      #   @param description [String, nil] An updated description, or `null` to clear it.
      #
      #   @param funnel [Moonbase::Models::FunnelPointerParam] A new funnel to use for this field, or omit to keep the current funnel.
      #
      #   @param name [String] The new name for the field.
      #
      #   @param required [Boolean] If `true`, items must have a value for this field.
      #
      #   @param unique [Boolean] If `true`, values must be unique across all items.
      #
      #   @param type [Symbol, :"field/stage"] The field type. Must be `field/stage`.

      # Updated cardinality: `one` or `many`.
      #
      # @see Moonbase::Models::StageFieldUpdateParams#cardinality
      module Cardinality
        extend Moonbase::Internal::Type::Enum

        ONE = :one
        MANY = :many

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
