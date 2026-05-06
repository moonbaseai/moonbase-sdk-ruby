# typed: strong

module Moonbase
  module Models
    # Date and time value
    module DatetimeFieldDefaultValueParam
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Moonbase::DatetimeValue, Moonbase::CurrentDatetime)
        end

      sig do
        override.returns(
          T::Array[Moonbase::DatetimeFieldDefaultValueParam::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
