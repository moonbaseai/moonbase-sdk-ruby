# typed: strong

module Moonbase
  module Models
    class GeoValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::GeoValue, Moonbase::Internal::AnyHash) }

      # A string that represents some geographic location. The exact format may vary
      # based on context.
      sig { returns(String) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Geographic coordinate value
      sig { params(data: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # A string that represents some geographic location. The exact format may vary
        # based on context.
        data:,
        type: :"value/geo"
      )
      end

      sig { override.returns({ data: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
