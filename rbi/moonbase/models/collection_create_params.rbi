# typed: strong

module Moonbase
  module Models
    class CollectionCreateParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::CollectionCreateParams, Moonbase::Internal::AnyHash)
        end

      # The user-facing name of the collection (e.g., "Leads"). A `ref` is automatically
      # derived from the name.
      sig { returns(String) }
      attr_accessor :name

      # An optional, longer-form description of the collection's purpose.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # An optional icon for the collection, as a Phosphor icon name in kebab-case (e.g.
      # `users`, `chart-bar`).
      sig { returns(T.nilable(String)) }
      attr_reader :icon_name

      sig { params(icon_name: String).void }
      attr_writer :icon_name

      sig do
        params(
          name: String,
          description: String,
          icon_name: String,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The user-facing name of the collection (e.g., "Leads"). A `ref` is automatically
        # derived from the name.
        name:,
        # An optional, longer-form description of the collection's purpose.
        description: nil,
        # An optional icon for the collection, as a Phosphor icon name in kebab-case (e.g.
        # `users`, `chart-bar`).
        icon_name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            description: String,
            icon_name: String,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
