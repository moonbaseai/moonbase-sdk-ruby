# typed: strong

module Moonbase
  module Models
    module Collections
      class ItemMergeParams < Moonbase::Internal::Type::BaseModel
        extend Moonbase::Internal::Type::RequestParameters::Converter
        include Moonbase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Moonbase::Collections::ItemMergeParams,
              Moonbase::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :collection_id

        # The destination item pointer. This will be the remaining merged item.
        sig { returns(Moonbase::ItemPointerParam) }
        attr_reader :destination

        sig { params(destination: Moonbase::ItemPointerParam::OrHash).void }
        attr_writer :destination

        # The source item pointer. This item will be deleted.
        sig { returns(Moonbase::ItemPointerParam) }
        attr_reader :source

        sig { params(source: Moonbase::ItemPointerParam::OrHash).void }
        attr_writer :source

        sig do
          params(
            collection_id: String,
            destination: Moonbase::ItemPointerParam::OrHash,
            source: Moonbase::ItemPointerParam::OrHash,
            request_options: Moonbase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          collection_id:,
          # The destination item pointer. This will be the remaining merged item.
          destination:,
          # The source item pointer. This item will be deleted.
          source:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              collection_id: String,
              destination: Moonbase::ItemPointerParam,
              source: Moonbase::ItemPointerParam,
              request_options: Moonbase::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
