# typed: strong

module Moonbase
  module Models
    # Related item reference
    module RelationFieldDefaultValueParam
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Moonbase::RelationValueParam, Moonbase::CurrentMember)
        end

      sig do
        override.returns(
          T::Array[Moonbase::RelationFieldDefaultValueParam::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
