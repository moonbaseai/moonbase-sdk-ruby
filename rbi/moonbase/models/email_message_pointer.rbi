# typed: strong

module Moonbase
  module Models
    class EmailMessagePointer < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::EmailMessagePointer, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Symbol) }
      attr_accessor :type

      sig { params(id: String, type: Symbol).returns(T.attached_class) }
      def self.new(id:, type: :email_message)
      end

      sig { override.returns({ id: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
