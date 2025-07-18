# typed: strong

module Moonbase
  module Models
    class DomainValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::DomainValue, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :domain

      sig { returns(Symbol) }
      attr_accessor :type

      # Internet domain name
      sig { params(domain: String, type: Symbol).returns(T.attached_class) }
      def self.new(domain:, type: :"value/uri/domain")
      end

      sig { override.returns({ domain: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
