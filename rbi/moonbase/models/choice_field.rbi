# typed: strong

module Moonbase
  module Models
    class ChoiceField < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ChoiceField, Moonbase::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      sig { returns(Moonbase::ChoiceField::Cardinality::TaggedSymbol) }
      attr_accessor :cardinality

      # If `true`, this is a built-in field included by default.
      sig { returns(T::Boolean) }
      attr_accessor :core

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The human-readable name of the field (e.g., "Priority").
      sig { returns(String) }
      attr_accessor :name

      # A list of `FieldOption` objects representing the available choices for this
      # field.
      sig { returns(T::Array[Moonbase::ChoiceFieldOption]) }
      attr_accessor :options

      # If `true`, the value of this field is system-managed and cannot be updated via
      # the API.
      sig { returns(T::Boolean) }
      attr_accessor :readonly

      # A unique, stable, machine-readable identifier for the field within its
      # collection (e.g., `priority`).
      sig { returns(String) }
      attr_accessor :ref

      # If `true`, this field must have a value.
      sig { returns(T::Boolean) }
      attr_accessor :required

      # The data type of the field. Always `field/choice` for this field.
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

      # A field that stores one or more predefined options from a list of choices.
      sig do
        params(
          id: String,
          cardinality: Moonbase::ChoiceField::Cardinality::OrSymbol,
          core: T::Boolean,
          created_at: Time,
          name: String,
          options: T::Array[Moonbase::ChoiceFieldOption::OrHash],
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
        # The human-readable name of the field (e.g., "Priority").
        name:,
        # A list of `FieldOption` objects representing the available choices for this
        # field.
        options:,
        # If `true`, the value of this field is system-managed and cannot be updated via
        # the API.
        readonly:,
        # A unique, stable, machine-readable identifier for the field within its
        # collection (e.g., `priority`).
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
        # The data type of the field. Always `field/choice` for this field.
        type: :"field/choice"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cardinality: Moonbase::ChoiceField::Cardinality::TaggedSymbol,
            core: T::Boolean,
            created_at: Time,
            name: String,
            options: T::Array[Moonbase::ChoiceFieldOption],
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
          T.type_alias { T.all(Symbol, Moonbase::ChoiceField::Cardinality) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE = T.let(:one, Moonbase::ChoiceField::Cardinality::TaggedSymbol)
        MANY = T.let(:many, Moonbase::ChoiceField::Cardinality::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Moonbase::ChoiceField::Cardinality::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
