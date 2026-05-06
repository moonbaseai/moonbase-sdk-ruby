# typed: strong

module Moonbase
  module Models
    class RelationField < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::RelationField, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The set of collections that are valid targets for this relation.
      sig { returns(T::Array[Moonbase::CollectionPointer]) }
      attr_accessor :allowed_collections

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      sig { returns(Moonbase::RelationField::Cardinality::TaggedSymbol) }
      attr_accessor :cardinality

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T::Array[Moonbase::FieldDefaultValue::Variants]) }
      attr_accessor :default_values

      # `system` fields are managed by Moonbase, `inverse` fields are the reverse side
      # of a two-way relation, and `custom` fields are user-created.
      sig { returns(Moonbase::RelationField::Kind::TaggedSymbol) }
      attr_accessor :kind

      # The human-readable name of the field (e.g., "Account").
      sig { returns(String) }
      attr_accessor :name

      # If `true`, the value of this field is system-managed and cannot be updated via
      # the API.
      sig { returns(T::Boolean) }
      attr_accessor :readonly

      # A unique, stable, machine-readable identifier for the field within its
      # collection (e.g., `account`).
      sig { returns(String) }
      attr_accessor :ref

      # The type of relationship. Can be `one_way` for simple references or `two_way`
      # for bidirectional relationships.
      sig { returns(Moonbase::RelationField::RelationType::TaggedSymbol) }
      attr_accessor :relation_type

      # If `true`, this field must have a value.
      sig { returns(T::Boolean) }
      attr_accessor :required

      # The data type of the field. Always `field/relation` for this field.
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

      # The name given to auto-created reverse fields on target collections. Only
      # present on `two_way` source fields.
      sig { returns(T.nilable(String)) }
      attr_reader :reverse_field_name

      sig { params(reverse_field_name: String).void }
      attr_writer :reverse_field_name

      # A list of reverse fields created on each target collection. Only present on
      # `two_way` source fields.
      sig { returns(T.nilable(T::Array[Moonbase::FieldPointer])) }
      attr_reader :reverse_fields

      sig do
        params(reverse_fields: T::Array[Moonbase::FieldPointer::OrHash]).void
      end
      attr_writer :reverse_fields

      # A reference to the source field that manages this reverse field. Only present on
      # reverse (contingent) fields.
      sig { returns(T.nilable(Moonbase::FieldPointer)) }
      attr_reader :source_field

      sig { params(source_field: Moonbase::FieldPointer::OrHash).void }
      attr_writer :source_field

      # A field that creates a link between items in different collections, enabling
      # cross-collection relationships.
      sig do
        params(
          id: String,
          allowed_collections: T::Array[Moonbase::CollectionPointer::OrHash],
          cardinality: Moonbase::RelationField::Cardinality::OrSymbol,
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
          kind: Moonbase::RelationField::Kind::OrSymbol,
          name: String,
          readonly: T::Boolean,
          ref: String,
          relation_type: Moonbase::RelationField::RelationType::OrSymbol,
          required: T::Boolean,
          unique: T::Boolean,
          updated_at: Time,
          description: String,
          reverse_field_name: String,
          reverse_fields: T::Array[Moonbase::FieldPointer::OrHash],
          source_field: Moonbase::FieldPointer::OrHash,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The set of collections that are valid targets for this relation.
        allowed_collections:,
        # Specifies whether the field can hold a single value (`one`) or multiple values
        # (`many`).
        cardinality:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        default_values:,
        # `system` fields are managed by Moonbase, `inverse` fields are the reverse side
        # of a two-way relation, and `custom` fields are user-created.
        kind:,
        # The human-readable name of the field (e.g., "Account").
        name:,
        # If `true`, the value of this field is system-managed and cannot be updated via
        # the API.
        readonly:,
        # A unique, stable, machine-readable identifier for the field within its
        # collection (e.g., `account`).
        ref:,
        # The type of relationship. Can be `one_way` for simple references or `two_way`
        # for bidirectional relationships.
        relation_type:,
        # If `true`, this field must have a value.
        required:,
        # If `true`, values for this field must be unique across all items in the
        # collection.
        unique:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # An optional, longer-form description of the field's purpose.
        description: nil,
        # The name given to auto-created reverse fields on target collections. Only
        # present on `two_way` source fields.
        reverse_field_name: nil,
        # A list of reverse fields created on each target collection. Only present on
        # `two_way` source fields.
        reverse_fields: nil,
        # A reference to the source field that manages this reverse field. Only present on
        # reverse (contingent) fields.
        source_field: nil,
        # The data type of the field. Always `field/relation` for this field.
        type: :"field/relation"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            allowed_collections: T::Array[Moonbase::CollectionPointer],
            cardinality: Moonbase::RelationField::Cardinality::TaggedSymbol,
            created_at: Time,
            default_values: T::Array[Moonbase::FieldDefaultValue::Variants],
            kind: Moonbase::RelationField::Kind::TaggedSymbol,
            name: String,
            readonly: T::Boolean,
            ref: String,
            relation_type: Moonbase::RelationField::RelationType::TaggedSymbol,
            required: T::Boolean,
            type: Symbol,
            unique: T::Boolean,
            updated_at: Time,
            description: String,
            reverse_field_name: String,
            reverse_fields: T::Array[Moonbase::FieldPointer],
            source_field: Moonbase::FieldPointer
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
          T.type_alias { T.all(Symbol, Moonbase::RelationField::Cardinality) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE = T.let(:one, Moonbase::RelationField::Cardinality::TaggedSymbol)
        MANY = T.let(:many, Moonbase::RelationField::Cardinality::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::RelationField::Cardinality::TaggedSymbol]
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
          T.type_alias { T.all(Symbol, Moonbase::RelationField::Kind) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SYSTEM = T.let(:system, Moonbase::RelationField::Kind::TaggedSymbol)
        INVERSE = T.let(:inverse, Moonbase::RelationField::Kind::TaggedSymbol)
        CUSTOM = T.let(:custom, Moonbase::RelationField::Kind::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::RelationField::Kind::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The type of relationship. Can be `one_way` for simple references or `two_way`
      # for bidirectional relationships.
      module RelationType
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Moonbase::RelationField::RelationType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE_WAY =
          T.let(:one_way, Moonbase::RelationField::RelationType::TaggedSymbol)
        TWO_WAY =
          T.let(:two_way, Moonbase::RelationField::RelationType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::RelationField::RelationType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
