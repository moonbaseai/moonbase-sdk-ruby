# typed: strong

module Moonbase
  module Models
    class CallPointer < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::CallPointer, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Symbol) }
      attr_accessor :type

      sig { params(id: String, type: Symbol).returns(T.attached_class) }
      def self.new(id:, type: :call)
      end

      sig { override.returns({ id: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
