# typed: strong

module Moonbase
  module Models
    class EmailMessageAddressParams < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Moonbase::EmailMessageAddressParams,
            Moonbase::Internal::AnyHash
          )
        end

      # The email address.
      sig { returns(String) }
      attr_accessor :email

      # The recipient's name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { params(email: String, name: String).returns(T.attached_class) }
      def self.new(
        # The email address.
        email:,
        # The recipient's name.
        name: nil
      )
      end

      sig { override.returns({ email: String, name: String }) }
      def to_hash
      end
    end
  end
end
