# typed: strong

module MoonbaseSDK
  module Models
    class Field < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::Field, MoonbaseSDK::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      sig { returns(MoonbaseSDK::Field::Cardinality::TaggedSymbol) }
      attr_accessor :cardinality

      sig { returns(MoonbaseSDK::Field::Links) }
      attr_reader :links

      sig { params(links: MoonbaseSDK::Field::Links::OrHash).void }
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
      sig { returns(MoonbaseSDK::Field::Type::TaggedSymbol) }
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
      sig { returns(T.nilable(T::Array[MoonbaseSDK::Field::FieldOption])) }
      attr_reader :field_options

      sig do
        params(
          field_options: T::Array[MoonbaseSDK::Field::FieldOption::OrHash]
        ).void
      end
      attr_writer :field_options

      # If the field `type` is `field/stage`, this is the associated `Funnel` object.
      sig { returns(T.nilable(MoonbaseSDK::Field::Funnel)) }
      attr_reader :funnel

      sig { params(funnel: MoonbaseSDK::Field::Funnel::OrHash).void }
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
          cardinality: MoonbaseSDK::Field::Cardinality::OrSymbol,
          links: MoonbaseSDK::Field::Links::OrHash,
          name: String,
          ref: String,
          type: MoonbaseSDK::Field::Type::OrSymbol,
          created_at: Time,
          description: String,
          field_options: T::Array[MoonbaseSDK::Field::FieldOption::OrHash],
          funnel: MoonbaseSDK::Field::Funnel::OrHash,
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
            cardinality: MoonbaseSDK::Field::Cardinality::TaggedSymbol,
            links: MoonbaseSDK::Field::Links,
            name: String,
            ref: String,
            type: MoonbaseSDK::Field::Type::TaggedSymbol,
            created_at: Time,
            description: String,
            field_options: T::Array[MoonbaseSDK::Field::FieldOption],
            funnel: MoonbaseSDK::Field::Funnel,
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
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MoonbaseSDK::Field::Cardinality) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE = T.let(:one, MoonbaseSDK::Field::Cardinality::TaggedSymbol)
        MANY = T.let(:many, MoonbaseSDK::Field::Cardinality::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MoonbaseSDK::Field::Cardinality::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Links < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Field::Links, MoonbaseSDK::Internal::AnyHash)
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
        extend MoonbaseSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, MoonbaseSDK::Field::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIELD_TEXT_SINGLE_LINE =
          T.let(
            :"field/text/single_line",
            MoonbaseSDK::Field::Type::TaggedSymbol
          )
        FIELD_TEXT_MULTI_LINE =
          T.let(
            :"field/text/multi_line",
            MoonbaseSDK::Field::Type::TaggedSymbol
          )
        FIELD_NUMBER_UNITLESS_INTEGER =
          T.let(
            :"field/number/unitless_integer",
            MoonbaseSDK::Field::Type::TaggedSymbol
          )
        FIELD_NUMBER_UNITLESS_FLOAT =
          T.let(
            :"field/number/unitless_float",
            MoonbaseSDK::Field::Type::TaggedSymbol
          )
        FIELD_NUMBER_MONETARY =
          T.let(
            :"field/number/monetary",
            MoonbaseSDK::Field::Type::TaggedSymbol
          )
        FIELD_NUMBER_PERCENTAGE =
          T.let(
            :"field/number/percentage",
            MoonbaseSDK::Field::Type::TaggedSymbol
          )
        FIELD_BOOLEAN =
          T.let(:"field/boolean", MoonbaseSDK::Field::Type::TaggedSymbol)
        FIELD_EMAIL =
          T.let(:"field/email", MoonbaseSDK::Field::Type::TaggedSymbol)
        FIELD_URI_URL =
          T.let(:"field/uri/url", MoonbaseSDK::Field::Type::TaggedSymbol)
        FIELD_URI_DOMAIN =
          T.let(:"field/uri/domain", MoonbaseSDK::Field::Type::TaggedSymbol)
        FIELD_URI_SOCIAL_X =
          T.let(:"field/uri/social_x", MoonbaseSDK::Field::Type::TaggedSymbol)
        FIELD_URI_SOCIAL_LINKED_IN =
          T.let(
            :"field/uri/social_linked_in",
            MoonbaseSDK::Field::Type::TaggedSymbol
          )
        FIELD_TELEPHONE_NUMBER =
          T.let(
            :"field/telephone_number",
            MoonbaseSDK::Field::Type::TaggedSymbol
          )
        FIELD_GEO = T.let(:"field/geo", MoonbaseSDK::Field::Type::TaggedSymbol)
        FIELD_DATE =
          T.let(:"field/date", MoonbaseSDK::Field::Type::TaggedSymbol)
        FIELD_DATETIME =
          T.let(:"field/datetime", MoonbaseSDK::Field::Type::TaggedSymbol)
        FIELD_CHOICE =
          T.let(:"field/choice", MoonbaseSDK::Field::Type::TaggedSymbol)
        FIELD_STAGE =
          T.let(:"field/stage", MoonbaseSDK::Field::Type::TaggedSymbol)
        FIELD_RELATION_ONE_WAY =
          T.let(
            :"field/relation/one_way",
            MoonbaseSDK::Field::Type::TaggedSymbol
          )
        FIELD_RELATION_TWO_WAY =
          T.let(
            :"field/relation/two_way",
            MoonbaseSDK::Field::Type::TaggedSymbol
          )

        sig do
          override.returns(T::Array[MoonbaseSDK::Field::Type::TaggedSymbol])
        end
        def self.values
        end
      end

      class FieldOption < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MoonbaseSDK::Field::FieldOption,
              MoonbaseSDK::Internal::AnyHash
            )
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

      class Funnel < MoonbaseSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MoonbaseSDK::Field::Funnel, MoonbaseSDK::Internal::AnyHash)
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # String representing the object’s type. Always `funnel` for this object.
        sig { returns(Symbol) }
        attr_accessor :type

        # An ordered list of `FunnelStep` objects that make up the funnel.
        sig { returns(T.nilable(T::Array[MoonbaseSDK::Field::Funnel::Step])) }
        attr_reader :steps

        sig do
          params(steps: T::Array[MoonbaseSDK::Field::Funnel::Step::OrHash]).void
        end
        attr_writer :steps

        # If the field `type` is `field/stage`, this is the associated `Funnel` object.
        sig do
          params(
            id: String,
            steps: T::Array[MoonbaseSDK::Field::Funnel::Step::OrHash],
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
              steps: T::Array[MoonbaseSDK::Field::Funnel::Step]
            }
          )
        end
        def to_hash
        end

        class Step < MoonbaseSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MoonbaseSDK::Field::Funnel::Step,
                MoonbaseSDK::Internal::AnyHash
              )
            end

          # Unique identifier for the object.
          sig { returns(String) }
          attr_accessor :id

          # The name of the step.
          sig { returns(String) }
          attr_accessor :name

          # The type of step, which can be `funnel_step/active`, `funnel_step/success`, or
          # `funnel_step/failure`.
          sig { returns(MoonbaseSDK::Field::Funnel::Step::Type::TaggedSymbol) }
          attr_accessor :type

          # Represents a single step within a `Funnel`.
          sig do
            params(
              id: String,
              name: String,
              type: MoonbaseSDK::Field::Funnel::Step::Type::OrSymbol
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
                type: MoonbaseSDK::Field::Funnel::Step::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The type of step, which can be `funnel_step/active`, `funnel_step/success`, or
          # `funnel_step/failure`.
          module Type
            extend MoonbaseSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, MoonbaseSDK::Field::Funnel::Step::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FUNNEL_STEP_ACTIVE =
              T.let(
                :"funnel_step/active",
                MoonbaseSDK::Field::Funnel::Step::Type::TaggedSymbol
              )
            FUNNEL_STEP_SUCCESS =
              T.let(
                :"funnel_step/success",
                MoonbaseSDK::Field::Funnel::Step::Type::TaggedSymbol
              )
            FUNNEL_STEP_FAILURE =
              T.let(
                :"funnel_step/failure",
                MoonbaseSDK::Field::Funnel::Step::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[MoonbaseSDK::Field::Funnel::Step::Type::TaggedSymbol]
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
