# typed: strong

module Moonbase
  module Models
    class RelationValueParam < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::RelationValueParam, Moonbase::Internal::AnyHash)
        end

      # A reference to another Moonbase item.
      sig { returns(Moonbase::ItemPointerParam) }
      attr_reader :data

      sig { params(data: Moonbase::ItemPointerParam::OrHash).void }
      attr_writer :data

      sig { returns(Symbol) }
      attr_accessor :type

      # Related item reference
      sig do
        params(data: Moonbase::ItemPointerParam::OrHash, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # A reference to another Moonbase item.
        data:,
        type: :"value/relation"
      )
      end

      sig do
        override.returns({ data: Moonbase::ItemPointerParam, type: Symbol })
      end
      def to_hash
      end
    end
  end
end
