# typed: strong

module Moonbase
  module Models
    # A field can be null, a single value, or an array of values
    module FieldValue
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
            Moonbase::ChoiceValue,
            Moonbase::FunnelStepValue,
            Moonbase::RelationValue,
            T::Array[Moonbase::Value::Variants]
          )
        end

      sig { override.returns(T::Array[Moonbase::FieldValue::Variants]) }
      def self.variants
      end

      ValueArray =
        T.let(
          Moonbase::Internal::Type::ArrayOf[union: Moonbase::Value],
          Moonbase::Internal::Type::Converter
        )
    end
  end
end
