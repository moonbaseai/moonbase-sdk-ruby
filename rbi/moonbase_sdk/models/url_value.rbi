# typed: strong

module MoonbaseSDK
  module Models
    class URLValue < MoonbaseSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MoonbaseSDK::URLValue, MoonbaseSDK::Internal::AnyHash)
        end

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :url

      # URL or web address
      sig { params(url: String, type: Symbol).returns(T.attached_class) }
      def self.new(url:, type: :"value/uri/url")
      end

      sig { override.returns({ type: Symbol, url: String }) }
      def to_hash
      end
    end
  end
end
