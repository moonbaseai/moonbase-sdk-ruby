# typed: strong

module Moonbase
  module Models
    class Funnel < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Funnel, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # An ordered list of `FunnelStep` objects that make up the funnel.
      sig { returns(T::Array[Moonbase::FunnelStep]) }
      attr_accessor :steps

      # String representing the object’s type. Always `funnel` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # A Funnel represents a series of steps used to track progression.
      sig do
        params(
          id: String,
          steps: T::Array[Moonbase::FunnelStep::OrHash],
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # An ordered list of `FunnelStep` objects that make up the funnel.
        steps:,
        # String representing the object’s type. Always `funnel` for this object.
        type: :funnel
      )
      end

      sig do
        override.returns(
          { id: String, steps: T::Array[Moonbase::FunnelStep], type: Symbol }
        )
      end
      def to_hash
      end
    end
  end
end
