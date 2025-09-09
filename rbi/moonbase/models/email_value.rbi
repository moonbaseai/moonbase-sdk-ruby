# typed: strong

module Moonbase
  module Models
    class EmailValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::EmailValue, Moonbase::Internal::AnyHash)
        end

      # A valid email address.
      sig { returns(String) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Email address value
      sig { params(data: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # A valid email address.
        data:,
        type: :"value/email"
      )
      end

      sig { override.returns({ data: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
