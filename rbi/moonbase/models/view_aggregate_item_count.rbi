# typed: strong

module Moonbase
  module Models
    class ViewAggregateItemCount < Moonbase::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Moonbase::ViewAggregateItemCount, Moonbase::Internal::AnyHash)
        end

      sig { returns(Symbol) }
      attr_accessor :type

      # An optional field whose values bucket the counts.
      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      # Counts the view's items.
      sig { params(group: String, type: Symbol).returns(T.attached_class) }
      def self.new(
        # An optional field whose values bucket the counts.
        group: nil,
        type: :item_count
      )
      end

      sig { override.returns({ type: Symbol, group: String }) }
      def to_hash
      end
    end
  end
end
