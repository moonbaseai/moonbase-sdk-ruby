# typed: strong

module Moonbase
  module Models
    class RelationValue < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::RelationValue, Moonbase::Internal::AnyHash)
        end

      # A reference to another Moonbase item.
      sig { returns(Moonbase::ItemPointer) }
      attr_reader :data

      sig { params(data: Moonbase::ItemPointer::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Related item reference
      sig do
        params(data: Moonbase::ItemPointer::OrHash, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # A reference to another Moonbase item.
        data:,
        type: :"value/relation"
      )
      end

      sig { override.returns({ data: Moonbase::ItemPointer, type: Symbol }) }
      def to_hash
      end
    end
  end
end
