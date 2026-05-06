# typed: strong

module Moonbase
  module Models
    class FunnelPointerParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::FunnelPointerParam, Moonbase::Internal::AnyHash)
        end

      # The ID of the funnel.
      sig { returns(String) }
      attr_accessor :id

      # String representing the object's type. Always `funnel` for this parameter.
      sig { returns(Symbol) }
      attr_accessor :type

      # A pointer to a Funnel, used as a parameter.
      sig { params(id: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # The ID of the funnel.
        id:,
        # String representing the object's type. Always `funnel` for this parameter.
        type: :funnel
      )
      end

      sig { override.returns({ id: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
