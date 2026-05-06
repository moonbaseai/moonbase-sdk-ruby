# typed: strong

module Moonbase
  module Models
    class CollectionUpdateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::CollectionUpdateParams, Moonbase::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # An optional, longer-form description of the collection's purpose.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The user-facing name of the collection.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          id: String,
          description: String,
          name: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # An optional, longer-form description of the collection's purpose.
        description: nil,
        # The user-facing name of the collection.
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            description: String,
            name: String,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
