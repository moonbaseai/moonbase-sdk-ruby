# frozen_string_literal: true

module Moonbase
  module Models
    class StageFieldCreateParams < Moonbase::Internal::Type::BaseModel
      # @!attribute funnel
      #   The funnel that defines the available stages for this field.
      #
      #   @return [Moonbase::Models::FunnelPointerParam]
      required :funnel, -> { Moonbase::FunnelPointerParam }

      # @!attribute name
      #   The human-readable name for the field.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   The field type. Must be `field/stage`.
      #
      #   @return [Symbol, :"field/stage"]
      required :type, const: :"field/stage"

      # @!attribute cardinality
      #   Whether the field holds a single value (`one`) or multiple values (`many`).
      #   Defaults to `one`.
      #
      #   @return [Symbol, Moonbase::Models::StageFieldCreateParams::Cardinality, nil]
      optional :cardinality, enum: -> { Moonbase::StageFieldCreateParams::Cardinality }

      # @!attribute default_values
      #
      #   @return [Array<Moonbase::Models::FunnelStepValueParam>, nil]
      optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::FunnelStepValueParam] }

      # @!attribute description
      #   An optional description of the field's purpose.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute required
      #   If `true`, items must have a value for this field. Defaults to `false`.
      #
      #   @return [Boolean, nil]
      optional :required, Moonbase::Internal::Type::Boolean

      # @!attribute unique
      #   If `true`, values must be unique across all items. Defaults to `false`.
      #
      #   @return [Boolean, nil]
      optional :unique, Moonbase::Internal::Type::Boolean

      # @!method initialize(funnel:, name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/stage")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::StageFieldCreateParams} for more details.
      #
      #   Parameters for creating a stage field.
      #
      #   @param funnel [Moonbase::Models::FunnelPointerParam] The funnel that defines the available stages for this field.
      #
      #   @param name [String] The human-readable name for the field.
      #
      #   @param cardinality [Symbol, Moonbase::Models::StageFieldCreateParams::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
      #
      #   @param default_values [Array<Moonbase::Models::FunnelStepValueParam>]
      #
      #   @param description [String] An optional description of the field's purpose.
      #
      #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
      #
      #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
      #
      #   @param type [Symbol, :"field/stage"] The field type. Must be `field/stage`.

      # Whether the field holds a single value (`one`) or multiple values (`many`).
      # Defaults to `one`.
      #
      # @see Moonbase::Models::StageFieldCreateParams#cardinality
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
