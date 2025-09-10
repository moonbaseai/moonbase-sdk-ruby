# typed: strong

module Moonbase
  module Models
    class URLValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Moonbase::URLValue, Moonbase::Internal::AnyHash) }

      # A valid URL, conforming to RFC 3986, up to 8,192 characters long. It should
      # include the protocol, for example 'https://' or 'mailto:support@moonbase.ai'
      # etc.
      sig { returns(String) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # URL or web address
      sig { params(data: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # A valid URL, conforming to RFC 3986, up to 8,192 characters long. It should
        # include the protocol, for example 'https://' or 'mailto:support@moonbase.ai'
        # etc.
        data:,
        type: :"value/uri/url"
      )
      end

      sig { override.returns({ data: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
