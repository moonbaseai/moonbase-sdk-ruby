# frozen_string_literal: true

module Moonbase
  module Models
    class FloatField < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute cardinality
      #   Specifies whether the field can hold a single value (`one`) or multiple values
      #   (`many`).
      #
      #   @return [Symbol, Moonbase::Models::FloatField::Cardinality]
      required :cardinality, enum: -> { Moonbase::FloatField::Cardinality }

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   The human-readable name of the field (e.g., "Rating").
      #
      #   @return [String]
      required :name, String

      # @!attribute readonly
      #   If `true`, the value of this field is system-managed and cannot be updated via
      #   the API.
      #
      #   @return [Boolean]
      required :readonly, Moonbase::Internal::Type::Boolean

      # @!attribute ref
      #   A unique, stable, machine-readable identifier for the field within its
      #   collection (e.g., `rating`).
      #
      #   @return [String]
      required :ref, String

      # @!attribute required
      #   If `true`, this field must have a value.
      #
      #   @return [Boolean]
      required :required, Moonbase::Internal::Type::Boolean

      # @!attribute type
      #   The data type of the field. Always `field/number/unitless_float` for this field.
      #
      #   @return [Symbol, :"field/number/unitless_float"]
      required :type, const: :"field/number/unitless_float"

      # @!attribute unique
      #   If `true`, values for this field must be unique across all items in the
      #   collection.
      #
      #   @return [Boolean]
      required :unique, Moonbase::Internal::Type::Boolean

      # @!attribute updated_at
      #   Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   An optional, longer-form description of the field's purpose.
      #
      #   @return [String, nil]
      optional :description, String

      # @!method initialize(id:, cardinality:, created_at:, name:, readonly:, ref:, required:, unique:, updated_at:, description: nil, type: :"field/number/unitless_float")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::FloatField} for more details.
      #
      #   A field that stores decimal numbers with floating-point precision.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param cardinality [Symbol, Moonbase::Models::FloatField::Cardinality] Specifies whether the field can hold a single value (`one`) or multiple values (
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param name [String] The human-readable name of the field (e.g., "Rating").
      #
      #   @param readonly [Boolean] If `true`, the value of this field is system-managed and cannot be updated via t
      #
      #   @param ref [String] A unique, stable, machine-readable identifier for the field within its collectio
      #
      #   @param required [Boolean] If `true`, this field must have a value.
      #
      #   @param unique [Boolean] If `true`, values for this field must be unique across all items in the collecti
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param description [String] An optional, longer-form description of the field's purpose.
      #
      #   @param type [Symbol, :"field/number/unitless_float"] The data type of the field. Always `field/number/unitless_float` for this field.

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      #
      # @see Moonbase::Models::FloatField#cardinality
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
