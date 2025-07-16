# typed: strong

module MoonbaseSDK
  module Models
    class GeoValue < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::GeoValue, MoonbaseSDK::Internal::AnyHash)
        end

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
