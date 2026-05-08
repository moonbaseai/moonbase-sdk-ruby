# typed: strong

module Moonbase
  module Models
    module Collections
      class FieldCreateParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Collections::FieldCreateParams,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :collection_id

        # Parameters for creating a field, discriminated by `type`.
        sig do
          returns(
            T.any(
              Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine,
              Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine,
              Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier,
              Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger,
              Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat,
              Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary,
              Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage,
              Moonbase::Collections::FieldCreateParams::Field::FieldBoolean,
              Moonbase::Collections::FieldCreateParams::Field::FieldEmail,
              Moonbase::Collections::FieldCreateParams::Field::FieldUriURL,
              Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain,
              Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX,
              Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn,
              Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber,
              Moonbase::Collections::FieldCreateParams::Field::FieldGeo,
              Moonbase::Collections::FieldCreateParams::Field::FieldDate,
              Moonbase::Collections::FieldCreateParams::Field::FieldDatetime,
              Moonbase::Collections::FieldCreateParams::Field::FieldChoice,
              Moonbase::StageFieldCreateParams,
              Moonbase::Collections::FieldCreateParams::Field::FieldRelation
            )
          )
        end
        attr_accessor :field

        sig do
          params(
            collection_id: String,
            field:
              T.any(
                Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldEmail::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldGeo::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldDate::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldChoice::OrHash,
                Moonbase::StageFieldCreateParams::OrHash,
                Moonbase::Collections::FieldCreateParams::Field::FieldRelation::OrHash
              ),
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          collection_id:,
          # Parameters for creating a field, discriminated by `type`.
          field:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              collection_id: String,
              field:
                T.any(
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine,
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine,
                  Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage,
                  Moonbase::Collections::FieldCreateParams::Field::FieldBoolean,
                  Moonbase::Collections::FieldCreateParams::Field::FieldEmail,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriURL,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn,
                  Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber,
                  Moonbase::Collections::FieldCreateParams::Field::FieldGeo,
                  Moonbase::Collections::FieldCreateParams::Field::FieldDate,
                  Moonbase::Collections::FieldCreateParams::Field::FieldDatetime,
                  Moonbase::Collections::FieldCreateParams::Field::FieldChoice,
                  Moonbase::StageFieldCreateParams,
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation
                ),
              request_options: Moonbase::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Parameters for creating a field, discriminated by `type`.
        module Field
          extend Moonbase::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine,
                Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine,
                Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary,
                Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage,
                Moonbase::Collections::FieldCreateParams::Field::FieldBoolean,
                Moonbase::Collections::FieldCreateParams::Field::FieldEmail,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriURL,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX,
                Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn,
                Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber,
                Moonbase::Collections::FieldCreateParams::Field::FieldGeo,
                Moonbase::Collections::FieldCreateParams::Field::FieldDate,
                Moonbase::Collections::FieldCreateParams::Field::FieldDatetime,
                Moonbase::Collections::FieldCreateParams::Field::FieldChoice,
                Moonbase::StageFieldCreateParams,
                Moonbase::Collections::FieldCreateParams::Field::FieldRelation
              )
            end

          class FieldTextSingleLine < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/text/single_line`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::SingleLineTextValue])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::SingleLineTextValue::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a single-line text field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::SingleLineTextValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/text/single_line`.
              type: :"field/text/single_line"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::SingleLineTextValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldTextSingleLine::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/text/multi_line`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::MultiLineTextValue])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::MultiLineTextValue::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a multi-line text field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::MultiLineTextValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/text/multi_line`.
              type: :"field/text/multi_line"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::MultiLineTextValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldTextMultiLine::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldIdentifier < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier,
                  Moonbase::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::IdentifierValue])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::IdentifierValue::OrHash]
              ).void
            end
            attr_writer :default_values

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::IdentifierValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              name:,
              cardinality: nil,
              default_values: nil,
              description: nil,
              required: nil,
              unique: nil,
              type: :"field/identifier"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::IdentifierValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldIdentifier::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/number/unitless_integer`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::IntegerValue])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::IntegerValue::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating an integer field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::IntegerValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/number/unitless_integer`.
              type: :"field/number/unitless_integer"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::IntegerValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessInteger::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/number/unitless_float`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::FloatValue])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::FloatValue::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a decimal number field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::FloatValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/number/unitless_float`.
              type: :"field/number/unitless_float"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::FloatValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberUnitlessFloat::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/number/monetary`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality::OrSymbol
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
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::MonetaryValue::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a monetary field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality::OrSymbol,
                default_unit: String,
                default_values: T::Array[Moonbase::MonetaryValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              # The default currency for the field, as a 3-letter ISO 4217 code (e.g., `USD`,
              # `EUR`, `GBP`).
              default_unit: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/number/monetary`.
              type: :"field/number/monetary"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality::OrSymbol,
                  default_unit: String,
                  default_values: T::Array[Moonbase::MonetaryValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberMonetary::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/number/percentage`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::PercentageValue])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::PercentageValue::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a percentage field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::PercentageValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/number/percentage`.
              type: :"field/number/percentage"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::PercentageValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldNumberPercentage::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldBoolean,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/boolean`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::BooleanValue])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::BooleanValue::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a boolean field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::BooleanValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/boolean`.
              type: :"field/boolean"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::BooleanValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldBoolean::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldEmail,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/email`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldEmail::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldEmail::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::EmailValue])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::EmailValue::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating an email field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldEmail::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::EmailValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/email`.
              type: :"field/email"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldEmail::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::EmailValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldEmail::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldEmail::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldEmail::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldEmail::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriURL,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/uri/url`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::URLValue])) }
            attr_reader :default_values

            sig do
              params(default_values: T::Array[Moonbase::URLValue::OrHash]).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a URL field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::URLValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/uri/url`.
              type: :"field/uri/url"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::URLValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriURL::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/uri/domain`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::DomainValue])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::DomainValue::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a domain field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::DomainValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/uri/domain`.
              type: :"field/uri/domain"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::DomainValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriDomain::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/uri/social_x`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::SocialXValueParam])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::SocialXValueParam::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating an X (formerly Twitter) profile field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::SocialXValueParam::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/uri/social_x`.
              type: :"field/uri/social_x"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::SocialXValueParam],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialX::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/uri/social_linked_in`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig do
              returns(T.nilable(T::Array[Moonbase::SocialLinkedInValueParam]))
            end
            attr_reader :default_values

            sig do
              params(
                default_values:
                  T::Array[Moonbase::SocialLinkedInValueParam::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a LinkedIn profile field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality::OrSymbol,
                default_values:
                  T::Array[Moonbase::SocialLinkedInValueParam::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/uri/social_linked_in`.
              type: :"field/uri/social_linked_in"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::SocialLinkedInValueParam],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldUriSocialLinkedIn::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/telephone_number`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::TelephoneNumber])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::TelephoneNumber::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a telephone number field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::TelephoneNumber::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/telephone_number`.
              type: :"field/telephone_number"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::TelephoneNumber],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldTelephoneNumber::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldGeo,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/geo`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldGeo::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldGeo::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::GeoValue])) }
            attr_reader :default_values

            sig do
              params(default_values: T::Array[Moonbase::GeoValue::OrHash]).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a geographic location field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldGeo::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::GeoValue::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/geo`.
              type: :"field/geo"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldGeo::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::GeoValue],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldGeo::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldGeo::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldGeo::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldGeo::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldDate,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/date`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldDate::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldDate::Cardinality::OrSymbol
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
            attr_reader :default_values

            sig do
              params(
                default_values:
                  T::Array[
                    T.any(
                      Moonbase::DateValue::OrHash,
                      Moonbase::CurrentDate::OrHash
                    )
                  ]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a date field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldDate::Cardinality::OrSymbol,
                default_values:
                  T::Array[
                    T.any(
                      Moonbase::DateValue::OrHash,
                      Moonbase::CurrentDate::OrHash
                    )
                  ],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/date`.
              type: :"field/date"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldDate::Cardinality::OrSymbol,
                  default_values:
                    T::Array[T.any(Moonbase::DateValue, Moonbase::CurrentDate)],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldDate::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldDate::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldDate::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldDate::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldDatetime,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The field type. Must be `field/datetime`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality::OrSymbol
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
            attr_reader :default_values

            sig do
              params(
                default_values:
                  T::Array[
                    T.any(
                      Moonbase::DatetimeValue::OrHash,
                      Moonbase::CurrentDatetime::OrHash
                    )
                  ]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a date and time field.
            sig do
              params(
                name: String,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality::OrSymbol,
                default_values:
                  T::Array[
                    T.any(
                      Moonbase::DatetimeValue::OrHash,
                      Moonbase::CurrentDatetime::OrHash
                    )
                  ],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/datetime`.
              type: :"field/datetime"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality::OrSymbol,
                  default_values:
                    T::Array[
                      T.any(Moonbase::DatetimeValue, Moonbase::CurrentDatetime)
                    ],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldDatetime::Cardinality::TaggedSymbol
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
                  Moonbase::Collections::FieldCreateParams::Field::FieldChoice,
                  Moonbase::Internal::AnyHash
                )
              end

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # A list of options to create for the field. Each option must have a `name`.
            sig do
              returns(
                T::Array[
                  Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option
                ]
              )
            end
            attr_accessor :options

            # The field type. Must be `field/choice`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Cardinality::OrSymbol
              ).void
            end
            attr_writer :cardinality

            sig { returns(T.nilable(T::Array[Moonbase::ChoiceValueParam])) }
            attr_reader :default_values

            sig do
              params(
                default_values: T::Array[Moonbase::ChoiceValueParam::OrHash]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a choice field with predefined options.
            sig do
              params(
                name: String,
                options:
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::OrHash
                  ],
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Cardinality::OrSymbol,
                default_values: T::Array[Moonbase::ChoiceValueParam::OrHash],
                description: String,
                required: T::Boolean,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The human-readable name for the field.
              name:,
              # A list of options to create for the field. Each option must have a `name`.
              options:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/choice`.
              type: :"field/choice"
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  options:
                    T::Array[
                      Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option
                    ],
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Cardinality::OrSymbol,
                  default_values: T::Array[Moonbase::ChoiceValueParam],
                  description: String,
                  required: T::Boolean,
                  unique: T::Boolean
                }
              )
            end
            def to_hash
            end

            class Option < Moonbase::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option,
                    Moonbase::Internal::AnyHash
                  )
                end

              # The color of the option.
              sig do
                returns(
                  Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::OrSymbol
                )
              end
              attr_accessor :color

              # The display name of the option.
              sig { returns(String) }
              attr_accessor :name

              # Parameters for defining an option in a choice field.
              sig do
                params(
                  color:
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::OrSymbol,
                  name: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The color of the option.
                color:,
                # The display name of the option.
                name:
              )
              end

              sig do
                override.returns(
                  {
                    color:
                      Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::OrSymbol,
                    name: String
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
                      Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AMBER =
                  T.let(
                    :amber,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                BLUE =
                  T.let(
                    :blue,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                CYAN =
                  T.let(
                    :cyan,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                EMERALD =
                  T.let(
                    :emerald,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                FUCHSIA =
                  T.let(
                    :fuchsia,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                GREEN =
                  T.let(
                    :green,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                INDIGO =
                  T.let(
                    :indigo,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                LIME =
                  T.let(
                    :lime,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                LUNAR =
                  T.let(
                    :lunar,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                ORANGE =
                  T.let(
                    :orange,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                PINK =
                  T.let(
                    :pink,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                PURPLE =
                  T.let(
                    :purple,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                RED =
                  T.let(
                    :red,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                ROSE =
                  T.let(
                    :rose,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                SKY =
                  T.let(
                    :sky,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                TEAL =
                  T.let(
                    :teal,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                VIOLET =
                  T.let(
                    :violet,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )
                YELLOW =
                  T.let(
                    :yellow,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Option::Color::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldChoice::Cardinality::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class FieldRelation < Moonbase::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation,
                  Moonbase::Internal::AnyHash
                )
              end

            # A list of collection IDs or `ref` values that are valid targets for this
            # relation.
            sig do
              returns(
                T::Array[
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation::AllowedCollection
                ]
              )
            end
            attr_accessor :allowed_collections

            # The human-readable name for the field.
            sig { returns(String) }
            attr_accessor :name

            # The type of relationship: `one_way` for simple references, or `two_way` for
            # bidirectional relationships.
            sig do
              returns(
                Moonbase::Collections::FieldCreateParams::Field::FieldRelation::RelationType::OrSymbol
              )
            end
            attr_accessor :relation_type

            # The field type. Must be `field/relation`.
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            sig do
              returns(
                T.nilable(
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation::Cardinality::OrSymbol
                )
              )
            end
            attr_reader :cardinality

            sig do
              params(
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation::Cardinality::OrSymbol
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
            attr_reader :default_values

            sig do
              params(
                default_values:
                  T::Array[
                    T.any(
                      Moonbase::RelationValueParam::OrHash,
                      Moonbase::CurrentMember::OrHash
                    )
                  ]
              ).void
            end
            attr_writer :default_values

            # An optional description of the field's purpose.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # If `true`, items must have a value for this field. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            # For `two_way` relations, the name of the reverse field created on the target
            # collection.
            sig { returns(T.nilable(String)) }
            attr_reader :reverse_field_name

            sig { params(reverse_field_name: String).void }
            attr_writer :reverse_field_name

            # If `true`, values must be unique across all items. Defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :unique

            sig { params(unique: T::Boolean).void }
            attr_writer :unique

            # Parameters for creating a relation field that links items across collections.
            sig do
              params(
                allowed_collections:
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldRelation::AllowedCollection::OrHash
                  ],
                name: String,
                relation_type:
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation::RelationType::OrSymbol,
                cardinality:
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation::Cardinality::OrSymbol,
                default_values:
                  T::Array[
                    T.any(
                      Moonbase::RelationValueParam::OrHash,
                      Moonbase::CurrentMember::OrHash
                    )
                  ],
                description: String,
                required: T::Boolean,
                reverse_field_name: String,
                unique: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # A list of collection IDs or `ref` values that are valid targets for this
              # relation.
              allowed_collections:,
              # The human-readable name for the field.
              name:,
              # The type of relationship: `one_way` for simple references, or `two_way` for
              # bidirectional relationships.
              relation_type:,
              # Whether the field holds a single value (`one`) or multiple values (`many`).
              # Defaults to `one`.
              cardinality: nil,
              default_values: nil,
              # An optional description of the field's purpose.
              description: nil,
              # If `true`, items must have a value for this field. Defaults to `false`.
              required: nil,
              # For `two_way` relations, the name of the reverse field created on the target
              # collection.
              reverse_field_name: nil,
              # If `true`, values must be unique across all items. Defaults to `false`.
              unique: nil,
              # The field type. Must be `field/relation`.
              type: :"field/relation"
            )
            end

            sig do
              override.returns(
                {
                  allowed_collections:
                    T::Array[
                      Moonbase::Collections::FieldCreateParams::Field::FieldRelation::AllowedCollection
                    ],
                  name: String,
                  relation_type:
                    Moonbase::Collections::FieldCreateParams::Field::FieldRelation::RelationType::OrSymbol,
                  type: Symbol,
                  cardinality:
                    Moonbase::Collections::FieldCreateParams::Field::FieldRelation::Cardinality::OrSymbol,
                  default_values:
                    T::Array[
                      T.any(
                        Moonbase::RelationValueParam,
                        Moonbase::CurrentMember
                      )
                    ],
                  description: String,
                  required: T::Boolean,
                  reverse_field_name: String,
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
                    Moonbase::Collections::FieldCreateParams::Field::FieldRelation::AllowedCollection,
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

            # The type of relationship: `one_way` for simple references, or `two_way` for
            # bidirectional relationships.
            module RelationType
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldRelation::RelationType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE_WAY =
                T.let(
                  :one_way,
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation::RelationType::TaggedSymbol
                )
              TWO_WAY =
                T.let(
                  :two_way,
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation::RelationType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldRelation::RelationType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Whether the field holds a single value (`one`) or multiple values (`many`).
            # Defaults to `one`.
            module Cardinality
              extend Moonbase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Moonbase::Collections::FieldCreateParams::Field::FieldRelation::Cardinality
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ONE =
                T.let(
                  :one,
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation::Cardinality::TaggedSymbol
                )
              MANY =
                T.let(
                  :many,
                  Moonbase::Collections::FieldCreateParams::Field::FieldRelation::Cardinality::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Moonbase::Collections::FieldCreateParams::Field::FieldRelation::Cardinality::TaggedSymbol
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
                Moonbase::Collections::FieldCreateParams::Field::Variants
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
