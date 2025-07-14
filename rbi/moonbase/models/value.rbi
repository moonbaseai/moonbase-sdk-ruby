# typed: strong

module Moonbase
  module Models
    # A typed value with discriminated union support
    module Value
      extend Moonbase::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Moonbase::SingleLineTextValue,
            Moonbase::MultiLineTextValue,
            Moonbase::IntegerValue,
            Moonbase::FloatValue,
            Moonbase::MonetaryValue,
            Moonbase::PercentageValue,
            Moonbase::BooleanValue,
            Moonbase::EmailValue,
            Moonbase::URLValue,
            Moonbase::DomainValue,
            Moonbase::SocialXValue,
            Moonbase::SocialLinkedInValue,
            Moonbase::TelephoneNumber,
            Moonbase::GeoValue,
            Moonbase::DateValue,
            Moonbase::DatetimeValue,
            Moonbase::Choice,
            Moonbase::FunnelStep,
            Moonbase::RelationValue
          )
        end

      sig { override.returns(T::Array[Moonbase::Value::Variants]) }
      def self.variants
      end
    end
  end
end
