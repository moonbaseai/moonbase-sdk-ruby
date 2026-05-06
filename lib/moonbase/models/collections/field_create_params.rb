# frozen_string_literal: true

module Moonbase
  module Models
    module Collections
      # @see Moonbase::Resources::Collections::Fields#create
      class FieldCreateParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        # @!attribute collection_id
        #
        #   @return [String]
        required :collection_id, String

        # @!attribute field
        #   Parameters for creating a field, discriminated by `type`.
        #
        #   @return [Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextSingleLine, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextMultiLine, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberMonetary, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberPercentage, Moonbase::Models::Collections::FieldCreateParams::Field::FieldBoolean, Moonbase::Models::Collections::FieldCreateParams::Field::FieldEmail, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriURL, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriDomain, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialX, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTelephoneNumber, Moonbase::Models::Collections::FieldCreateParams::Field::FieldGeo, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDate, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDatetime, Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice, Moonbase::Models::StageFieldCreateParams, Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation]
        required :field, union: -> { Moonbase::Collections::FieldCreateParams::Field }

        # @!method initialize(collection_id:, field:, request_options: {})
        #   @param collection_id [String]
        #
        #   @param field [Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextSingleLine, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextMultiLine, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberMonetary, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberPercentage, Moonbase::Models::Collections::FieldCreateParams::Field::FieldBoolean, Moonbase::Models::Collections::FieldCreateParams::Field::FieldEmail, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriURL, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriDomain, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialX, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTelephoneNumber, Moonbase::Models::Collections::FieldCreateParams::Field::FieldGeo, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDate, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDatetime, Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice, Moonbase::Models::StageFieldCreateParams, Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation] Parameters for creating a field, discriminated by `type`.
        #
        #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

        # Parameters for creating a field, discriminated by `type`.
        module Field
          extend Moonbase::Internal::Type::Union

          discriminator :type

          # Parameters for creating a single-line text field.
          variant :"field/text/single_line",
                  -> { Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine }

          # Parameters for creating a multi-line text field.
          variant :"field/text/multi_line",
                  -> { Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine }

          # Parameters for creating an integer field.
          variant :"field/number/unitless_integer",
                  -> { Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger }

          # Parameters for creating a decimal number field.
          variant :"field/number/unitless_float",
                  -> { Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat }

          # Parameters for creating a monetary field.
          variant :"field/number/monetary",
                  -> { Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary }

          # Parameters for creating a percentage field.
          variant :"field/number/percentage",
                  -> { Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage }

          # Parameters for creating a boolean field.
          variant :"field/boolean", -> { Moonbase::Collections::FieldCreateParams::Field::FieldBoolean }

          # Parameters for creating an email field.
          variant :"field/email", -> { Moonbase::Collections::FieldCreateParams::Field::FieldEmail }

          # Parameters for creating a URL field.
          variant :"field/uri/url", -> { Moonbase::Collections::FieldCreateParams::Field::FieldUriURL }

          # Parameters for creating a domain field.
          variant :"field/uri/domain", -> { Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain }

          # Parameters for creating an X (formerly Twitter) profile field.
          variant :"field/uri/social_x", -> { Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX }

          # Parameters for creating a LinkedIn profile field.
          variant :"field/uri/social_linked_in",
                  -> { Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn }

          # Parameters for creating a telephone number field.
          variant :"field/telephone_number",
                  -> { Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber }

          # Parameters for creating a geographic location field.
          variant :"field/geo", -> { Moonbase::Collections::FieldCreateParams::Field::FieldGeo }

          # Parameters for creating a date field.
          variant :"field/date", -> { Moonbase::Collections::FieldCreateParams::Field::FieldDate }

          # Parameters for creating a date and time field.
          variant :"field/datetime", -> { Moonbase::Collections::FieldCreateParams::Field::FieldDatetime }

          # Parameters for creating a choice field with predefined options.
          variant :"field/choice", -> { Moonbase::Collections::FieldCreateParams::Field::FieldChoice }

          # Parameters for creating a stage field.
          variant :"field/stage", -> { Moonbase::StageFieldCreateParams }

          # Parameters for creating a relation field that links items across collections.
          variant :"field/relation", -> { Moonbase::Collections::FieldCreateParams::Field::FieldRelation }

          class FieldTextSingleLine < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/text/single_line`.
            #
            #   @return [Symbol, :"field/text/single_line"]
            required :type, const: :"field/text/single_line"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::SingleLineTextValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::SingleLineTextValue] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/text/single_line")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextSingleLine}
            #   for more details.
            #
            #   Parameters for creating a single-line text field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::SingleLineTextValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/text/single_line"] The field type. Must be `field/text/single_line`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextSingleLine#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldTextMultiLine < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/text/multi_line`.
            #
            #   @return [Symbol, :"field/text/multi_line"]
            required :type, const: :"field/text/multi_line"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::MultiLineTextValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::MultiLineTextValue] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/text/multi_line")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextMultiLine}
            #   for more details.
            #
            #   Parameters for creating a multi-line text field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::MultiLineTextValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/text/multi_line"] The field type. Must be `field/text/multi_line`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextMultiLine#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldNumberUnitlessInteger < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/number/unitless_integer`.
            #
            #   @return [Symbol, :"field/number/unitless_integer"]
            required :type, const: :"field/number/unitless_integer"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::IntegerValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::IntegerValue] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/number/unitless_integer")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger}
            #   for more details.
            #
            #   Parameters for creating an integer field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::IntegerValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/number/unitless_integer"] The field type. Must be `field/number/unitless_integer`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldNumberUnitlessFloat < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/number/unitless_float`.
            #
            #   @return [Symbol, :"field/number/unitless_float"]
            required :type, const: :"field/number/unitless_float"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::FloatValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::FloatValue] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/number/unitless_float")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat}
            #   for more details.
            #
            #   Parameters for creating a decimal number field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::FloatValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/number/unitless_float"] The field type. Must be `field/number/unitless_float`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldNumberMonetary < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/number/monetary`.
            #
            #   @return [Symbol, :"field/number/monetary"]
            required :type, const: :"field/number/monetary"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality }

            # @!attribute default_unit
            #   The default currency for the field, as a 3-letter ISO 4217 code (e.g., `USD`,
            #   `EUR`, `GBP`).
            #
            #   @return [String, nil]
            optional :default_unit, String

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::MonetaryValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::MonetaryValue] }

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

            # @!method initialize(name:, cardinality: nil, default_unit: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/number/monetary")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberMonetary}
            #   for more details.
            #
            #   Parameters for creating a monetary field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_unit [String] The default currency for the field, as a 3-letter ISO 4217 code (e.g., `USD`, `E
            #
            #   @param default_values [Array<Moonbase::Models::MonetaryValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/number/monetary"] The field type. Must be `field/number/monetary`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberMonetary#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldNumberPercentage < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/number/percentage`.
            #
            #   @return [Symbol, :"field/number/percentage"]
            required :type, const: :"field/number/percentage"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::PercentageValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::PercentageValue] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/number/percentage")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberPercentage}
            #   for more details.
            #
            #   Parameters for creating a percentage field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::PercentageValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/number/percentage"] The field type. Must be `field/number/percentage`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberPercentage#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldBoolean < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/boolean`.
            #
            #   @return [Symbol, :"field/boolean"]
            required :type, const: :"field/boolean"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::BooleanValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::BooleanValue] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/boolean")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldBoolean} for more
            #   details.
            #
            #   Parameters for creating a boolean field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::BooleanValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/boolean"] The field type. Must be `field/boolean`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldBoolean#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldEmail < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/email`.
            #
            #   @return [Symbol, :"field/email"]
            required :type, const: :"field/email"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldEmail::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldEmail::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::EmailValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::EmailValue] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/email")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldEmail} for more
            #   details.
            #
            #   Parameters for creating an email field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldEmail::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::EmailValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/email"] The field type. Must be `field/email`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldEmail#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldUriURL < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/uri/url`.
            #
            #   @return [Symbol, :"field/uri/url"]
            required :type, const: :"field/uri/url"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::URLValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::URLValue] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/uri/url")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriURL} for more
            #   details.
            #
            #   Parameters for creating a URL field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::URLValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/uri/url"] The field type. Must be `field/uri/url`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriURL#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldUriDomain < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/uri/domain`.
            #
            #   @return [Symbol, :"field/uri/domain"]
            required :type, const: :"field/uri/domain"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::DomainValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::DomainValue] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/uri/domain")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriDomain} for
            #   more details.
            #
            #   Parameters for creating a domain field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::DomainValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/uri/domain"] The field type. Must be `field/uri/domain`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriDomain#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldUriSocialX < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/uri/social_x`.
            #
            #   @return [Symbol, :"field/uri/social_x"]
            required :type, const: :"field/uri/social_x"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::SocialXValueParam>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::SocialXValueParam] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/uri/social_x")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialX} for
            #   more details.
            #
            #   Parameters for creating an X (formerly Twitter) profile field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::SocialXValueParam>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/uri/social_x"] The field type. Must be `field/uri/social_x`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialX#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldUriSocialLinkedIn < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/uri/social_linked_in`.
            #
            #   @return [Symbol, :"field/uri/social_linked_in"]
            required :type, const: :"field/uri/social_linked_in"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::SocialLinkedInValueParam>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::SocialLinkedInValueParam] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/uri/social_linked_in")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn}
            #   for more details.
            #
            #   Parameters for creating a LinkedIn profile field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::SocialLinkedInValueParam>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/uri/social_linked_in"] The field type. Must be `field/uri/social_linked_in`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldTelephoneNumber < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/telephone_number`.
            #
            #   @return [Symbol, :"field/telephone_number"]
            required :type, const: :"field/telephone_number"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::TelephoneNumber>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::TelephoneNumber] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/telephone_number")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldTelephoneNumber}
            #   for more details.
            #
            #   Parameters for creating a telephone number field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::TelephoneNumber>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/telephone_number"] The field type. Must be `field/telephone_number`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldTelephoneNumber#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldGeo < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/geo`.
            #
            #   @return [Symbol, :"field/geo"]
            required :type, const: :"field/geo"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldGeo::Cardinality, nil]
            optional :cardinality, enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldGeo::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::GeoValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::GeoValue] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/geo")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldGeo} for more
            #   details.
            #
            #   Parameters for creating a geographic location field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldGeo::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::GeoValue>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/geo"] The field type. Must be `field/geo`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldGeo#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldDate < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/date`.
            #
            #   @return [Symbol, :"field/date"]
            required :type, const: :"field/date"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDate::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldDate::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::DateValue, Moonbase::Models::CurrentDate>, nil]
            optional :default_values,
                     -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::DateFieldDefaultValueParam] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/date")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldDate} for more
            #   details.
            #
            #   Parameters for creating a date field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDate::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::DateValue, Moonbase::Models::CurrentDate>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/date"] The field type. Must be `field/date`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldDate#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldDatetime < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The field type. Must be `field/datetime`.
            #
            #   @return [Symbol, :"field/datetime"]
            required :type, const: :"field/datetime"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::DatetimeValue, Moonbase::Models::CurrentDatetime>, nil]
            optional :default_values,
                     -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::DatetimeFieldDefaultValueParam] }

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

            # @!method initialize(name:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/datetime")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldDatetime} for
            #   more details.
            #
            #   Parameters for creating a date and time field.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::DatetimeValue, Moonbase::Models::CurrentDatetime>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/datetime"] The field type. Must be `field/datetime`.

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldDatetime#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldChoice < Moonbase::Internal::Type::BaseModel
            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute options
            #   A list of options to create for the field. Each option must have a `name`.
            #
            #   @return [Array<Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice::Option>]
            required :options,
                     -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option] }

            # @!attribute type
            #   The field type. Must be `field/choice`.
            #
            #   @return [Symbol, :"field/choice"]
            required :type, const: :"field/choice"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::ChoiceValueParam>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::ChoiceValueParam] }

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

            # @!method initialize(name:, options:, cardinality: nil, default_values: nil, description: nil, required: nil, unique: nil, type: :"field/choice")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice} for more
            #   details.
            #
            #   Parameters for creating a choice field with predefined options.
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param options [Array<Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice::Option>] A list of options to create for the field. Each option must have a `name`.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::ChoiceValueParam>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/choice"] The field type. Must be `field/choice`.

            class Option < Moonbase::Internal::Type::BaseModel
              # @!attribute color
              #   The color of the option.
              #
              #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice::Option::Color]
              required :color, enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color }

              # @!attribute name
              #   The display name of the option.
              #
              #   @return [String]
              required :name, String

              # @!method initialize(color:, name:)
              #   Parameters for defining an option in a choice field.
              #
              #   @param color [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice::Option::Color] The color of the option.
              #
              #   @param name [String] The display name of the option.

              # The color of the option.
              #
              # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice::Option#color
              module Color
                extend Moonbase::Internal::Type::Enum

                AMBER = :amber
                BLUE = :blue
                CYAN = :cyan
                EMERALD = :emerald
                FUCHSIA = :fuchsia
                GREEN = :green
                INDIGO = :indigo
                LIME = :lime
                LUNAR = :lunar
                ORANGE = :orange
                PINK = :pink
                PURPLE = :purple
                RED = :red
                ROSE = :rose
                SKY = :sky
                TEAL = :teal
                VIOLET = :violet
                YELLOW = :yellow

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldRelation < Moonbase::Internal::Type::BaseModel
            # @!attribute allowed_collections
            #   A list of collection IDs or `ref` values that are valid targets for this
            #   relation.
            #
            #   @return [Array<Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation::AllowedCollection>]
            required :allowed_collections,
                     -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Collections::FieldCreateParams::Field::FieldRelation::AllowedCollection] }

            # @!attribute name
            #   The human-readable name for the field.
            #
            #   @return [String]
            required :name, String

            # @!attribute relation_type
            #   The type of relationship: `one_way` for simple references, or `two_way` for
            #   bidirectional relationships.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation::RelationType]
            required :relation_type,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldRelation::RelationType }

            # @!attribute type
            #   The field type. Must be `field/relation`.
            #
            #   @return [Symbol, :"field/relation"]
            required :type, const: :"field/relation"

            # @!attribute cardinality
            #   Whether the field holds a single value (`one`) or multiple values (`many`).
            #   Defaults to `one`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldCreateParams::Field::FieldRelation::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::RelationValueParam, Moonbase::Models::CurrentMember>, nil]
            optional :default_values,
                     -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::RelationFieldDefaultValueParam] }

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

            # @!attribute reverse_field_name
            #   For `two_way` relations, the name of the reverse field created on the target
            #   collection.
            #
            #   @return [String, nil]
            optional :reverse_field_name, String

            # @!attribute unique
            #   If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @return [Boolean, nil]
            optional :unique, Moonbase::Internal::Type::Boolean

            # @!method initialize(allowed_collections:, name:, relation_type:, cardinality: nil, default_values: nil, description: nil, required: nil, reverse_field_name: nil, unique: nil, type: :"field/relation")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation} for
            #   more details.
            #
            #   Parameters for creating a relation field that links items across collections.
            #
            #   @param allowed_collections [Array<Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation::AllowedCollection>] A list of collection IDs or `ref` values that are valid targets for this relatio
            #
            #   @param name [String] The human-readable name for the field.
            #
            #   @param relation_type [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation::RelationType] The type of relationship: `one_way` for simple references, or `two_way` for bidi
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation::Cardinality] Whether the field holds a single value (`one`) or multiple values (`many`). Defa
            #
            #   @param default_values [Array<Moonbase::Models::RelationValueParam, Moonbase::Models::CurrentMember>]
            #
            #   @param description [String] An optional description of the field's purpose.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field. Defaults to `false`.
            #
            #   @param reverse_field_name [String] For `two_way` relations, the name of the reverse field created on the target col
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items. Defaults to `false`.
            #
            #   @param type [Symbol, :"field/relation"] The field type. Must be `field/relation`.

            class AllowedCollection < Moonbase::Internal::Type::BaseModel
              # @!attribute type
              #   String representing the object’s type. Always `collection` for this object.
              #
              #   @return [Symbol, :collection]
              required :type, const: :collection

              # @!attribute id
              #   Unique identifier of the collection.
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute ref
              #   The stable, machine-readable reference identifier of the collection.
              #
              #   @return [String, nil]
              optional :ref, String

              # @!method initialize(id: nil, ref: nil, type: :collection)
              #   A reference to a `Collection` used in request bodies. Provide at least one of
              #   `id` or `ref` to identify the collection.
              #
              #   @param id [String] Unique identifier of the collection.
              #
              #   @param ref [String] The stable, machine-readable reference identifier of the collection.
              #
              #   @param type [Symbol, :collection] String representing the object’s type. Always `collection` for this object.
            end

            # The type of relationship: `one_way` for simple references, or `two_way` for
            # bidirectional relationships.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation#relation_type
            module RelationType
              extend Moonbase::Internal::Type::Enum

              ONE_WAY = :one_way
              TWO_WAY = :two_way

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            #
            # @see Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextSingleLine, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTextMultiLine, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberMonetary, Moonbase::Models::Collections::FieldCreateParams::Field::FieldNumberPercentage, Moonbase::Models::Collections::FieldCreateParams::Field::FieldBoolean, Moonbase::Models::Collections::FieldCreateParams::Field::FieldEmail, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriURL, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriDomain, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialX, Moonbase::Models::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn, Moonbase::Models::Collections::FieldCreateParams::Field::FieldTelephoneNumber, Moonbase::Models::Collections::FieldCreateParams::Field::FieldGeo, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDate, Moonbase::Models::Collections::FieldCreateParams::Field::FieldDatetime, Moonbase::Models::Collections::FieldCreateParams::Field::FieldChoice, Moonbase::Models::StageFieldCreateParams, Moonbase::Models::Collections::FieldCreateParams::Field::FieldRelation)]
        end
      end
    end
  end
end
