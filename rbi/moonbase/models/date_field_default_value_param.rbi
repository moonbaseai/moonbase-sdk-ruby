# typed: strong

module Moonbase
  module Models
    # Date without time
    module DateFieldDefaultValueParam
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias { T.any(Moonbase::DateValue, Moonbase::CurrentDate) }

      sig do
        override.returns(
          T::Array[Moonbase::DateFieldDefaultValueParam::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
