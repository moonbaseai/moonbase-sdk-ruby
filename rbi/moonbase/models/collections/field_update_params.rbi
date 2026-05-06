# typed: strong

module Moonbase
  module Models
    module Collections
      class FieldUpdateParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Collections::FieldUpdateParams,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :collection_id

        sig { returns(String) }
        attr_accessor :id

        # Parameters for updating a field, discriminated by `type`.
        sig do
          returns(
            T.any(
              Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine,
              Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine,
              Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger,
              Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat,
              Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary,
              Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage,
              Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean,
              Moonbase::Collections::FieldUpdateParams::Field::FieldEmail,
              Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL,
              Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain,
              Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX,
              Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn,
              Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber,
              Moonbase::Collections::FieldUpdateParams::Field::FieldGeo,
              Moonbase::Collections::FieldUpdateParams::Field::FieldDate,
              Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime,
              Moonbase::Collections::FieldUpdateParams::Field::FieldChoice,
              Moonbase::StageFieldUpdateParams,
              Moonbase::Collections::FieldUpdateParams::Field::FieldRelation
            )
          )
        end
        attr_accessor :field

        sig do
          params(
            collection_id: String,
            id: String,
            field:
              T.any(
                Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldDate::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::OrHash,
                Moonbase::StageFieldUpdateParams::OrHash,
                Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::OrHash
              ),
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          collection_id:,
          id:,
          # Parameters for updating a field, discriminated by `type`.
          field:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              collection_id: String,
              id: String,
              field:
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldEmail,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldGeo,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDate,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldChoice,
                  Moonbase::StageFieldUpdateParams,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation
                ),
              request_options: Moonbase::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Parameters for updating a field, discriminated by `type`.
        module Field
          extend Moonbase::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine,
                Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary,
                Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage,
                Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean,
                Moonbase::Collections::FieldUpdateParams::Field::FieldEmail,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX,
                Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn,
                Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber,
                Moonbase::Collections::FieldUpdateParams::Field::FieldGeo,
                Moonbase::Collections::FieldUpdateParams::Field::FieldDate,
                Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime,
                Moonbase::Collections::FieldUpdateParams::Field::FieldChoice,
                Moonbase::StageFieldUpdateParams,
                Moonbase::Collections::FieldUpdateParams::Field::FieldRelation
              )
            end

          class FieldTextSingleLine < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/text/single_line`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::SingleLineTextValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a single-line text field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::SingleLineTextValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/text/single_line`.
              type: :"field/text/single_line"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality::OrSymbol,
                  default_values:
                    T.nilable(T::Array[Moonbase::SingleLineTextValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldTextSingleLine::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldTextMultiLine < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/text/multi_line`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::MultiLineTextValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a multi-line text field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::MultiLineTextValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/text/multi_line`.
              type: :"field/text/multi_line"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality::OrSymbol,
                  default_values:
                    T.nilable(T::Array[Moonbase::MultiLineTextValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldTextMultiLine::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldNumberUnitlessInteger < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/number/unitless_integer`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::IntegerValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating an integer field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::IntegerValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/number/unitless_integer`.
              type: :"field/number/unitless_integer"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality::OrSymbol,
                  default_values: T.nilable(T::Array[Moonbase::IntegerValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessInteger::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldNumberUnitlessFloat < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/number/unitless_float`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::FloatValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a decimal number field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::FloatValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/number/unitless_float`.
              type: :"field/number/unitless_float"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality::OrSymbol,
                  default_values: T.nilable(T::Array[Moonbase::FloatValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberUnitlessFloat::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldNumberMonetary < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/number/monetary`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            # The default currency for the field, as a 3-letter ISO 4217 code (e.g., `USD`,
            # `EUR`, `GBP`).
            sig { returns(T.nilable(String)) }
            attr_reader :default_unit

            sig { params(default_unit: String).void }
            attr_writer :default_unit

            sig { returns(T.nilable(T::Array[Moonbase::MonetaryValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a monetary field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality::OrSymbol,
                default_unit: String,
                default_values:
                  T.nilable(T::Array[Moonbase::MonetaryValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              # The default currency for the field, as a 3-letter ISO 4217 code (e.g., `USD`,
              # `EUR`, `GBP`).
              default_unit: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/number/monetary`.
              type: :"field/number/monetary"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality::OrSymbol,
                  default_unit: String,
                  default_values: T.nilable(T::Array[Moonbase::MonetaryValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberMonetary::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldNumberPercentage < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/number/percentage`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::PercentageValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a percentage field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::PercentageValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/number/percentage`.
              type: :"field/number/percentage"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality::OrSymbol,
                  default_values:
                    T.nilable(T::Array[Moonbase::PercentageValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldNumberPercentage::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldBoolean < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/boolean`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::BooleanValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a boolean field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::BooleanValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/boolean`.
              type: :"field/boolean"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality::OrSymbol,
                  default_values: T.nilable(T::Array[Moonbase::BooleanValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldBoolean::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldEmail < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldEmail,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/email`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::EmailValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating an email field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::EmailValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/email`.
              type: :"field/email"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality::OrSymbol,
                  default_values: T.nilable(T::Array[Moonbase::EmailValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldEmail::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldUriURL < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/uri/url`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::URLValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a URL field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality::OrSymbol,
                default_values: T.nilable(T::Array[Moonbase::URLValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/uri/url`.
              type: :"field/uri/url"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality::OrSymbol,
                  default_values: T.nilable(T::Array[Moonbase::URLValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriURL::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldUriDomain < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/uri/domain`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::DomainValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a domain field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::DomainValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/uri/domain`.
              type: :"field/uri/domain"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality::OrSymbol,
                  default_values: T.nilable(T::Array[Moonbase::DomainValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriDomain::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldUriSocialX < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/uri/social_x`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::SocialXValueParam])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating an X (formerly Twitter) profile field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::SocialXValueParam::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/uri/social_x`.
              type: :"field/uri/social_x"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality::OrSymbol,
                  default_values:
                    T.nilable(T::Array[Moonbase::SocialXValueParam]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialX::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldUriSocialLinkedIn < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/uri/social_linked_in`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig do
              returns(T.nilable(T::Array[Moonbase::SocialLinkedInValueParam]))
            end
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a LinkedIn profile field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality::OrSymbol,
                default_values:
                  T.nilable(
                    T::Array[Moonbase::SocialLinkedInValueParam::OrHash]
                  ),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/uri/social_linked_in`.
              type: :"field/uri/social_linked_in"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality::OrSymbol,
                  default_values:
                    T.nilable(T::Array[Moonbase::SocialLinkedInValueParam]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldUriSocialLinkedIn::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldTelephoneNumber < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/telephone_number`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::TelephoneNumber])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a telephone number field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::TelephoneNumber::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/telephone_number`.
              type: :"field/telephone_number"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality::OrSymbol,
                  default_values:
                    T.nilable(T::Array[Moonbase::TelephoneNumber]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldTelephoneNumber::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldGeo < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldGeo,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/geo`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::GeoValue])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a geographic location field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality::OrSymbol,
                default_values: T.nilable(T::Array[Moonbase::GeoValue::OrHash]),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/geo`.
              type: :"field/geo"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality::OrSymbol,
                  default_values: T.nilable(T::Array[Moonbase::GeoValue]),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldGeo::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldDate < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDate,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/date`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDate::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDate::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig do
              returns(
                T.nilable(
                  T::Array[T.any(Moonbase::DateValue, Moonbase::CurrentDate)]
                )
              )
            end
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a date field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDate::Cardinality::OrSymbol,
                default_values:
                  T.nilable(
                    T::Array[
                      T.any(
                        Moonbase::DateValue::OrHash,
                        Moonbase::CurrentDate::OrHash
                      )
                    ]
                  ),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/date`.
              type: :"field/date"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldDate::Cardinality::OrSymbol,
                  default_values:
                    T.nilable(
                      T::Array[
                        T.any(Moonbase::DateValue, Moonbase::CurrentDate)
                      ]
                    ),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldDate::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDate::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDate::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldDate::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldDatetime < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/datetime`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig do
              returns(
                T.nilable(
                  T::Array[
                    T.any(Moonbase::DatetimeValue, Moonbase::CurrentDatetime)
                  ]
                )
              )
            end
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a date and time field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality::OrSymbol,
                default_values:
                  T.nilable(
                    T::Array[
                      T.any(
                        Moonbase::DatetimeValue::OrHash,
                        Moonbase::CurrentDatetime::OrHash
                      )
                    ]
                  ),
                description: T.nilable(String),
                name: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/datetime`.
              type: :"field/datetime"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality::OrSymbol,
                  default_values:
                    T.nilable(
                      T::Array[
                        T.any(
                          Moonbase::DatetimeValue,
                          Moonbase::CurrentDatetime
                        )
                      ]
                    ),
                  description: T.nilable(String),
                  name: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldDatetime::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldChoice < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldChoice,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/choice`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::ChoiceValueParam])) }
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # The complete set of options for this field. Omit to leave unchanged. Array order
            # determines display order.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option
                  ]
                )
              )
            end
            attr_reader :options

            sig do
              params(
                options:
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::OrHash
                  ]
              ).void
            end
            attr_writer :options

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a choice field.
            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality::OrSymbol,
                default_values:
                  T.nilable(T::Array[Moonbase::ChoiceValueParam::OrHash]),
                description: T.nilable(String),
                name: String,
                options:
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::OrHash
                  ],
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # The complete set of options for this field. Omit to leave unchanged. Array order
              # determines display order.
              options: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/choice`.
              type: :"field/choice"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality::OrSymbol,
                  default_values:
                    T.nilable(T::Array[Moonbase::ChoiceValueParam]),
                  description: T.nilable(String),
                  name: String,
                  options:
                    T::Array[
                      Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option
                    ],
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Option < Moonbase::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option,
                    Moonbase::Internal::AnyHash
                  )
                end

              # The color of the option.
              sig do
                returns(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::OrSymbol
                )
              end
              attr_accessor :color

              # The display name of the option.
              sig { returns(String) }
              attr_accessor :name

              # The ID of an existing option to update. When absent, a new option is created.
              sig { returns(T.nilable(String)) }
              attr_reader :id

              sig { params(id: String).void }
              attr_writer :id

              # A choice field option. Items with an `id` update existing options; items without
              # an `id` are added as new options.
              sig do
                params(
                  color:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::OrSymbol,
                  name: String,
                  id: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The color of the option.
                color:,
                # The display name of the option.
                name:,
                # The ID of an existing option to update. When absent, a new option is created.
                id: nil
              )
              end

              sig do
                override.returns(
                  {
                    color:
                      Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::OrSymbol,
                    name: String,
                    id: String
                  }
                )
              end
              def to_hash
              end

              # The color of the option.
              module Color
                extend Moonbase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AMBER =
                  T.let(
                    :amber,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                BLUE =
                  T.let(
                    :blue,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                CYAN =
                  T.let(
                    :cyan,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                EMERALD =
                  T.let(
                    :emerald,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                FUCHSIA =
                  T.let(
                    :fuchsia,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                GREEN =
                  T.let(
                    :green,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                INDIGO =
                  T.let(
                    :indigo,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                LIME =
                  T.let(
                    :lime,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                LUNAR =
                  T.let(
                    :lunar,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                ORANGE =
                  T.let(
                    :orange,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                PINK =
                  T.let(
                    :pink,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                PURPLE =
                  T.let(
                    :purple,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                RED =
                  T.let(
                    :red,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                ROSE =
                  T.let(
                    :rose,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                SKY =
                  T.let(
                    :sky,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                TEAL =
                  T.let(
                    :teal,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                VIOLET =
                  T.let(
                    :violet,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                YELLOW =
                  T.let(
                    :yellow,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Moonbase::Collections::FieldUpdateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class FieldRelation < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation,
                  Moonbase::Internal::AnyHash
                )
              end

            # The field type. Must be `field/relation`.
            sig { returns(Symbol) }
            attr_accessor :type

            # The complete set of allowed collections. Omit to leave unchanged. Array replaces
            # the current set.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::AllowedCollection
                  ]
                )
              )
            end
            attr_reader :allowed_collections

            sig do
              params(
                allowed_collections:
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::AllowedCollection::OrHash
                  ]
              ).void
            end
            attr_writer :allowed_collections

            # Updated cardinality: `one` or `many`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig do
              returns(
                T.nilable(
                  T::Array[
                    T.any(Moonbase::RelationValueParam, Moonbase::CurrentMember)
                  ]
                )
              )
            end
            attr_accessor :default_values

            # An updated description, or `null` to clear it.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The new name for the field.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # The type of relationship: `one_way` for simple references, or `two_way` for
            # bidirectional relationships.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::RelationType::OrSymbol
                )
              )
            end
            attr_reader :relation_type

            sig do
              params(
                relation_type:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::RelationType::OrSymbol
              ).void
            end
            attr_writer :relation_type

            # If `true`, items must have a value for this field.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for updating a relation field.
            sig do
              params(
                allowed_collections:
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::AllowedCollection::OrHash
                  ],
                cardinality:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality::OrSymbol,
                default_values:
                  T.nilable(
                    T::Array[
                      T.any(
                        Moonbase::RelationValueParam::OrHash,
                        Moonbase::CurrentMember::OrHash
                      )
                    ]
                  ),
                description: T.nilable(String),
                name: String,
                relation_type:
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::RelationType::OrSymbol,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The complete set of allowed collections. Omit to leave unchanged. Array replaces
              # the current set.
              allowed_collections: nil,
              # Updated cardinality: `one` or `many`.
              cardinality: nil,
              default_values: nil,
              # An updated description, or `null` to clear it.
              description: nil,
              # The new name for the field.
              name: nil,
              # The type of relationship: `one_way` for simple references, or `two_way` for
              # bidirectional relationships.
              relation_type: nil,
              # If `true`, items must have a value for this field.
              required: nil,
              # If `true`, values must be unique across all items.
              unique: nil,
              # The field type. Must be `field/relation`.
              type: :"field/relation"
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  allowed_collections:
                    T::Array[
                      Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::AllowedCollection
                    ],
                  cardinality:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality::OrSymbol,
                  default_values:
                    T.nilable(
                      T::Array[
                        T.any(
                          Moonbase::RelationValueParam,
                          Moonbase::CurrentMember
                        )
                      ]
                    ),
                  description: T.nilable(String),
                  name: String,
                  relation_type:
                    Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::RelationType::OrSymbol,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            class AllowedCollection < Moonbase::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::AllowedCollection,
                    Moonbase::Internal::AnyHash
                  )
                end

              # String representing the object’s type. Always `collection` for this object.
              sig { returns(Symbol) }
              attr_accessor :type

              # Unique identifier of the collection.
              sig { returns(T.nilable(String)) }
              attr_reader :id

              sig { params(id: String).void }
              attr_writer :id

              # The stable, machine-readable reference identifier of the collection.
              sig { returns(T.nilable(String)) }
              attr_reader :ref

              sig { params(ref: String).void }
              attr_writer :ref

              # A reference to a `Collection` used in request bodies. Provide at least one of
              # `id` or `ref` to identify the collection.
              sig do
                params(id: String, ref: String, type: Symbol).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Unique identifier of the collection.
                id: nil,
                # The stable, machine-readable reference identifier of the collection.
                ref: nil,
                # String representing the object’s type. Always `collection` for this object.
                type: :collection
              )
              end

              sig do
                override.returns({ type: Symbol, id: String, ref: String })
              end
              def to_hash
              end
            end

            # Updated cardinality: `one` or `many`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The type of relationship: `one_way` for simple references, or `two_way` for
            # bidirectional relationships.
            module RelationType
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::RelationType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE_WAY =
                T.let(
                  :one_way,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::RelationType::TaggedSymbol
                )
              TWO_WAY =
                T.let(
                  :two_way,
                  Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::RelationType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldUpdateParams::Field::FieldRelation::RelationType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Moonbase::Collections::FieldUpdateParams::Field::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
