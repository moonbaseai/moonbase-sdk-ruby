# typed: strong

module Moonbase
  module Models
    class StageFieldCreateParams < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::StageFieldCreateParams, Moonbase::Internal::AnyHash)
        end

      # The funnel that defines the available stages for this field.
      sig { returns(Moonbase::FunnelPointerParam) }
      attr_reader :funnel

      sig { params(funnel: Moonbase::FunnelPointerParam::OrHash).void }
      attr_writer :funnel

      # The human-readable name for the field.
      sig { returns(String) }
      attr_accessor :name

      # The field type. Must be `field/stage`.
      sig { returns(Symbol) }
      attr_accessor :type

      # Whether the field holds a single value (`one`) or multiple values (`many`).
      # Defaults to `one`.
      sig do
        returns(
          T.nilable(Moonbase::StageFieldCreateParams::Cardinality::OrSymbol)
        )
      end
      attr_reader :cardinality

      sig do
        params(
          cardinality: Moonbase::StageFieldCreateParams::Cardinality::OrSymbol
        ).void
      end
      attr_writer :cardinality

      sig { returns(T.nilable(T::Array[Moonbase::FunnelStepValueParam])) }
      attr_reader :default_values

      sig do
        params(
          default_values: T::Array[Moonbase::FunnelStepValueParam::OrHash]
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

      # Parameters for creating a stage field.
      sig do
        params(
          funnel: Moonbase::FunnelPointerParam::OrHash,
          name: String,
          cardinality: Moonbase::StageFieldCreateParams::Cardinality::OrSymbol,
          default_values: T::Array[Moonbase::FunnelStepValueParam::OrHash],
          description: String,
          required: T::Boolean,
          unique: T::Boolean,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The funnel that defines the available stages for this field.
        funnel:,
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
        # The field type. Must be `field/stage`.
        type: :"field/stage"
      )
      end

      sig do
        override.returns(
          {
            funnel: Moonbase::FunnelPointerParam,
            name: String,
            type: Symbol,
            cardinality:
              Moonbase::StageFieldCreateParams::Cardinality::OrSymbol,
            default_values: T::Array[Moonbase::FunnelStepValueParam],
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
            T.all(Symbol, Moonbase::StageFieldCreateParams::Cardinality)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE =
          T.let(
            :one,
            Moonbase::StageFieldCreateParams::Cardinality::TaggedSymbol
          )
        MANY =
          T.let(
            :many,
            Moonbase::StageFieldCreateParams::Cardinality::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Moonbase::StageFieldCreateParams::Cardinality::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
