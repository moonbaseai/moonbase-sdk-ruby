# typed: strong

module MoonbaseSDK
  module Models
    # A field can be null, a single value, or an array of values
    module FieldValue
      extend MoonbaseSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            MoonbaseSDK::SingleLineTextValue,
            MoonbaseSDK::MultiLineTextValue,
            MoonbaseSDK::IntegerValue,
            MoonbaseSDK::FloatValue,
            MoonbaseSDK::MonetaryValue,
            MoonbaseSDK::PercentageValue,
            MoonbaseSDK::BooleanValue,
            MoonbaseSDK::EmailValue,
            MoonbaseSDK::URLValue,
            MoonbaseSDK::DomainValue,
            MoonbaseSDK::SocialXValue,
            MoonbaseSDK::SocialLinkedInValue,
            MoonbaseSDK::TelephoneNumber,
            MoonbaseSDK::GeoValue,
            MoonbaseSDK::DateValue,
            MoonbaseSDK::DatetimeValue,
            MoonbaseSDK::Choice,
            MoonbaseSDK::FunnelStep,
            MoonbaseSDK::RelationValue,
            T::Array[MoonbaseSDK::Value]
          )
        end

      sig { override.returns(T::Array[MoonbaseSDK::FieldValue::Variants]) }
      def self.variants
      end

      ValueArray =
        T.let(
          MoonbaseSDK::Internal::Type::ArrayOf[union: MoonbaseSDK::Value],
          MoonbaseSDK::Internal::Type::Converter
        )
    end
  end
end
