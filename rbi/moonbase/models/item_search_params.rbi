# typed: strong

module Moonbase
  module Models
    class ItemSearchParams < Moonbase::Internal::Type::BaseModel
      extend Moonbase::Internal::Type::RequestParameters::Converter
      include Moonbase::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Moonbase::ItemSearchParams, Moonbase::Internal::AnyHash)
        end

      # The search text to match against items.
      sig { returns(String) }
      attr_accessor :query

      # Filter results by one or more collection IDs or `ref` values.
      sig { returns(T.nilable(Moonbase::ItemSearchParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Moonbase::ItemSearchParams::Filter::OrHash).void }
      attr_writer :filter

      sig do
        params(
          query: String,
          filter: Moonbase::ItemSearchParams::Filter::OrHash,
          request_options: Moonbase::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The search text to match against items.
        query:,
        # Filter results by one or more collection IDs or `ref` values.
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            query: String,
            filter: Moonbase::ItemSearchParams::Filter,
            request_options: Moonbase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Moonbase::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Moonbase::ItemSearchParams::Filter,
              Moonbase::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Moonbase::ItemSearchParams::Filter::CollectionID))
        end
        attr_reader :collection_id

        sig do
          params(
            collection_id:
              Moonbase::ItemSearchParams::Filter::CollectionID::OrHash
          ).void
        end
        attr_writer :collection_id

        # Filter results by one or more collection IDs or `ref` values.
        sig do
          params(
            collection_id:
              Moonbase::ItemSearchParams::Filter::CollectionID::OrHash
          ).returns(T.attached_class)
        end
        def self.new(collection_id: nil)
        end

        sig do
          override.returns(
            { collection_id: Moonbase::ItemSearchParams::Filter::CollectionID }
          )
        end
        def to_hash
        end

        class CollectionID < Moonbase::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Moonbase::ItemSearchParams::Filter::CollectionID,
                Moonbase::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :in_

          sig { params(in_: T::Array[String]).void }
          attr_writer :in_

          sig { params(in_: T::Array[String]).returns(T.attached_class) }
          def self.new(in_: nil)
          end

          sig { override.returns({ in_: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end
