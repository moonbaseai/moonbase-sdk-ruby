# typed: strong

module Moonbase
  module Models
    class DomainField < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::DomainField, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      sig { returns(Moonbase::DomainField::Cardinality::TaggedSymbol) }
      attr_accessor :cardinality

      # If `true`, this is a built-in field included by default.
      sig { returns(T::Boolean) }
      attr_accessor :core

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The human-readable name of the field (e.g., "Company Domain").
      sig { returns(String) }
      attr_accessor :name

      # If `true`, the value of this field is system-managed and cannot be updated via
      # the API.
      sig { returns(T::Boolean) }
      attr_accessor :readonly

      # A unique, stable, machine-readable identifier for the field within its
      # collection (e.g., `company_domain`).
      sig { returns(String) }
      attr_accessor :ref

      # If `true`, this field must have a value.
      sig { returns(T::Boolean) }
      attr_accessor :required

      # The data type of the field. Always `field/uri/domain` for this field.
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

      # A field that stores internet domain names.
      sig do
        params(
          id: String,
          cardinality: Moonbase::DomainField::Cardinality::OrSymbol,
          core: T::Boolean,
          created_at: Time,
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
        # If `true`, this is a built-in field included by default.
        core:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The human-readable name of the field (e.g., "Company Domain").
        name:,
        # If `true`, the value of this field is system-managed and cannot be updated via
        # the API.
        readonly:,
        # A unique, stable, machine-readable identifier for the field within its
        # collection (e.g., `company_domain`).
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
        # The data type of the field. Always `field/uri/domain` for this field.
        type: :"field/uri/domain"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cardinality: Moonbase::DomainField::Cardinality::TaggedSymbol,
            core: T::Boolean,
            created_at: Time,
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
          T.type_alias { T.all(Symbol, Moonbase::DomainField::Cardinality) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE = T.let(:one, Moonbase::DomainField::Cardinality::TaggedSymbol)
        MANY = T.let(:many, Moonbase::DomainField::Cardinality::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::DomainField::Cardinality::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
