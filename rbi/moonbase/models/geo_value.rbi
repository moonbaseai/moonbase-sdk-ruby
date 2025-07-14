# typed: strong

module Moonbase
  module Models
    class GeoValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::GeoValue, Moonbase::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :geo

      sig { returns(Symbol) }
      attr_accessor :type

      # Geographic coordinate value
      sig { params(geo: String, type: Symbol).returns(T.attached_class) }
      def self.new(geo:, type: :"value/geo")
      end

      sig { override.returns({ geo: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
