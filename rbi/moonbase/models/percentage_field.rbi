# typed: strong

module Moonbase
  module Models
    class PercentageField < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::PercentageField, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      sig { returns(Moonbase::PercentageField::Cardinality::TaggedSymbol) }
      attr_accessor :cardinality

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T::Array[Moonbase::FieldDefaultValue::Variants]) }
      attr_accessor :default_values

      # `system` fields are managed by Moonbase, `inverse` fields are the reverse side
      # of a two-way relation, and `custom` fields are user-created.
      sig { returns(Moonbase::PercentageField::Kind::TaggedSymbol) }
      attr_accessor :kind

      # The human-readable name of the field (e.g., "Win Probability").
      sig { returns(String) }
      attr_accessor :name

      # If `true`, the value of this field is system-managed and cannot be updated via
      # the API.
      sig { returns(T::Boolean) }
      attr_accessor :readonly

      # A unique, stable, machine-readable identifier for the field within its
      # collection (e.g., `win_probability`).
      sig { returns(String) }
      attr_accessor :ref

      # If `true`, this field must have a value.
      sig { returns(T::Boolean) }
      attr_accessor :required

      # The data type of the field. Always `field/number/percentage` for this field.
      sig { returns(Symbol) }
      attr_accessor :type

      # If `true`, values for this field must be unique across all items in the
      # collection.
      sig { returns(T::Boolean) }
      attr_accessor :unique

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An optional, longer-form description of the field's purpose.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # A field that stores percentage values as decimal numbers.
      sig do
        params(
          id: String,
          cardinality: Moonbase::PercentageField::Cardinality::OrSymbol,
          created_at: Time,
          default_values:
            T::Array[
              T.any(
                Moonbase::SingleLineTextValue::OrHash,
                Moonbase::MultiLineTextValue::OrHash,
                Moonbase::IntegerValue::OrHash,
                Moonbase::FloatValue::OrHash,
                Moonbase::MonetaryValue::OrHash,
                Moonbase::PercentageValue::OrHash,
                Moonbase::BooleanValue::OrHash,
                Moonbase::EmailValue::OrHash,
                Moonbase::URLValue::OrHash,
                Moonbase::DomainValue::OrHash,
                Moonbase::SocialXValue::OrHash,
                Moonbase::SocialLinkedInValue::OrHash,
                Moonbase::TelephoneNumber::OrHash,
                Moonbase::GeoValue::OrHash,
                Moonbase::DateValue::OrHash,
                Moonbase::CurrentDate::OrHash,
                Moonbase::DatetimeValue::OrHash,
                Moonbase::CurrentDatetime::OrHash,
                Moonbase::ChoiceValue::OrHash,
                Moonbase::FunnelStepValue::OrHash,
                Moonbase::RelationValue::OrHash,
                Moonbase::CurrentMember::OrHash
              )
            ],
          kind: Moonbase::PercentageField::Kind::OrSymbol,
          name: String,
          readonly: T::Boolean,
          ref: String,
          required: T::Boolean,
          unique: T::Boolean,
          updated_at: Time,
          description: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Specifies whether the field can hold a single value (`one`) or multiple values
        # (`many`).
        cardinality:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        default_values:,
        # `system` fields are managed by Moonbase, `inverse` fields are the reverse side
        # of a two-way relation, and `custom` fields are user-created.
        kind:,
        # The human-readable name of the field (e.g., "Win Probability").
        name:,
        # If `true`, the value of this field is system-managed and cannot be updated via
        # the API.
        readonly:,
        # A unique, stable, machine-readable identifier for the field within its
        # collection (e.g., `win_probability`).
        ref:,
        # If `true`, this field must have a value.
        required:,
        # If `true`, values for this field must be unique across all items in the
        # collection.
        unique:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # An optional, longer-form description of the field's purpose.
        description: nil,
        # The data type of the field. Always `field/number/percentage` for this field.
        type: :"field/number/percentage"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cardinality: Moonbase::PercentageField::Cardinality::TaggedSymbol,
            created_at: Time,
            default_values: T::Array[Moonbase::FieldDefaultValue::Variants],
            kind: Moonbase::PercentageField::Kind::TaggedSymbol,
            name: String,
            readonly: T::Boolean,
            ref: String,
            required: T::Boolean,
            type: Symbol,
            unique: T::Boolean,
            updated_at: Time,
            description: String
          }
        )
      end
      def to_hash
      end

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      module Cardinality
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::PercentageField::Cardinality) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE = T.let(:one, Moonbase::PercentageField::Cardinality::TaggedSymbol)
        MANY =
          T.let(:many, Moonbase::PercentageField::Cardinality::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::PercentageField::Cardinality::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # `system` fields are managed by Moonbase, `inverse` fields are the reverse side
      # of a two-way relation, and `custom` fields are user-created.
      module Kind
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::PercentageField::Kind) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SYSTEM = T.let(:system, Moonbase::PercentageField::Kind::TaggedSymbol)
        INVERSE = T.let(:inverse, Moonbase::PercentageField::Kind::TaggedSymbol)
        CUSTOM = T.let(:custom, Moonbase::PercentageField::Kind::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::PercentageField::Kind::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
