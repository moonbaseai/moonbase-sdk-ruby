# typed: strong

module Moonbase
  module Models
    class Funnel < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::Funnel, Moonbase::Internal::AnyHash) }

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # Time at which the object was created, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The name of the funnel.
      sig { returns(String) }
      attr_accessor :name

      # An ordered list of `FunnelStep` objects that make up the funnel.
      sig { returns(T::Array[Moonbase::FunnelStep]) }
      attr_accessor :steps

      # String representing the object’s type. Always `funnel` for this object.
      sig { returns(Symbol) }
      attr_accessor :type

      # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # A Funnel represents a series of steps used to track progression.
      sig do
        params(
          id: String,
          created_at: Time,
          name: String,
          steps: T::Array[Moonbase::FunnelStep::OrHash],
          updated_at: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # Time at which the object was created, as an ISO 8601 timestamp in UTC.
        created_at:,
        # The name of the funnel.
        name:,
        # An ordered list of `FunnelStep` objects that make up the funnel.
        steps:,
        # Time at which the object was last updated, as an ISO 8601 timestamp in UTC.
        updated_at:,
        # String representing the object’s type. Always `funnel` for this object.
        type: :funnel
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            name: String,
            steps: T::Array[Moonbase::FunnelStep],
            type: Symbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
