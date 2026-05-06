# frozen_string_literal: true

module Moonbase
  module Models
    module Collections
      # @see Moonbase::Resources::Collections::Fields#update
      class FieldUpdateParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        # @!attribute collection_id
        #
        #   @return [String]
        required :collection_id, String

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute field
        #   Parameters for updating a field, discriminated by `type`.
        #
        #   @return [Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextSingleLine, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextMultiLine, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberMonetary, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberPercentage, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldBoolean, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldEmail, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriURL, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriDomain, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialX, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTelephoneNumber, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldGeo, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDate, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDatetime, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice, Moonbase::Models::StageFieldUpdateParams, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation]
        required :field, union: -> { Moonbase::Collections::FieldUpdateParams::Field }

        # @!method initialize(collection_id:, id:, field:, request_options: {})
        #   @param collection_id [String]
        #
        #   @param id [String]
        #
        #   @param field [Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextSingleLine, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextMultiLine, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberMonetary, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberPercentage, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldBoolean, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldEmail, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriURL, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriDomain, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialX, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTelephoneNumber, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldGeo, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDate, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDatetime, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice, Moonbase::Models::StageFieldUpdateParams, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation] Parameters for updating a field, discriminated by `type`.
        #
        #   @param request_options [Moonbase::RequestOptions, Hash{Symbol=>Object}]

        # Parameters for updating a field, discriminated by `type`.
        module Field
          extend Moonbase::Internal::Type::Union

          discriminator :type

          # Parameters for updating a single-line text field.
          variant :"field/text/single_line",
                  -> { Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine }

          # Parameters for updating a multi-line text field.
          variant :"field/text/multi_line",
                  -> { Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine }

          # Parameters for updating an integer field.
          variant :"field/number/unitless_integer",
                  -> { Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger }

          # Parameters for updating a decimal number field.
          variant :"field/number/unitless_float",
                  -> { Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat }

          # Parameters for updating a monetary field.
          variant :"field/number/monetary",
                  -> { Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary }

          # Parameters for updating a percentage field.
          variant :"field/number/percentage",
                  -> { Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage }

          # Parameters for updating a boolean field.
          variant :"field/boolean", -> { Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean }

          # Parameters for updating an email field.
          variant :"field/email", -> { Moonbase::Collections::FieldUpdateParams::Field::FieldEmail }

          # Parameters for updating a URL field.
          variant :"field/uri/url", -> { Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL }

          # Parameters for updating a domain field.
          variant :"field/uri/domain", -> { Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain }

          # Parameters for updating an X (formerly Twitter) profile field.
          variant :"field/uri/social_x", -> { Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX }

          # Parameters for updating a LinkedIn profile field.
          variant :"field/uri/social_linked_in",
                  -> { Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn }

          # Parameters for updating a telephone number field.
          variant :"field/telephone_number",
                  -> { Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber }

          # Parameters for updating a geographic location field.
          variant :"field/geo", -> { Moonbase::Collections::FieldUpdateParams::Field::FieldGeo }

          # Parameters for updating a date field.
          variant :"field/date", -> { Moonbase::Collections::FieldUpdateParams::Field::FieldDate }

          # Parameters for updating a date and time field.
          variant :"field/datetime", -> { Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime }

          # Parameters for updating a choice field.
          variant :"field/choice", -> { Moonbase::Collections::FieldUpdateParams::Field::FieldChoice }

          # Parameters for updating a stage field.
          variant :"field/stage", -> { Moonbase::StageFieldUpdateParams }

          # Parameters for updating a relation field.
          variant :"field/relation", -> { Moonbase::Collections::FieldUpdateParams::Field::FieldRelation }

          class FieldTextSingleLine < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/text/single_line`.
            #
            #   @return [Symbol, :"field/text/single_line"]
            required :type, const: :"field/text/single_line"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::SingleLineTextValue>, nil]
            optional :default_values,
                     -> { Moonbase::Internal::Type::ArrayOf[Moonbase::SingleLineTextValue] },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/text/single_line")
            #   Parameters for updating a single-line text field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::SingleLineTextValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/text/single_line"] The field type. Must be `field/text/single_line`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextSingleLine#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldTextMultiLine < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/text/multi_line`.
            #
            #   @return [Symbol, :"field/text/multi_line"]
            required :type, const: :"field/text/multi_line"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::MultiLineTextValue>, nil]
            optional :default_values,
                     -> { Moonbase::Internal::Type::ArrayOf[Moonbase::MultiLineTextValue] },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/text/multi_line")
            #   Parameters for updating a multi-line text field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::MultiLineTextValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/text/multi_line"] The field type. Must be `field/text/multi_line`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextMultiLine#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldNumberUnitlessInteger < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/number/unitless_integer`.
            #
            #   @return [Symbol, :"field/number/unitless_integer"]
            required :type, const: :"field/number/unitless_integer"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::IntegerValue>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[Moonbase::IntegerValue]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/number/unitless_integer")
            #   Parameters for updating an integer field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::IntegerValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/number/unitless_integer"] The field type. Must be `field/number/unitless_integer`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldNumberUnitlessFloat < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/number/unitless_float`.
            #
            #   @return [Symbol, :"field/number/unitless_float"]
            required :type, const: :"field/number/unitless_float"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::FloatValue>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[Moonbase::FloatValue]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/number/unitless_float")
            #   Parameters for updating a decimal number field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::FloatValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/number/unitless_float"] The field type. Must be `field/number/unitless_float`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldNumberMonetary < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/number/monetary`.
            #
            #   @return [Symbol, :"field/number/monetary"]
            required :type, const: :"field/number/monetary"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality }

            # @!attribute default_unit
            #   The default currency for the field, as a 3-letter ISO 4217 code (e.g., `USD`,
            #   `EUR`, `GBP`).
            #
            #   @return [String, nil]
            optional :default_unit, String

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::MonetaryValue>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[Moonbase::MonetaryValue]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_unit: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/number/monetary")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberMonetary}
            #   for more details.
            #
            #   Parameters for updating a monetary field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_unit [String] The default currency for the field, as a 3-letter ISO 4217 code (e.g., `USD`, `E
            #
            #   @param default_values [Array<Moonbase::Models::MonetaryValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/number/monetary"] The field type. Must be `field/number/monetary`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberMonetary#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldNumberPercentage < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/number/percentage`.
            #
            #   @return [Symbol, :"field/number/percentage"]
            required :type, const: :"field/number/percentage"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::PercentageValue>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[Moonbase::PercentageValue]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/number/percentage")
            #   Parameters for updating a percentage field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::PercentageValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/number/percentage"] The field type. Must be `field/number/percentage`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberPercentage#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldBoolean < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/boolean`.
            #
            #   @return [Symbol, :"field/boolean"]
            required :type, const: :"field/boolean"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::BooleanValue>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[Moonbase::BooleanValue]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/boolean")
            #   Parameters for updating a boolean field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::BooleanValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/boolean"] The field type. Must be `field/boolean`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldBoolean#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldEmail < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/email`.
            #
            #   @return [Symbol, :"field/email"]
            required :type, const: :"field/email"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::EmailValue>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[Moonbase::EmailValue]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/email")
            #   Parameters for updating an email field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::EmailValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/email"] The field type. Must be `field/email`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldEmail#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldUriURL < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/uri/url`.
            #
            #   @return [Symbol, :"field/uri/url"]
            required :type, const: :"field/uri/url"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::URLValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::URLValue] }, nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/uri/url")
            #   Parameters for updating a URL field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::URLValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/uri/url"] The field type. Must be `field/uri/url`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriURL#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldUriDomain < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/uri/domain`.
            #
            #   @return [Symbol, :"field/uri/domain"]
            required :type, const: :"field/uri/domain"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::DomainValue>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[Moonbase::DomainValue]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/uri/domain")
            #   Parameters for updating a domain field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::DomainValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/uri/domain"] The field type. Must be `field/uri/domain`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriDomain#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldUriSocialX < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/uri/social_x`.
            #
            #   @return [Symbol, :"field/uri/social_x"]
            required :type, const: :"field/uri/social_x"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::SocialXValueParam>, nil]
            optional :default_values,
                     -> { Moonbase::Internal::Type::ArrayOf[Moonbase::SocialXValueParam] },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/uri/social_x")
            #   Parameters for updating an X (formerly Twitter) profile field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::SocialXValueParam>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/uri/social_x"] The field type. Must be `field/uri/social_x`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialX#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldUriSocialLinkedIn < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/uri/social_linked_in`.
            #
            #   @return [Symbol, :"field/uri/social_linked_in"]
            required :type, const: :"field/uri/social_linked_in"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::SocialLinkedInValueParam>, nil]
            optional :default_values,
                     -> { Moonbase::Internal::Type::ArrayOf[Moonbase::SocialLinkedInValueParam] },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/uri/social_linked_in")
            #   Parameters for updating a LinkedIn profile field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::SocialLinkedInValueParam>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/uri/social_linked_in"] The field type. Must be `field/uri/social_linked_in`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldTelephoneNumber < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/telephone_number`.
            #
            #   @return [Symbol, :"field/telephone_number"]
            required :type, const: :"field/telephone_number"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::TelephoneNumber>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[Moonbase::TelephoneNumber]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/telephone_number")
            #   Parameters for updating a telephone number field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::TelephoneNumber>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/telephone_number"] The field type. Must be `field/telephone_number`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTelephoneNumber#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldGeo < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/geo`.
            #
            #   @return [Symbol, :"field/geo"]
            required :type, const: :"field/geo"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality, nil]
            optional :cardinality, enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::GeoValue>, nil]
            optional :default_values, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::GeoValue] }, nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/geo")
            #   Parameters for updating a geographic location field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::GeoValue>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/geo"] The field type. Must be `field/geo`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldGeo#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldDate < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/date`.
            #
            #   @return [Symbol, :"field/date"]
            required :type, const: :"field/date"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDate::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldDate::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::DateValue, Moonbase::Models::CurrentDate>, nil]
            optional :default_values,
                     -> { Moonbase::Internal::Type::ArrayOf[union: Moonbase::DateFieldDefaultValueParam] },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/date")
            #   Parameters for updating a date field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDate::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::DateValue, Moonbase::Models::CurrentDate>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/date"] The field type. Must be `field/date`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDate#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldDatetime < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/datetime`.
            #
            #   @return [Symbol, :"field/datetime"]
            required :type, const: :"field/datetime"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::DatetimeValue, Moonbase::Models::CurrentDatetime>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[union: Moonbase::DatetimeFieldDefaultValueParam]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, required: nil, unique: nil, type: :"field/datetime")
            #   Parameters for updating a date and time field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::DatetimeValue, Moonbase::Models::CurrentDatetime>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/datetime"] The field type. Must be `field/datetime`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDatetime#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class FieldChoice < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/choice`.
            #
            #   @return [Symbol, :"field/choice"]
            required :type, const: :"field/choice"

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::ChoiceValueParam>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[Moonbase::ChoiceValueParam]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute name
            #   The new name for the field.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute options
            #   The complete set of options for this field. Omit to leave unchanged. Array order
            #   determines display order.
            #
            #   @return [Array<Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice::Option>, nil]
            optional :options,
                     -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option] }

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

            # @!method initialize(cardinality: nil, default_values: nil, description: nil, name: nil, options: nil, required: nil, unique: nil, type: :"field/choice")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice} for more
            #   details.
            #
            #   Parameters for updating a choice field.
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::ChoiceValueParam>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param options [Array<Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice::Option>] The complete set of options for this field. Omit to leave unchanged. Array order
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
            #
            #   @param type [Symbol, :"field/choice"] The field type. Must be `field/choice`.

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class Option < Moonbase::Internal::Type::BaseModel
              # @!attribute color
              #   The color of the option.
              #
              #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color]
              required :color, enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color }

              # @!attribute name
              #   The display name of the option.
              #
              #   @return [String]
              required :name, String

              # @!attribute id
              #   The ID of an existing option to update. When absent, a new option is created.
              #
              #   @return [String, nil]
              optional :id, String

              # @!method initialize(color:, name:, id: nil)
              #   A choice field option. Items with an `id` update existing options; items without
              #   an `id` are added as new options.
              #
              #   @param color [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color] The color of the option.
              #
              #   @param name [String] The display name of the option.
              #
              #   @param id [String] The ID of an existing option to update. When absent, a new option is created.

              # The color of the option.
              #
              # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice::Option#color
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
          end

          class FieldRelation < Moonbase::Internal::Type::BaseModel
            # @!attribute type
            #   The field type. Must be `field/relation`.
            #
            #   @return [Symbol, :"field/relation"]
            required :type, const: :"field/relation"

            # @!attribute allowed_collections
            #   The complete set of allowed collections. Omit to leave unchanged. Array replaces
            #   the current set.
            #
            #   @return [Array<Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation::AllowedCollection>, nil]
            optional :allowed_collections,
                     -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::AllowedCollection] }

            # @!attribute cardinality
            #   Updated cardinality: `one` or `many`.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality, nil]
            optional :cardinality,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality }

            # @!attribute default_values
            #
            #   @return [Array<Moonbase::Models::RelationValueParam, Moonbase::Models::CurrentMember>, nil]
            optional :default_values,
                     -> {
                       Moonbase::Internal::Type::ArrayOf[union: Moonbase::RelationFieldDefaultValueParam]
                     },
                     nil?: true

            # @!attribute description
            #   An updated description, or `null` to clear it.
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute name
            #   The new name for the field.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute relation_type
            #   The type of relationship: `one_way` for simple references, or `two_way` for
            #   bidirectional relationships.
            #
            #   @return [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation::RelationType, nil]
            optional :relation_type,
                     enum: -> { Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::RelationType }

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

            # @!method initialize(allowed_collections: nil, cardinality: nil, default_values: nil, description: nil, name: nil, relation_type: nil, required: nil, unique: nil, type: :"field/relation")
            #   Some parameter documentations has been truncated, see
            #   {Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation} for
            #   more details.
            #
            #   Parameters for updating a relation field.
            #
            #   @param allowed_collections [Array<Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation::AllowedCollection>] The complete set of allowed collections. Omit to leave unchanged. Array replaces
            #
            #   @param cardinality [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality] Updated cardinality: `one` or `many`.
            #
            #   @param default_values [Array<Moonbase::Models::RelationValueParam, Moonbase::Models::CurrentMember>, nil]
            #
            #   @param description [String, nil] An updated description, or `null` to clear it.
            #
            #   @param name [String] The new name for the field.
            #
            #   @param relation_type [Symbol, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation::RelationType] The type of relationship: `one_way` for simple references, or `two_way` for bidi
            #
            #   @param required [Boolean] If `true`, items must have a value for this field.
            #
            #   @param unique [Boolean] If `true`, values must be unique across all items.
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

            # Updated cardinality: `one` or `many`.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation#cardinality
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              ONE = :one
              MANY = :many

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The type of relationship: `one_way` for simple references, or `two_way` for
            # bidirectional relationships.
            #
            # @see Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation#relation_type
            module RelationType
              extend Moonbase::Internal::Type::Enum

              ONE_WAY = :one_way
              TWO_WAY = :two_way

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextSingleLine, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTextMultiLine, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberMonetary, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldNumberPercentage, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldBoolean, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldEmail, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriURL, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriDomain, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialX, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldTelephoneNumber, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldGeo, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDate, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldDatetime, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldChoice, Moonbase::Models::StageFieldUpdateParams, Moonbase::Models::Collections::FieldUpdateParams::Field::FieldRelation)]
        end
      end
    end
  end
end
