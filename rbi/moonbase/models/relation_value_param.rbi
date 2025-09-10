# typed: strong

module Moonbase
  module Models
    class RelationValueParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::RelationValueParam, Moonbase::Internal::AnyHash)
        end

      # A reference to another Moonbase item.
      sig { returns(T.any(Moonbase::ItemPointer, Moonbase::Pointer)) }
      attr_accessor :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Related item reference
      sig do
        params(
          data: T.any(Moonbase::ItemPointer::OrHash, Moonbase::Pointer::OrHash),
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A reference to another Moonbase item.
        data:,
        type: :"value/relation"
      )
      end

      sig do
        override.returns(
          {
            data: T.any(Moonbase::ItemPointer, Moonbase::Pointer),
            type: Symbol
          }
        )
      end
      def to_hash
      end

      # A reference to another Moonbase item.
      module Data
        extend Moonbase::Internal::Type::Union

        Variants =
          T.type_alias { T.any(Moonbase::ItemPointer, Moonbase::Pointer) }

        sig do
          override.returns(
            T::Array[Moonbase::RelationValueParam::Data::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
