# typed: strong

module Moonbase
  module Models
    # A metric computed over the view's items.
    module ViewAggregate
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::ViewAggregateItemCount,
            Moonbase::ViewAggregateFieldStatistic
          )
        end

      sig { override.returns(T::Array[Moonbase::ViewAggregate::Variants]) }
      def self.variants
      end
    end
  end
end
