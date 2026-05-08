# frozen_string_literal: true

module Moonbase
  module Models
    class RelationField < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute allowed_collections
      #   The set of collections that are valid targets for this relation.
      #
      #   @return [Array<Moonbase::Models::CollectionPointer>]
      required :allowed_collections, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::CollectionPointer] }

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

      # @!attribute default_values
      #
      #   @return [Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IdentifierValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::CurrentDate, Moonbase::Models::DatetimeValue, Moonbase::Models::CurrentDatetime, Moonbase::Models::ChoiceValue, Moonbase::Models::FunnelStepValue, Moonbase::Models::RelationValue, Moonbase::Models::CurrentMember>]
      required :default_values, -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::FieldDefaultValue] }

      # @!attribute kind
      #   `system` fields are managed by Moonbase, `inverse` fields are the reverse side
      #   of a two-way relation, and `custom` fields are user-created.
      #
      #   @return [Symbol, Moonbase::Models::RelationField::Kind]
      required :kind, enum: -> { Moonbase::RelationField::Kind }

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

      # @!attribute reverse_field_name
      #   The name given to auto-created reverse fields on target collections. Only
      #   present on `two_way` source fields.
      #
      #   @return [String, nil]
      optional :reverse_field_name, String

      # @!attribute reverse_fields
      #   A list of reverse fields created on each target collection. Only present on
      #   `two_way` source fields.
      #
      #   @return [Array<Moonbase::Models::FieldPointer>, nil]
      optional :reverse_fields, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::FieldPointer] }

      # @!attribute source_field
      #   A reference to the source field that manages this reverse field. Only present on
      #   reverse (contingent) fields.
      #
      #   @return [Moonbase::Models::FieldPointer, nil]
      optional :source_field, -> { Moonbase::FieldPointer }

      # @!method initialize(id:, allowed_collections:, cardinality:, created_at:, default_values:, kind:, name:, readonly:, ref:, relation_type:, required:, unique:, updated_at:, description: nil, reverse_field_name: nil, reverse_fields: nil, source_field: nil, type: :"field/relation")
      #   Some parameter documentations has been truncated, see
      #   {Moonbase::Models::RelationField} for more details.
      #
      #   A field that creates a link between items in different collections, enabling
      #   cross-collection relationships.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param allowed_collections [Array<Moonbase::Models::CollectionPointer>] The set of collections that are valid targets for this relation.
      #
      #   @param cardinality [Symbol, Moonbase::Models::RelationField::Cardinality] Specifies whether the field can hold a single value (`one`) or multiple values (
      #
      #   @param created_at [Time] Time at which the object was created, as an ISO 8601 timestamp in UTC.
      #
      #   @param default_values [Array<Moonbase::Models::SingleLineTextValue, Moonbase::Models::MultiLineTextValue, Moonbase::Models::IdentifierValue, Moonbase::Models::IntegerValue, Moonbase::Models::FloatValue, Moonbase::Models::MonetaryValue, Moonbase::Models::PercentageValue, Moonbase::Models::BooleanValue, Moonbase::Models::EmailValue, Moonbase::Models::URLValue, Moonbase::Models::DomainValue, Moonbase::Models::SocialXValue, Moonbase::Models::SocialLinkedInValue, Moonbase::Models::TelephoneNumber, Moonbase::Models::GeoValue, Moonbase::Models::DateValue, Moonbase::Models::CurrentDate, Moonbase::Models::DatetimeValue, Moonbase::Models::CurrentDatetime, Moonbase::Models::ChoiceValue, Moonbase::Models::FunnelStepValue, Moonbase::Models::RelationValue, Moonbase::Models::CurrentMember>]
      #
      #   @param kind [Symbol, Moonbase::Models::RelationField::Kind] `system` fields are managed by Moonbase, `inverse` fields are the reverse side o
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
      #   @param reverse_field_name [String] The name given to auto-created reverse fields on target collections. Only presen
      #
      #   @param reverse_fields [Array<Moonbase::Models::FieldPointer>] A list of reverse fields created on each target collection. Only present on `two
      #
      #   @param source_field [Moonbase::Models::FieldPointer] A reference to the source field that manages this reverse field. Only present on
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

      # `system` fields are managed by Moonbase, `inverse` fields are the reverse side
      # of a two-way relation, and `custom` fields are user-created.
      #
      # @see Moonbase::Models::RelationField#kind
      module Kind
        extend Moonbase::Internal::Type::Enum

        SYSTEM = :system
        INVERSE = :inverse
        CUSTOM = :custom

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
