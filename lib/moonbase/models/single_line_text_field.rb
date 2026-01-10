# frozen_string_literal: true

module Moonbase
  module Models
    class SingleLineTextField < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute cardinality
      #   Specifies whether the field can hold a single value (`one`) or multiple values
      #   (`many`).
      #
      #   @return [Symbol, Moonbase::Models::SingleLineTextField::Cardinality]
      required :cardinality, enum: -> { Moonbase::SingleLineTextField::Cardinality }

      # @!attribute core
      #   If `true`, this is a built-in field included by default.
      #
      #   @return [Boolean]
      required :core, Moonbase::Internal::Type::Boolean

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   The human-readable name of the field (e.g., "Company Name").
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
      #   collection (e.g., `company_name`).
      #
      #   @return [String]
      required :ref, String

      # @!attribute required
      #   If `true`, this field must have a value.
      #
      #   @return [Boolean]
      required :required, Moonbase::Internal::Type::Boolean

      # @!attribute type
      #   The data type of the field. Always `field/text/single_line` for this field.
      #
      #   @return [Symbol, :"field/text/single_line"]
      required :type, const: :"field/text/single_line"

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

      # @!method initialize(id:, cardinality:, core:, created_at:, name:, readonly:, ref:, required:, unique:, updated_at:, description: nil, type: :"field/text/single_line")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::SingleLineTextField} for more details.
      #
      #   A field that stores a single line of text without line breaks.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param cardinality [Symbol, Moonbase::Models::SingleLineTextField::Cardinality] Specifies whether the field can hold a single value (`one`) or multiple values (
      #
      #   @param core [Boolean] If `true`, this is a built-in field included by default.
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param name [String] The human-readable name of the field (e.g., "Company Name").
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
      #   @param type [Symbol, :"field/text/single_line"] The data type of the field. Always `field/text/single_line` for this field.

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      #
      # @see Moonbase::Models::SingleLineTextField#cardinality
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
