# typed: strong

module Moonbase
  module Models
    class Field < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Field, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      sig { returns(Moonbase::Field::Cardinality::TaggedSymbol) }
      attr_accessor :cardinality

      sig { returns(Moonbase::Field::Links) }
      attr_reader :links

      sig { params(links: Moonbase::Field::Links::OrHash).void }
      attr_writer :links

      # The human-readable name of the field (e.g., “Due Date”).
      sig { returns(String) }
      attr_accessor :name

      # A unique, stable, machine-readable identifier for the field within its
      # collection (e.g., `due_date`).
      sig { returns(String) }
      attr_accessor :ref

      # The data type of the field. This determines how values are stored, validated,
      # and rendered.
      sig { returns(Moonbase::Field::Type::TaggedSymbol) }
      attr_accessor :type

      # Time at which the object was created, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # An optional, longer-form description of the field's purpose.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # If the field `type` is `field/choice`, this is the list of available
      # `FieldOption` objects.
      sig { returns(T.nilable(T::Array[Moonbase::Field::FieldOption])) }
      attr_reader :field_options

      sig do
        params(
          field_options: T::Array[Moonbase::Field::FieldOption::OrHash]
        ).void
      end
      attr_writer :field_options

      # If the field `type` is `field/stage`, this is the associated `Funnel` object.
      sig { returns(T.nilable(Moonbase::Field::Funnel)) }
      attr_reader :funnel

      sig { params(funnel: Moonbase::Field::Funnel::OrHash).void }
      attr_writer :funnel

      # If `true`, the value of this field is system-managed and cannot be updated via
      # the API.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :readonly

      sig { params(readonly: T::Boolean).void }
      attr_writer :readonly

      # If `true`, this field must have a value.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :required

      sig { params(required: T::Boolean).void }
      attr_writer :required

      # If `true`, values for this field must be unique across all items in the
      # collection.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :unique

      sig { params(unique: T::Boolean).void }
      attr_writer :unique

      # Time at which the object was last updated, as an RFC 3339 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # A Field defines a single column in a Collection's schema. It specifies the data
      # type, validation rules, and other properties for the values stored in that
      # column.
      sig do
        params(
          id: String,
          cardinality: Moonbase::Field::Cardinality::OrSymbol,
          links: Moonbase::Field::Links::OrHash,
          name: String,
          ref: String,
          type: Moonbase::Field::Type::OrSymbol,
          created_at: Time,
          description: String,
          field_options: T::Array[Moonbase::Field::FieldOption::OrHash],
          funnel: Moonbase::Field::Funnel::OrHash,
          readonly: T::Boolean,
          required: T::Boolean,
          unique: T::Boolean,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Specifies whether the field can hold a single value (`one`) or multiple values
        # (`many`).
        cardinality:,
        links:,
        # The human-readable name of the field (e.g., “Due Date”).
        name:,
        # A unique, stable, machine-readable identifier for the field within its
        # collection (e.g., `due_date`).
        ref:,
        # The data type of the field. This determines how values are stored, validated,
        # and rendered.
        type:,
        # Time at which the object was created, as an RFC 3339 timestamp.
        created_at: nil,
        # An optional, longer-form description of the field's purpose.
        description: nil,
        # If the field `type` is `field/choice`, this is the list of available
        # `FieldOption` objects.
        field_options: nil,
        # If the field `type` is `field/stage`, this is the associated `Funnel` object.
        funnel: nil,
        # If `true`, the value of this field is system-managed and cannot be updated via
        # the API.
        readonly: nil,
        # If `true`, this field must have a value.
        required: nil,
        # If `true`, values for this field must be unique across all items in the
        # collection.
        unique: nil,
        # Time at which the object was last updated, as an RFC 3339 timestamp.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cardinality: Moonbase::Field::Cardinality::TaggedSymbol,
            links: Moonbase::Field::Links,
            name: String,
            ref: String,
            type: Moonbase::Field::Type::TaggedSymbol,
            created_at: Time,
            description: String,
            field_options: T::Array[Moonbase::Field::FieldOption],
            funnel: Moonbase::Field::Funnel,
            readonly: T::Boolean,
            required: T::Boolean,
            unique: T::Boolean,
            updated_at: Time
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
          T.type_alias { T.all(Symbol, Moonbase::Field::Cardinality) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE = T.let(:one, Moonbase::Field::Cardinality::TaggedSymbol)
        MANY = T.let(:many, Moonbase::Field::Cardinality::TaggedSymbol)

        sig do
          override.returns(T::Array[Moonbase::Field::Cardinality::TaggedSymbol])
        end
        def self.values
        end
      end

      class Links < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Field::Links, Moonbase::Internal::AnyHash)
          end

        # The `Collection` this field belongs to.
        sig { returns(String) }
        attr_accessor :collection

        # The canonical URL for this object.
        sig { returns(String) }
        attr_accessor :self_

        sig do
          params(collection: String, self_: String).returns(T.attached_class)
        end
        def self.new(
          # The `Collection` this field belongs to.
          collection:,
          # The canonical URL for this object.
          self_:
        )
        end

        sig { override.returns({ collection: String, self_: String }) }
        def to_hash
        end
      end

      # The data type of the field. This determines how values are stored, validated,
      # and rendered.
      module Type
        extend Moonbase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Moonbase::Field::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIELD_TEXT_SINGLE_LINE =
          T.let(:"field/text/single_line", Moonbase::Field::Type::TaggedSymbol)
        FIELD_TEXT_MULTI_LINE =
          T.let(:"field/text/multi_line", Moonbase::Field::Type::TaggedSymbol)
        FIELD_NUMBER_UNITLESS_INTEGER =
          T.let(
            :"field/number/unitless_integer",
            Moonbase::Field::Type::TaggedSymbol
          )
        FIELD_NUMBER_UNITLESS_FLOAT =
          T.let(
            :"field/number/unitless_float",
            Moonbase::Field::Type::TaggedSymbol
          )
        FIELD_NUMBER_MONETARY =
          T.let(:"field/number/monetary", Moonbase::Field::Type::TaggedSymbol)
        FIELD_NUMBER_PERCENTAGE =
          T.let(:"field/number/percentage", Moonbase::Field::Type::TaggedSymbol)
        FIELD_BOOLEAN =
          T.let(:"field/boolean", Moonbase::Field::Type::TaggedSymbol)
        FIELD_EMAIL = T.let(:"field/email", Moonbase::Field::Type::TaggedSymbol)
        FIELD_URI_URL =
          T.let(:"field/uri/url", Moonbase::Field::Type::TaggedSymbol)
        FIELD_URI_DOMAIN =
          T.let(:"field/uri/domain", Moonbase::Field::Type::TaggedSymbol)
        FIELD_URI_SOCIAL_X =
          T.let(:"field/uri/social_x", Moonbase::Field::Type::TaggedSymbol)
        FIELD_URI_SOCIAL_LINKED_IN =
          T.let(
            :"field/uri/social_linked_in",
            Moonbase::Field::Type::TaggedSymbol
          )
        FIELD_TELEPHONE_NUMBER =
          T.let(:"field/telephone_number", Moonbase::Field::Type::TaggedSymbol)
        FIELD_GEO = T.let(:"field/geo", Moonbase::Field::Type::TaggedSymbol)
        FIELD_DATE = T.let(:"field/date", Moonbase::Field::Type::TaggedSymbol)
        FIELD_DATETIME =
          T.let(:"field/datetime", Moonbase::Field::Type::TaggedSymbol)
        FIELD_CHOICE =
          T.let(:"field/choice", Moonbase::Field::Type::TaggedSymbol)
        FIELD_STAGE = T.let(:"field/stage", Moonbase::Field::Type::TaggedSymbol)
        FIELD_RELATION_ONE_WAY =
          T.let(:"field/relation/one_way", Moonbase::Field::Type::TaggedSymbol)
        FIELD_RELATION_TWO_WAY =
          T.let(:"field/relation/two_way", Moonbase::Field::Type::TaggedSymbol)

        sig { override.returns(T::Array[Moonbase::Field::Type::TaggedSymbol]) }
        def self.values
        end
      end

      class FieldOption < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Field::FieldOption, Moonbase::Internal::AnyHash)
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The human-readable text for the option.
        sig { returns(String) }
        attr_accessor :label

        # String representing the object’s type. Always `field_option` for this object.
        sig { returns(Symbol) }
        attr_accessor :type

        # Represents a selectable option within a `choice` field.
        sig do
          params(id: String, label: String, type: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # The human-readable text for the option.
          label:,
          # String representing the object’s type. Always `field_option` for this object.
          type: :field_option
        )
        end

        sig { override.returns({ id: String, label: String, type: Symbol }) }
        def to_hash
        end
      end

      class Funnel < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Moonbase::Field::Funnel, Moonbase::Internal::AnyHash)
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # String representing the object’s type. Always `funnel` for this object.
        sig { returns(Symbol) }
        attr_accessor :type

        # An ordered list of `FunnelStep` objects that make up the funnel.
        sig { returns(T.nilable(T::Array[Moonbase::Field::Funnel::Step])) }
        attr_reader :steps

        sig do
          params(steps: T::Array[Moonbase::Field::Funnel::Step::OrHash]).void
        end
        attr_writer :steps

        # If the field `type` is `field/stage`, this is the associated `Funnel` object.
        sig do
          params(
            id: String,
            steps: T::Array[Moonbase::Field::Funnel::Step::OrHash],
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # An ordered list of `FunnelStep` objects that make up the funnel.
          steps: nil,
          # String representing the object’s type. Always `funnel` for this object.
          type: :funnel
        )
        end

        sig do
          override.returns(
            {
              id: String,
              type: Symbol,
              steps: T::Array[Moonbase::Field::Funnel::Step]
            }
          )
        end
        def to_hash
        end

        class Step < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Moonbase::Field::Funnel::Step, Moonbase::Internal::AnyHash)
            end

          # Unique identifier for the object.
          sig { returns(String) }
          attr_accessor :id

          # The name of the step.
          sig { returns(String) }
          attr_accessor :name

          # The type of step, which can be `funnel_step/active`, `funnel_step/success`, or
          # `funnel_step/failure`.
          sig { returns(Moonbase::Field::Funnel::Step::Type::TaggedSymbol) }
          attr_accessor :type

          # Represents a single step within a `Funnel`.
          sig do
            params(
              id: String,
              name: String,
              type: Moonbase::Field::Funnel::Step::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the object.
            id:,
            # The name of the step.
            name:,
            # The type of step, which can be `funnel_step/active`, `funnel_step/success`, or
            # `funnel_step/failure`.
            type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: String,
                type: Moonbase::Field::Funnel::Step::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The type of step, which can be `funnel_step/active`, `funnel_step/success`, or
          # `funnel_step/failure`.
          module Type
            extend Moonbase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Moonbase::Field::Funnel::Step::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FUNNEL_STEP_ACTIVE =
              T.let(
                :"funnel_step/active",
                Moonbase::Field::Funnel::Step::Type::TaggedSymbol
              )
            FUNNEL_STEP_SUCCESS =
              T.let(
                :"funnel_step/success",
                Moonbase::Field::Funnel::Step::Type::TaggedSymbol
              )
            FUNNEL_STEP_FAILURE =
              T.let(
                :"funnel_step/failure",
                Moonbase::Field::Funnel::Step::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Moonbase::Field::Funnel::Step::Type::TaggedSymbol]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
