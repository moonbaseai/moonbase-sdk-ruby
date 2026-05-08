# typed: strong

module Moonbase
  module Models
    class StageFieldUpdateParams < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::StageFieldUpdateParams, Moonbase::Internal::AnyHash)
        end

      # The field type. Must be `field/stage`.
      sig { returns(Symbol) }
      attr_accessor :type

      # Updated cardinality: `one` or `many`.
      sig do
        returns(
          T.nilable(Moonbase::StageFieldUpdateParams::Cardinality::OrSymbol)
        )
      end
      attr_reader :cardinality

      sig do
        params(
          cardinality: Moonbase::StageFieldUpdateParams::Cardinality::OrSymbol
        ).void
      end
      attr_writer :cardinality

      sig { returns(T.nilable(T::Array[Moonbase::FunnelStepValueParam])) }
      attr_accessor :default_values

      # An updated description, or `null` to clear it.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # A new funnel to use for this field, or omit to keep the current funnel.
      sig { returns(T.nilable(Moonbase::FunnelPointerParam)) }
      attr_reader :funnel

      sig { params(funnel: Moonbase::FunnelPointerParam::OrHash).void }
      attr_writer :funnel

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

      # Parameters for updating a stage field.
      sig do
        params(
          cardinality: Moonbase::StageFieldUpdateParams::Cardinality::OrSymbol,
          default_values:
            T.nilable(T::Array[Moonbase::FunnelStepValueParam::OrHash]),
          description: T.nilable(String),
          funnel: Moonbase::FunnelPointerParam::OrHash,
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
        # A new funnel to use for this field, or omit to keep the current funnel.
        funnel: nil,
        # The new name for the field.
        name: nil,
        # If `true`, items must have a value for this field.
        required: nil,
        # If `true`, values must be unique across all items.
        unique: nil,
        # The field type. Must be `field/stage`.
        type: :"field/stage"
      )
      end

      sig do
        override.returns(
          {
            type: Symbol,
            cardinality:
              Moonbase::StageFieldUpdateParams::Cardinality::OrSymbol,
            default_values: T.nilable(T::Array[Moonbase::FunnelStepValueParam]),
            description: T.nilable(String),
            funnel: Moonbase::FunnelPointerParam,
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
            T.all(Symbol, Moonbase::StageFieldUpdateParams::Cardinality)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE =
          T.let(
            :one,
            Moonbase::StageFieldUpdateParams::Cardinality::TaggedSymbol
          )
        MANY =
          T.let(
            :many,
            Moonbase::StageFieldUpdateParams::Cardinality::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::StageFieldUpdateParams::Cardinality::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
