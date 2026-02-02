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

      # If `true`, this is a built-in field included by default.
      sig { returns(T::Boolean) }
      attr_accessor :core

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

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

      # A field that creates a link between items in different collections, enabling
      # cross-collection relationships.
      sig do
        params(
          id: String,
          allowed_collections: T::Array[Moonbase::CollectionPointer::OrHash],
          cardinality: Moonbase::RelationField::Cardinality::OrSymbol,
          core: T::Boolean,
          created_at: Time,
          name: String,
          readonly: T::Boolean,
          ref: String,
          relation_type: Moonbase::RelationField::RelationType::OrSymbol,
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
        # The set of collections that are valid targets for this relation.
        allowed_collections:,
        # Specifies whether the field can hold a single value (`one`) or multiple values
        # (`many`).
        cardinality:,
        # If `true`, this is a built-in field included by default.
        core:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
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
            core: T::Boolean,
            created_at: Time,
            name: String,
            readonly: T::Boolean,
            ref: String,
            relation_type: Moonbase::RelationField::RelationType::TaggedSymbol,
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
