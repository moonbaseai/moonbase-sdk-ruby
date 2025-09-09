# frozen_string_literal: true

module Moonbase
  module Models
    class RelationField < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute cardinality
      #   Specifies whether the field can hold a single value (`one`) or multiple values
      #   (`many`).
      #
      #   @return [Symbol, Moonbase::Models::RelationField::Cardinality]
      required :cardinality, enum: -> { Moonbase::RelationField::Cardinality }

      # @!attribute created_at
      #   Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   The human-readable name of the field (e.g., "Account").
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
      #   collection (e.g., `account`).
      #
      #   @return [String]
      required :ref, String

      # @!attribute relation_type
      #   The type of relationship. Can be `one_way` for simple references or `two_way`
      #   for bidirectional relationships.
      #
      #   @return [Symbol, Moonbase::Models::RelationField::RelationType]
      required :relation_type, enum: -> { Moonbase::RelationField::RelationType }

      # @!attribute required
      #   If `true`, this field must have a value.
      #
      #   @return [Boolean]
      required :required, Moonbase::Internal::Type::Boolean

      # @!attribute type
      #   The data type of the field. Always `field/relation` for this field.
      #
      #   @return [Symbol, :"field/relation"]
      required :type, const: :"field/relation"

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

      # @!method initialize(id:, cardinality:, created_at:, name:, readonly:, ref:, relation_type:, required:, unique:, updated_at:, description: nil, type: :"field/relation")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::RelationField} for more details.
      #
      #   A field that creates a link between items in different collections, enabling
      #   cross-collection relationships.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param cardinality [Symbol, Moonbase::Models::RelationField::Cardinality] Specifies whether the field can hold a single value (`one`) or multiple values (
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param name [String] The human-readable name of the field (e.g., "Account").
      #
      #   @param readonly [Boolean] If `true`, the value of this field is system-managed and cannot be updated via t
      #
      #   @param ref [String] A unique, stable, machine-readable identifier for the field within its collectio
      #
      #   @param relation_type [Symbol, Moonbase::Models::RelationField::RelationType] The type of relationship. Can be `one_way` for simple references or `two_way` fo
      #
      #   @param required [Boolean] If `true`, this field must have a value.
      #
      #   @param unique [Boolean] If `true`, values for this field must be unique across all items in the collecti
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      #
      #   @param description [String] An optional, longer-form description of the field's purpose.
      #
      #   @param type [Symbol, :"field/relation"] The data type of the field. Always `field/relation` for this field.

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      #
      # @see Moonbase::Models::RelationField#cardinality
      module Cardinality
        extend Moonbase::Internal::Type::Enum

        ONE = :one
        MANY = :many

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of relationship. Can be `one_way` for simple references or `two_way`
      # for bidirectional relationships.
      #
      # @see Moonbase::Models::RelationField#relation_type
      module RelationType
        extend Moonbase::Internal::Type::Enum

        ONE_WAY = :one_way
        TWO_WAY = :two_way

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
