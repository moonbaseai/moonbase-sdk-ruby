# frozen_string_literal: true

module Moonbase
  module Models
    class Field < Moonbase::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute cardinality
      #   Specifies whether the field can hold a single value (`one`) or multiple values
      #   (`many`).
      #
      #   @return [Symbol, Moonbase::Models::Field::Cardinality]
      required :cardinality, enum: -> { Moonbase::Field::Cardinality }

      # @!attribute links
      #
      #   @return [Moonbase::Models::Field::Links]
      required :links, -> { Moonbase::Field::Links }

      # @!attribute name
      #   The human-readable name of the field (e.g., “Due Date”).
      #
      #   @return [String]
      required :name, String

      # @!attribute ref
      #   A unique, stable, machine-readable identifier for the field within its
      #   collection (e.g., `due_date`).
      #
      #   @return [String]
      required :ref, String

      # @!attribute type
      #   The data type of the field. This determines how values are stored, validated,
      #   and rendered.
      #
      #   @return [Symbol, Moonbase::Models::Field::Type]
      required :type, enum: -> { Moonbase::Field::Type }

      # @!attribute created_at
      #   Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute description
      #   An optional, longer-form description of the field's purpose.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute field_options
      #   If the field `type` is `field/choice`, this is the list of available
      #   `FieldOption` objects.
      #
      #   @return [Array<Moonbase::Models::Field::FieldOption>, nil]
      optional :field_options, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Field::FieldOption] }

      # @!attribute funnel
      #   If the field `type` is `field/stage`, this is the associated `Funnel` object.
      #
      #   @return [Moonbase::Models::Field::Funnel, nil]
      optional :funnel, -> { Moonbase::Field::Funnel }

      # @!attribute readonly
      #   If `true`, the value of this field is system-managed and cannot be updated via
      #   the API.
      #
      #   @return [Boolean, nil]
      optional :readonly, Moonbase::Internal::Type::Boolean

      # @!attribute required
      #   If `true`, this field must have a value.
      #
      #   @return [Boolean, nil]
      optional :required, Moonbase::Internal::Type::Boolean

      # @!attribute unique
      #   If `true`, values for this field must be unique across all items in the
      #   collection.
      #
      #   @return [Boolean, nil]
      optional :unique, Moonbase::Internal::Type::Boolean

      # @!attribute updated_at
      #   Time at which the object was last updated, as an RFC 3339 timestamp.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, cardinality:, links:, name:, ref:, type:, created_at: nil, description: nil, field_options: nil, funnel: nil, readonly: nil, required: nil, unique: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see {Moonbase::Models::Field}
      #   for more details.
      #
      #   A Field defines a single column in a Collection's schema. It specifies the data
      #   type, validation rules, and other properties for the values stored in that
      #   column.
      #
      #   @param id [String] Unique identifier for the object.
      #
      #   @param cardinality [Symbol, Moonbase::Models::Field::Cardinality] Specifies whether the field can hold a single value (`one`) or multiple values (
      #
      #   @param links [Moonbase::Models::Field::Links]
      #
      #   @param name [String] The human-readable name of the field (e.g., “Due Date”).
      #
      #   @param ref [String] A unique, stable, machine-readable identifier for the field within its collectio
      #
      #   @param type [Symbol, Moonbase::Models::Field::Type] The data type of the field. This determines how values are stored, validated, an
      #
      #   @param created_at [Time] Time at which the object was created, as an RFC 3339 timestamp.
      #
      #   @param description [String] An optional, longer-form description of the field's purpose.
      #
      #   @param field_options [Array<Moonbase::Models::Field::FieldOption>] If the field `type` is `field/choice`, this is the list of available `FieldOptio
      #
      #   @param funnel [Moonbase::Models::Field::Funnel] If the field `type` is `field/stage`, this is the associated `Funnel` object.
      #
      #   @param readonly [Boolean] If `true`, the value of this field is system-managed and cannot be updated via t
      #
      #   @param required [Boolean] If `true`, this field must have a value.
      #
      #   @param unique [Boolean] If `true`, values for this field must be unique across all items in the collecti
      #
      #   @param updated_at [Time] Time at which the object was last updated, as an RFC 3339 timestamp.

      # Specifies whether the field can hold a single value (`one`) or multiple values
      # (`many`).
      #
      # @see Moonbase::Models::Field#cardinality
      module Cardinality
        extend Moonbase::Internal::Type::Enum

        ONE = :one
        MANY = :many

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Moonbase::Models::Field#links
      class Links < Moonbase::Internal::Type::BaseModel
        # @!attribute collection
        #   The `Collection` this field belongs to.
        #
        #   @return [String]
        required :collection, String

        # @!attribute self_
        #   The canonical URL for this object.
        #
        #   @return [String]
        required :self_, String, api_name: :self

        # @!method initialize(collection:, self_:)
        #   @param collection [String] The `Collection` this field belongs to.
        #
        #   @param self_ [String] The canonical URL for this object.
      end

      # The data type of the field. This determines how values are stored, validated,
      # and rendered.
      #
      # @see Moonbase::Models::Field#type
      module Type
        extend Moonbase::Internal::Type::Enum

        FIELD_TEXT_SINGLE_LINE = :"field/text/single_line"
        FIELD_TEXT_MULTI_LINE = :"field/text/multi_line"
        FIELD_NUMBER_UNITLESS_INTEGER = :"field/number/unitless_integer"
        FIELD_NUMBER_UNITLESS_FLOAT = :"field/number/unitless_float"
        FIELD_NUMBER_MONETARY = :"field/number/monetary"
        FIELD_NUMBER_PERCENTAGE = :"field/number/percentage"
        FIELD_BOOLEAN = :"field/boolean"
        FIELD_EMAIL = :"field/email"
        FIELD_URI_URL = :"field/uri/url"
        FIELD_URI_DOMAIN = :"field/uri/domain"
        FIELD_URI_SOCIAL_X = :"field/uri/social_x"
        FIELD_URI_SOCIAL_LINKED_IN = :"field/uri/social_linked_in"
        FIELD_TELEPHONE_NUMBER = :"field/telephone_number"
        FIELD_GEO = :"field/geo"
        FIELD_DATE = :"field/date"
        FIELD_DATETIME = :"field/datetime"
        FIELD_CHOICE = :"field/choice"
        FIELD_STAGE = :"field/stage"
        FIELD_RELATION_ONE_WAY = :"field/relation/one_way"
        FIELD_RELATION_TWO_WAY = :"field/relation/two_way"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class FieldOption < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute label
        #   The human-readable text for the option.
        #
        #   @return [String]
        required :label, String

        # @!attribute type
        #   String representing the object’s type. Always `field_option` for this object.
        #
        #   @return [Symbol, :field_option]
        required :type, const: :field_option

        # @!method initialize(id:, label:, type: :field_option)
        #   Represents a selectable option within a `choice` field.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param label [String] The human-readable text for the option.
        #
        #   @param type [Symbol, :field_option] String representing the object’s type. Always `field_option` for this object.
      end

      # @see Moonbase::Models::Field#funnel
      class Funnel < Moonbase::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #   String representing the object’s type. Always `funnel` for this object.
        #
        #   @return [Symbol, :funnel]
        required :type, const: :funnel

        # @!attribute steps
        #   An ordered list of `FunnelStep` objects that make up the funnel.
        #
        #   @return [Array<Moonbase::Models::Field::Funnel::Step>, nil]
        optional :steps, -> { Moonbase::Internal::Type::ArrayOf[Moonbase::Field::Funnel::Step] }

        # @!method initialize(id:, steps: nil, type: :funnel)
        #   If the field `type` is `field/stage`, this is the associated `Funnel` object.
        #
        #   @param id [String] Unique identifier for the object.
        #
        #   @param steps [Array<Moonbase::Models::Field::Funnel::Step>] An ordered list of `FunnelStep` objects that make up the funnel.
        #
        #   @param type [Symbol, :funnel] String representing the object’s type. Always `funnel` for this object.

        class Step < Moonbase::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the object.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   The name of the step.
          #
          #   @return [String]
          required :name, String

          # @!attribute type
          #   The type of step, which can be `funnel_step/active`, `funnel_step/success`, or
          #   `funnel_step/failure`.
          #
          #   @return [Symbol, Moonbase::Models::Field::Funnel::Step::Type]
          required :type, enum: -> { Moonbase::Field::Funnel::Step::Type }

          # @!method initialize(id:, name:, type:)
          #   Some parameter documentations has been truncated, see
          #   {Moonbase::Models::Field::Funnel::Step} for more details.
          #
          #   Represents a single step within a `Funnel`.
          #
          #   @param id [String] Unique identifier for the object.
          #
          #   @param name [String] The name of the step.
          #
          #   @param type [Symbol, Moonbase::Models::Field::Funnel::Step::Type] The type of step, which can be `funnel_step/active`, `funnel_step/success`, or `

          # The type of step, which can be `funnel_step/active`, `funnel_step/success`, or
          # `funnel_step/failure`.
          #
          # @see Moonbase::Models::Field::Funnel::Step#type
          module Type
            extend Moonbase::Internal::Type::Enum

            FUNNEL_STEP_ACTIVE = :"funnel_step/active"
            FUNNEL_STEP_SUCCESS = :"funnel_step/success"
            FUNNEL_STEP_FAILURE = :"funnel_step/failure"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
