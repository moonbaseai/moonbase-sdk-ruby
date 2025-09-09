# typed: strong

module Moonbase
  module Models
    class DomainValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::DomainValue, Moonbase::Internal::AnyHash)
        end

      # A valid internet domain name, without protocol (e.g., 'https://') or path.
      sig { returns(String) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Internet domain name
      sig { params(data: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # A valid internet domain name, without protocol (e.g., 'https://') or path.
        data:,
        type: :"value/uri/domain"
      )
      end

      sig { override.returns({ data: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
